$(document).ready(function() {
	var id = window.location.href;
	s = id.split("?");
	var t = s[1];
	t = t.split("=");
	id = t[1];
	showLost(id);
})

function showLost(id) {
	$.ajax({
		"url": "/Lost/lost_details",
		"data": "id=" + id,
		"type": "GET",
		"dataType": "json",
		"success": function(json) {
			$("#content").empty();
			if(json.state == 200) {
				var html = '<div class="left">'
							+ '<img onload="window.checkimg(this)" src="#{image}" +="">'
							+ '</div>'
							+ '<div class="right">'
							+ '<h5 class="name">失物名称:</h5>'
							+ '<p class="name">#{name}</p>'
							+ '<h5 class="ms">失物描述:</h5>'
							+ '<p class="ms">#{description}</p>'
							+ '<h5>拾取人:</h5>'
							+ '<p>#{people}</p>'
							+ '<h5>拾取时间:</h5>'
							+ '<p>#{date}</p>'
							+ '<h5>拾取地点:</h5>'
							+ '<p>#{place}</p>'
							+ '<h5>联系方式:</h5>'
							+ '<p>#{phone}</p>'
							+ '</div>';
				html = html.replace(/#{image}/g, json.data.imag);
				html = html.replace(/#{name}/g, json.data.tit);
				html = html.replace(/#{description}/g, json.data.description);
				html = html.replace(/#{people}/g, json.data.people);
				html = html.replace(/#{date}/g, json.data.pickdate);
				html = html.replace(/#{place}/g, json.data.place);
				html = html.replace(/#{phone}/g, json.data.phone);
				$("#content").append(html);
			} else {
				alert(json.message);
			}
		}
	});
}