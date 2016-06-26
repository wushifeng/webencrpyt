<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/_response.jsp" %>
<%response.setStatus(404);%>


	<title>404 - 页面不存在</title>
</head>

<body>
	<h2>404 - 页面不存在.</h2>
	<p><a href="${ctx }/all/index">返回首页</a></p>
</body>
</html>