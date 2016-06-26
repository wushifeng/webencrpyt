<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/_response.jsp" %>
<%response.setStatus(405);%>


	<title>405 -不支持的操作</title>
</head>

<body>
	<h2>405 -不支持的操作.</h2>
	<p><a href="${ctx }/all/index">返回首页</a></p>
</body>
</html>