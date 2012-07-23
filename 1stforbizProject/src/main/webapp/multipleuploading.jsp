<%-- 
    Document   : multipleuploading
    Created on : Jul 10, 2012, 5:10:55 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<s:head />
</head>
 
<body>
<h1>Struts 2 upload multiple files example</h1>
 
<s:form action="resultAction" namespace="/" method="POST" enctype="multipart/form-data">
 
<s:file label="File 1" name="fileUpload" size="40" />
<s:file label="File 2" name="fileUpload" size="40" />
<s:file label="FIle 2" name="fileUpload" size="40" />
 
<s:submit value="submit" name="submit" />
 
</s:form>
 
</body>
</html>