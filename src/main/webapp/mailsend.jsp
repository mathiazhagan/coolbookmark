<%-- 
    Document   : mailsend
    Created on : Aug 8, 2012, 5:00:23 PM
    Author     : Mathiazhagan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Mail Attachment Demo</title>
    </head>
    <body>
        <s:form action="mailattachment" enctype="multipart/form-data">
            <s:textfield name="fromemail" label="Email id "/>
            <s:hidden name="toemail" label="Send to this email " value="mathi@edubiz.org"/>
            <s:textfield name="subject" label="Subject"/>
            <s:textfield name="content" label="Content"/>
            <s:file name="file" label="file"/>
            <s:submit name="Upload" />
        </s:form>
    </body>
</html>
