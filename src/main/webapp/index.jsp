<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 14/09/17
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/includes/header.jsp">
    <jsp:param name="pageTitle" value="Homepage"/>
</jsp:include>
<jsp:include page="./includes/body.jsp" flush="true">
    <jsp:param name="bodytype" value="index"/>
</jsp:include>
<%@ include file="/includes/footer.jsp"%>


