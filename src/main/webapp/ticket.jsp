<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 26/01/2018
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/includes/header.jsp">
    <jsp:param name="pageTitle" value="Ticket"/>
</jsp:include>
<jsp:include page="./includes/body.jsp" flush="true">
    <jsp:param name="bodytype" value="ticket"/>
</jsp:include>
<%@ include file="/includes/footer.jsp"%>
