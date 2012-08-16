<%-- 
    Document   : ajaxcall
    Created on : Jun 30, 2012, 5:05:28 PM
    Author     : D.Mathiazhagan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
    <%-- Pagination script  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#tid').easyPaginate({
                    step:4
                });
	
            });    
    
        </script>
        <style type="text/css">
            ol#pagination{overflow:hidden;}
            ol#pagination li{
                float:left;
                list-style:none;
                cursor:pointer;
                margin:0 0 0 .5em;
                font: 1em Helvetica, Arial, Sans-Serif;
                line-height: 1.5em;
                color: #333;
            }
            ol#pagination li.current{color:#f00;font-weight:bold;}
        </style>--%>
    </head>
    <body>

        <div id="tid">
            <s:iterator value="sresult1" begin="0" end="3" >
                <div class="tabletext">


                    <div class="left2">

                        <img src="images/left-content-top.png" width="540" height="32" />	
                        <div class="t10"> <s:property value="BAdverHeading"/> </div>
                        <div class="t11">  </div>
                        <s:url id="url" action="fulldetails">
                            <s:param name="referenceId" value="referenceId"/>
                        </s:url>
                        <s:a href="%{url}"><img src="imageretrieve1.action?referenceId=<s:property value="%{referenceNo}" />" style="margin:10px 0 0 0;"  width="141" height="122" alt="NoImage"/></s:a>
                        <div class="t12"> Ref Id:<s:property value="referenceId"/> </div>
                        <div class="t13"> <s:property value="BBusinessDesc"/>  </div>
                        <div class="t14"> Price:&pound;<s:property value="BSalePrice"/></div>
                        <s:url id="url" action="fulldetails">
                            <s:param name="referenceId" value="referenceId"/>
                        </s:url>
                        <s:a href="%{url}">
                            <div class="view_more">
                                <div class="t15"> 

                                    View More Info
                                </div>
                            </div>
                        </s:a>
                        <s:url id="url" action="addtolist">
                            <s:param name="referenceId" value="referenceId"/>
                        </s:url> <s:a href="%{url}">
                            <div class="add_list">
                                <div class="t15"> 

                                    Add to List

                                </div>
                            </div>
                        </s:a>
                        <div class="t16"> 
                            <s:url id="url" action="similarsearch">
                                <s:param name="Category" value="BCategory"/>
                            </s:url>
                            <s:a href="%{url}">View more similar results</s:a>
                            </div> <br></br>


                         

                        </div>
                    </div>
            </s:iterator>
        </div>
    </body>
</html>