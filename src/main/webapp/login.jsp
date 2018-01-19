<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 18/09/17
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="./includes/header.jsp">
    <jsp:param name="pageTitle" value="Login"/>
</jsp:include>
<jsp:include page="./includes/body.jsp" flush="true">
    <jsp:param name="bodytype" value="login"/>
</jsp:include>
<%@ include file="/includes/footer.jsp"%>
