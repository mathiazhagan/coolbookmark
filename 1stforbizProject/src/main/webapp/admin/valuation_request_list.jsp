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
        <link rel="stylesheet" type="text/css" href="style/style.css" />
        <link rel="stylesheet" type="text/css" href="style/table.css" />

        <title>Admin</title>
        <!-- for pagination script start-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#table1').easyPaginate({
                    //step value define for number of results shown on every page here 5 set for 5 items on each page
                    step:10
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

            <!--header start -->
            <div class="header">
                <img src="images/header-bg.png" />	
            </div>
            <!--header end -->	

            <!--navigation start -->
            <div class="navigation">

                <ul>

                    <li><a href="adminpage.jsp">Home</a></li>
                    <li><a href="logout.action">Logout</a></li> 
                </ul>




            </div>
            <!--navigation end -->

            <div class="green">
                <img src="images/green-line.png"/>	
            </div>



            <div class="content1">

                <div class="t1" align="center" >Valuation Request List View </div> <br/>


                <div id="containerbox">
                    <div class="tableheader" >
                        <span class="Compaign">First Name</span>
                        <span class="Budget_1">Sur Name</span>
                        <span class="CPC">Company</span>
                        <span class="Impressions">Telephone</span>
                        <span class="CTR_1">Email</span>
                        <span class="change">Sector</span>
                        <span class="Created">Description</span>
                        <span class="Cost">Delete</span>
                        <span class="response">Send Mail</span>
                        <span class="Clicks">Posting Time</span>
                    </div>

                    <div class="clear"></div>

                    <div id="table1">
                        <s:iterator value="list">
                            <div class="tabletext">
                                <span class="name"><s:property value="CFirstName"/></span>
                                <span class="Budget_1"><s:property value="CSurname"/></span>
                                <span class="CPC"><s:property value="CCompName"/></span>
                                <span class="Impressions"><s:property value="CPhone"/></span>
                                <span class="CTR_1"><s:property value="CEmail"/></span>
                                <span class="change"><s:property value="BSector"/></span>
                                <span class="Created"><s:property value="BComments"/></span>
                                <s:url id="url" action="admin/deletevaluation">
                                    <s:param name="bvId" value="bvId"/>
                                </s:url>
                                <span class="Cost"> <s:a href="%{url}"><img src="images/trash.png" alt="Delete"  /></s:a></span>
                                <span class="response"><a href="mailto:<s:property value="CEmail"/>"><img src="images/mailicon.png" alt="Mail" height="20" width="20" /></a></span>
                                <span class="Clicks"><s:property value="createddate"/></span>
                            </div>

                        </s:iterator>
                    </div>

                    <div class="tabletext1"></div>



                    <div class="clear"></div>
                </div>







                <div class="green1">
                    <img src="images/green-line.png"/>	
                </div>
                <!-- footer start -->
                <div id="footer">			
                    <div class="bottom_link">

                    </div>

                    <div class="rights"> copyright &copy;2008  Pegasus Business Sales All rights reserved. </div>
                </div>		
                <!-- footer end -->	
            </div>
        </div>
    </body>
</html>