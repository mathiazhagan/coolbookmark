<%-- 
    Document   : searchresult
    Created on : Jun 27, 2012, 6:41:50 PM
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

        <s:if test="sresult.size() > 0">
            <s:iterator value="sresult">
                <img src="MyFolder/<s:property value='referenceId'/>/<s:property value='referenceId'/>.jpg" height="90" width="95" align="left" style="margin: 0 5px"/>  
                Ref NO:<s:property value="referenceNo"/></br>
                Title  :<s:property value="BAdverHeading"/></br>
                Price :$<s:property value="BSalePrice"/></br>
                Ref Id :<s:property value="referenceId"/></br>
                Description:<s:property value="BBusinessDesc"/></br> 
           
            <s:url id="url" action="fulldetails">
                <s:param name="referenceId" value="referenceId"/>
            </s:url>
            <s:a href="%{url}">View More Info</s:a>&nbsp;&nbsp;&nbsp;&nbsp;
            <s:url id="url" action="similarsearch">
                <s:param name="Category" value="BCategory"/>
            </s:url>
            <s:a href="%{url}">View more similar results</s:a>&nbsp;&nbsp;&nbsp;&nbsp;
            <p>----------------------------------------------</p>
            </s:iterator>
        </s:if>
            
    </body>
</html>
