<%-- 
    Document   : adminpage
    Created on : Jun 30, 2012, 10:42:51 AM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/style.css" />

        <sx:head />
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>Welcome Admin</title>
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

                    <li><a href="adminpage.jsp" class="active">Home</a></li>
                    <li><a href="logout.action">Logout</a></li> 
                </ul>

            </div>
            <!--navigation end -->

            <div class="green">
                <img src="images/green-line.png"/>	
            </div>



            <!--content start -->
            <div class="content999">

                <!-- left side start -->
                <div class="about_us">

                    <div class="t1"> Welcome to Admin Page </div> <br />

                    <img src="images/left-hr.png"/>	<br /> <br />

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Admin </div>

                    <div class="list2">
                        <ul>
                            <li><a href="valuationlist.action"> Valuation Request List </a></li>
                            <li><a href="sell_request_list.action"> Sell Request List </a></li>
                            <li><a href="mylist_request_list.action"> List of Requests </a></li>
                            <li><a href="Immediate_sell_list.action"> Immediate Sale List </a></li>
                            <li><a href="request_info_list.action"> Request Info List </a></li>
                            <li><a href="uploaddata.jsp"> New Property Upload </a></li>					
                        </ul>
                    </div>		<br /> <br /> 

                    <img src="images/left-hr.png"/>	

                    <br /><br />					

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Reference Id To Update</div>

                    <div class="t1"> Enter Reference Id to Update</div> 
                    <div style="margin:20px 0 0 60px;">

                        <form  action="updatedatabase.action" method="post">
                            <s:url id="databaseList" action="refIdjson" />
                            <!--<input type="text" name="referenceId" label="Reference Id" class="txt_bx1_1"/>-->
                            <sx:autocompleter  href="%{databaseList}" name="referenceId"/>
                            <input type="submit" value="update" class="button_image"/>
                        </form>
                        <s:actionerror theme="jquery"/><s:actionmessage theme="jquery"/>
                    </div>



                </div>	
                <!-- left side end -->	




            </div>
            <!-- content end -->

            <div class="green1">
                <img src="images/green-line.png"/>	
            </div>

            <!-- footer start -->
            <div id="footer">			
                <div class="bottom_link"><!--
                    <ul>
                        <li><a href="index2.jsp">Home</a></li>
                        <li><a href="sell.jsp">Sell</a></li>
                        <li><a href="services.jsp">Services</a></li>
                        <li><a href="aboutus.jsp">About us</a></li>
                        <li><a href="contactus.jsp">Contact us</a></li>
                        <li><a href="mylist.jsp">My list</a></li>
                        <li><a href="faqs.jsp">FAQ's</a></li>
                        <li><a href="tandc.jsp">Terms and Conditions</a></li>
                    </ul>	-->			
                </div>

                <div class="rights"> copyright &copy; 2008  Pegasus Business Sales All rights reserved. </div>
            </div>		
            <!-- footer end -->	

        </div>
        <!--container end -->
    </body>
</html>