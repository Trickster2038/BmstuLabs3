function show_result(data){
	var result = document.getElementById("result");
	if(data.type == "Array"){
		s = "<table><tr><td>sequence</td><td>size</td></tr>"

		let max = [];
		data.value.forEach(function(item, i, arr) {
			if(item.length > max.length){
				max = item
			}
			s+= "<tr><td>" + item + "</td><td>" + item.length + "</td></tr>" ;
		});

		s += "<tr><td>longest part</td><td>size</td></tr>"
		s += "<tr><td>" + max + "</td><td>" + max.length + "</td></tr>"
	} else {
		s = data.value
	}

	result.innerHTML = "<hr/>(myScript) Result is: " + s +
	"<p>"+"</p>";
}
// лекция по 6 rails
$(document).ready(function(){
	alert("Hi!")
 $("#input_form").bind("ajax:success",
 function(xhr, data, status) {
 // data is already an object
 show_result(data)
 })
}) 

// calc_url= location.protocol + "//" + location.host +
// "/calc/view.json"
// function send_query(){
// 	var frm = document.forms.calc_form;
// 	var param_str = "";
// 	var radios = frm.op;
// 	for (var i = 0; i < radios.length; i++) {
// 		if (radios[i].checked) {
// 			param_str = "?" +
// 			"v1=" + frm.v1.value +
// 			"&v2=" + frm.v2.value +
// 			"&op=" +
// 			encodeURIComponent(frm.op[i].value)
// 			break;
// 		}
// 	}
// 	if (param_str == "") return false;
// 	var my_JSON_object = {};
// 	var http_request = new XMLHttpRequest();
// 	http_request.open("GET", calc_url+param_str, true);
// 	http_request.onreadystatechange = function () {
// 		var done = 4, ok = 200;
// 		if (http_request.readyState == done &&
// 			http_request.status == ok) {
// 			my_JSON_object =
// 		JSON.parse(http_request.responseText);
// 		show_result(my_JSON_object);
// 	}
// };
// http_request.send(null);
// return false;
// }
// function show_result(data){
// 	var result = document.getElementById("result");
// 	result.innerHTML = "<hr/>Result is: " + data.value +
// 	"<hr/><p>"+Date()+"</p>";
// } 