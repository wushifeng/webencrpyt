<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/_response.jsp" %>
<%response.setStatus(401);%>

	<title>401 - 用户权限错误</title>
</head>

<body>
	<h2>401 - 当前登录的用户执行了未被授权的操作.</h2>
	<p><a href="${ctx }/all/index">返回首页</a></p>
</body>
</html>
