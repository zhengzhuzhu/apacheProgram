<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<div class="timu">
			<h3 class="title"></h3>
			<div class="options">
				
			</div>
		</div>
		<script type="text/javascript">
			var h3 = document.querySelector(".title");
			var options = document.querySelector(".options");
			var currentTimu;
			var isClick = false;
			var answerList;
			var count = 10
			var score = 0;
			var num=0;
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
			
			function abc(xhr){
				console.log(xhr)
				answerList = JSON.parse(xhr.response)
				console.log(answerList)
				
				//随机出一道题
				//Math.random() 生成1个[0，1）随机数
				var randomNum = parseInt(Math.random()*answerList.length); 
				currentTimu = answerList[randomNum]
				console.log(currentTimu);
				renderTimu(currentTimu)
			}
			
			
			function renderTimu(currentTimu){
				
				if(count==0){
					alert("恭喜你获取了："+score+"分");
					return;
				}
				count --;
				num +=1;
				h3.innerHTML =num+"."+currentTimu.quiz;
				options.innerHTML = "";
				for(var i=0;i<currentTimu.options.length;i++){
					var div =  document.createElement("div");
					div.className = "item"+(i+1);
					div.dataset.index = i+1;
					div.innerHTML = (i+1)+"."+ currentTimu.options[i];
					options.appendChild(div)
				}
				
			}
			
			options.onclick = function(e){
				//console.log(e)
				if(isClick||e.target.className=="options"){
					return;
				}else{
					var index = e.target.dataset.index;
					console.log(index)
					if(currentTimu.answer==index){
						e.target.style.background = "yellowgreen"
						score+=10;
					}else{
						e.target.style.background = "red"
						var div = document.querySelector('.options .item'+currentTimu.answer)
						//console.log(div)
						div.style.background = "yellowgreen"
					}
					
					isClick = true;
					
					
					setTimeout(function(){
						var randomNum = parseInt(Math.random()*answerList.length); 
						currentTimu = answerList[randomNum]
						console.log(currentTimu);
						renderTimu(currentTimu)
						isClick = false;
					},2000)
				}
				
			}
			
			
			ajax('dati.json',abc)
		</script>
	</body>
</html>
