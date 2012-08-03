<%-- 
    Document   : ajaxcustom
    Created on : Aug 2, 2012, 12:46:05 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:iterator value="sresult1">

    <div class="leftnw1">

        <img src="images/left-content-top.png" width="400" height="32" />	
        <div class="t10"> <s:property value="BAdverHeading"/> </div>
        <s:url id="url" action="fulldetails">
            <s:param name="referenceId" value="referenceId"/>
        </s:url>
        <s:a href="%{url}"><img src="imageretrieve1.action?referenceId=<s:property value="%{referenceNo}" />" width="150" height="120" style="margin-top:10px;"/></s:a>
        <div class="t12"  style="float:right;margin:0;margin-top:5px;"> Ref Id:<s:property value="referenceId"/> </div>
        <div class="t13"> <s:property value="BBusinessDesc"/>  </div>
        <div class="t14" style="float:right;margin:-15px 0 0 230px;"> Price:&pound;<s:property value="BSalePrice"/></div>
        <s:url id="url" action="fulldetails">
            <s:param name="referenceId" value="referenceId"/>
        </s:url>

        <s:a href="%{url}"><div class="view_more" style="float:left;margin:20px 0 0 30px;">
                <div class="t15"> 
                    View More Info
                </div>
            </div> </s:a>

        <s:url id="url" action="addtolist">
            <s:param name="referenceId" value="referenceId"/>
        </s:url> <s:a href="%{url}">
            <div class="add_list" style="float:right;margin:20px 10px 0 0;">
                <div class="t15"> 
                    Add to List
                </div>
            </div>  </s:a>

            <div class="t16" style="float:left;margin:-20px 0 0 165px;"> 
            <s:url id="url" action="similarsearch">
                <s:param name="Category" value="BCategory"/>
            </s:url>
            <s:a href="%{url}">View More Results</s:a> 
        </div> 
    </div>
</s:iterator>
