<%-- 
    Document   : success
    Created on : Jun 28, 2012, 4:33:12 PM
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
        <h1>---------Success-------!</h1>
        you are successfully posted your property details for immediate sell.</br> Your Reference Id is <font color="red"> <s:iterator value="list1"> <s:property value="referenceId"/></s:iterator></font></br>
            You can can contact us or you can check your details in our web site "www.1stforbiz.com" using this reference id in future.</br>

            &nbsp;&nbsp;&nbsp;&nbsp;You can Upload images Below.......
    <h><b><font color="red" >Make sure the image name and file name should be same before uploading your photo,If not your photo will not be uploaded</font></b></h>
        <s:actionerror />
        <s:form action="userImage1" method="post" enctype="multipart/form-data">
           <s:iterator value="list1">
                <s:textfield name="imagename" label="Enter file name" value="%{referenceId}"/>
           </s:iterator>
           
            <s:file name="userImage" label="UserImage" />
            
            <s:submit value="Upload" align="center" />

        </s:form>
    </body>
</html>
