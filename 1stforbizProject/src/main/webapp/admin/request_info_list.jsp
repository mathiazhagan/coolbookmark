<%-- 
    Document   : index
    Created on : Jun 13, 2012, 4:02:43 PM
    Author     : ayyanar
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
    <head>
       <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="stylesheet" type="text/css" href="table.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />
        <title>Admin</title>
        <!-- for pagination script start-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#table1').easyPaginate({
                    //step value define for number of results shown on every page here 5 set for 5 items on each page
                    step:8
                });
	
            });    
    
        </script>
        <!-- for pagination script end-->
        <s:head/>


    </head>
    <body>



        <%
            Object obj = session.getAttribute("user");


            if (obj == null) {
                response.sendRedirect(request.getContextPath() + "/admin/sessionError.action");
            }

        %>

       <!--container start -->
        <div id="container">

            <div class="header">

                <div class="logo">
                    <img src="images/logo.gif" width="195" height="81" />	

                    <!--navigation start -->
                    <div class="navigation">
                <ul>

                    <li><a href="adminpage.jsp">Home</a></li>
                    <li><a href="logout.action">Logout</a></li> 
                </ul>

            </div>
                    
                </div>
            </div>
            <!--navigation end -->


            <div class="content100">
              
                <div class="t1" align="center" >Business Sell Request List View </div> <br/>


                <div id="containerbox">
                    <div class="tableheader" >
                        <span class="Compaign">First Name</span>
                        <span class="Budget2">Sur Name</span>
                        <span class="Impression8">Telephone</span>
                        <span class="Created">Email</span>
                        <span class="changea">Town</span>
                        <span class="changea">County</span>
                        <span class="Cost">Delete</span>
                        <span class="response">Send Mail</span>
                        <span class="Clicks">Reference Ids</span>
                    </div>

                    <div class="clear"></div>

                    <div id="table1">
                        <s:iterator value="list">
                            <div class="tabletext">
                                <span class="name"><s:property value="fname"/></span>
                                <span class="Budget2"><s:property value="sname"/></span>
                               
                                <span class="Impression8"><s:property value="telephone"/></span>
                                <span class="Created"><s:property value="email"/></span>
                                <span class="changea"><s:property value="town"/></span>
                                <span class="changea"><s:property value="country"/></span>
                                <s:url id="url" action="admin/delete1sellrequest">
                                    <s:param name="RId" value="RId"/>
                                </s:url>
                                <span class="Cost"> <s:a href="%{url}"><img src="images/trash.png" alt="Delete"  /></s:a></span>
                                <span class="response"><a href="mailto:<s:property value="email"/>"><img src="images/mailicon.png" alt="Mail" height="20" width="20" /></a></span>
                                <span class="Clicks"><s:property value="referenceId"/></span>
                            </div>

                        </s:iterator>
                    </div>

                    <div class="tabletext1"></div>

                    <!-- footer start -->
                <div id="footer" style="width:1250px; margin-left:auto;margin-right:auto;">			
                    <div class="bottom_link">

                    </div>

                    <div class="rights" style="margin:20px 0 0 450px;">copyright &copy; 2008 Pegasus Business Sales All rights reserved</div>
                </div>		
                <!-- footer end -->

                    <div class="clear"></div>
                </div>

            </div>
        </div>
    </body>
</html>