var newsList;



function initSwiper(){
			var mySwiper = new Swiper ('.swiper-container', {
		    
		    loop: true, // 循环模式选项
		    
		    // 如果需要分页器
		    pagination: {
		      el: '.swiper-pagination',
		    },
		    
		    // 如果需要前进后退按钮
		    navigation: {
		      nextEl: '.swiper-button-next',
		      prevEl: '.swiper-button-prev',
		    },
		    
		    // 如果需要滚动条
		    scrollbar: {
		      el: '.swiper-scrollbar',
		    },
		  })        
		}
function ajax(url,fn){
				//实例化ajax对象
				var xhr = new XMLHttpRequest();
				//设置发送的服务器网址，什么方式发送
				xhr.open("GET",url);
				//发送
				xhr.send();
				//事件监听xhr的变化
				xhr.onreadystatechange = function(){
					//console.log(xhr.status) 
					//console.log(xhr.readyState)
					if(xhr.status==200&&xhr.readyState==4){
						fn(xhr);
					}
				}
			}
			
			//跨域保护，不允许ip地址和端口不一样的请求
			//浏览器的安全机制
			var httpUrl = 'http://localhost:8060/todaynews/mobilejson';
			var swiperdiv = document.querySelector(".swiper-wrapper");
			ajax(httpUrl,function(xhr){
				//console.log(xhr)
				newsList = JSON.parse(xhr.responseText)
				console.log(newsList)
				newsList.forEach(function(item,index){
					var div = document.createElement("div")
					div.className = "swiper-slide";
					div.style.backgroundImage = "url("+  item.titleimg +")";
					div.style.backgroundSize = "100% 100%";
					swiperdiv.appendChild(div);
					
//					var newsItem = document.createElement("div");
//					newsItem.className =　"newsList";
//					newsItem.innerHTML = `
//						<a class="newsItem">
//							<div class="left">
//								<img src="${item.titleimg}"/>
//							</div>
//							<div class="right">
//								<h3>${item.title}</h3>
//								<p>${item.author} 发布时间:${item.pubtime}</p>
//							</div>
//						</a>
//					
//					`
//					document.querySelector(".newsList").appendChild(newsItem);
					$(".newsList").append(
						`
						<div data-href="${index}" class="newsItem">
							<div class="left" data-href="${index}">
								<img src="${item.titleimg}" data-href="${index}"/>
							</div>
							<div class="right" data-href="${index}">
								<h3 data-href="${index}">${item.title}</h3>
								<p data-href="${index}">${item.author} 发布时间:${item.pubtime}</p>
							</div>
						</div>
					
					`
					)
					
					
					

					
				})
				initSwiper();
				
				
})
			


$('.newsList').click(function(e){
	$('.news').removeClass("swiperRight");
	console.log(e)
	var newsIndex = e.target.dataset.href
	console.log(newsIndex)
	
	console.log(newsList[newsIndex])
	$(".news").addClass("swiperLeft")
	$(".news .title").html(newsList[newsIndex].title);
	$(".news .author").html(newsList[newsIndex].author);
	$(".news .content").html(newsList[newsIndex].content);
	$(".news .titleimg img").attr("src",newsList[newsIndex].titleimg)
	
})


$('.backBtn').click(function(){
	$(".news").removeClass("swiperLeft");
	$('.news').addClass("swiperRight");
})


$('.more').click(function(){
	$('.more').hide()
	$('.content').css('height',"auto")
})
