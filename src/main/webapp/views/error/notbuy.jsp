<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/_response.jsp" %>
<%response.setStatus(401);%>
	<title>该模块未授权</title>
</head>

<body>
	<h2>该模块未授权，无法使用该模块的功能。</h2>
	<p><a href="${ctx }/all/index">返回首页</a></p>
</body>
</html>