var data = [
    { "Num": "1", "Name": "홍길동", "Title": "안녕" },
    { "Num": "2", "Name": "백두산", "Title": "방가" },
    { "Num": "3", "Name": "임꺽정", "Title": "또봐" }
];

var out='';

out += "<table border='1'>"
out +="<tr><th>번호</th><th>이름</th><th>제목</th></tr>"
$.each(data, function() {
	out +="<tr>";
    out +="<td>" +this['Num'] +"</td>";
    out +="<td>" +this['Name'] +"</td>";
    out +="<td>" +this['Title'] +"</td>";
    out +="</tr>"
});

out += "</table>";

$("#resultLayout").html(out);