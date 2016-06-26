<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
response.setHeader("X-XSS-Protection", "1;mode=block");
response.setHeader("X-Content-Type-Options", "SAMEORGIN");
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate,private");
response.setHeader("Pragma", "no-cache");
response.setHeader("X-Content-Type-Options", "nosniff");
response.setHeader("X-Frame-Options", "DENY");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edege, chrome=1" />

<script type="text/javascript">
var baseUrl = '${ctx}/'; 
</script>
