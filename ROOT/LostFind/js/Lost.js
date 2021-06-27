$(document).ready(function() {
	$.ajax({
		"url": "/Lost/index",
		"type": "POST",
		"dateType": "json",
		"success": function(json) {			
			$("#lists").empty();
			if(json.state == 200) {/* 查询数据库成功后替换 失物框*/
				var list = json.data;
				for(var i = 0; i < list.length; i++) {
					var html = '<div class="list">'
							+ '<a href="LostDetails.html?id=#{id}">'
							+ '<div class="imag">'
							+ '<img onload="window.checkimg(this)" src="#{image}" +="">'
							+ '</div>'
							+ '<div class="others">'
							+ '<h3 class="tit">#{name}</h3>'
							+ '<P class="description">#{description}</P>'
							+ '<EM class="date">#{date}</EM>'
							+ '</div>'
							+ '</a>'
							+ '</div>';
					html = html.replace(/#{id}/g, list[i].id);/* 失物id */
					html = html.replace(/#{image}/g, list[i].imag);/* 失物图片 */
					html = html.replace(/#{name}/g, list[i].tit);/* 失物名称 */
					html = html.replace(/#{description}/g, list[i].description);/* 失物描述 */
					html = html.replace(/#{date}/g, list[i].pickdate);/* 拾取时间 */
					$("#lists").append(html);
				}
			} else {
				alert(json.message);
			}
		}
	});
})