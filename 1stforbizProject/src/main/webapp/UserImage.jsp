<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Upload User Image</title>
</head>
 
<body>
<h2>Struts2 File Upload & Save Example</h2>
<s:actionerror />
<s:form action="userImage" method="post" enctype="multipart/form-data">
    <s:textfield name="imagename" label="Enter file name"/>
    <s:file name="userImage" label="User Image" />
    <s:file name="userImage" label="User Image1" />
    <s:file name="userImage" label="User Image2" />
    <s:file name="userImage" label="User Image3" />
    <s:submit value="Upload" align="center" />
</s:form>
</body>
</html>