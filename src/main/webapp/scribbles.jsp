<%-- 
    Document   : scribbles
    Created on : Apr 3, 2012, 6:52:48 PM
    Author     : Administrator
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
    Object obj = session.getAttribute("User");
    if (obj == null) {
        response.sendRedirect(request.getContextPath() + "/sessionError.action");
    }
%>


<div>
    Ajax Testing Success
    <s:iterator  value="scrlist">
        <div class="tabletext"  >
            <span class="Compaign"><s:property value="user.userName" /></span>
            <span class="Compaign"><s:property value="scribbleDesc" /></span>

            <span class="Compaign"><s:property value="scribbleTime" /></span>

            <s:url action="deletefeed.action" var="deletefeed">
                <s:param name="feedid" value="%{scribbleId}" />
            </s:url>
            <span class="Budget"><s:a href="%{deletefeed}" cssClass="ask"><img src="images/trash.png"/></s:a></span>
        </div>
    </s:iterator>
</div>
