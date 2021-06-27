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
				var newsList = JSON.parse(xhr.responseText)
				console.log(newsList)
				newsList.forEach(function(item,index){
					var div = document.createElement("div")
					div.className = "swiper-slide";
					div.style.backgroundImage = "url("+  item.titleimg +")";
					div.style.backgroundSize = "100% auto";
					swiperdiv.appendChild(div);
				})
				initSwiper();	
			})