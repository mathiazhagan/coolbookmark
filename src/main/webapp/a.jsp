<%-- 
    Document   : a
    Created on : Apr 4, 2012, 1:24:22 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <s:url id="ajax2" value="/scribleAjax.action"/>
            <sj:div href="%{ajax2}"/>

        </div>
    </body>
</html>
