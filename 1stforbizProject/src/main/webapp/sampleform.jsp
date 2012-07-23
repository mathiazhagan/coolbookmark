<%-- 
    Document   : sampleform
    Created on : Jun 30, 2012, 2:27:16 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <s:head/>
      <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="sampleform">
            <s:textfield name="username" label="Enter username"/>
            <s:textfield name="nickname" label="Enter your nickname"/>
            <s:textfield name="place" label="Enter your place name"/>
            <s:textfield name="post" label="Enter your job name"/>
            <s:submit />
        </s:form>        

    </body>
</html>
