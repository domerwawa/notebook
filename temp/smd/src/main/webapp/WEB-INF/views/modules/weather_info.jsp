<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>天气信息</title>
<script src="${pageContext.request.contextPath}/js/d3/v4/d3.js"/>
</head>
<body>
	<table border="1">
		<tr>
			<th>城市</th>
			<th>日期</th>
			<th>最高温度</th>
			<th>最低温度</th>
		</tr>
		<c:forEach items="${weatherInfos}" var="weatherInfo" >
			<tr>
				<td>${weatherInfo.city}</td>
				<td>${weatherInfo.date}</td>
				<td>${weatherInfo.highTemp}</td>
				<td>${weatherInfo.lowTemp}</td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
	
	</script>
</body>

</html>