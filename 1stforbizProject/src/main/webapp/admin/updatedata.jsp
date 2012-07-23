<%-- 
    Document   : adminpage
    Created on : Jun 30, 2012, 10:42:51 AM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/style.css" />

        <s:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>Welcome Admin</title>
    </head>
    <body>


        <%
            Object obj = session.getAttribute("user");


            if (obj == null) {
                response.sendRedirect(request.getContextPath()+"/admin/sessionError.action");
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

          
            <!--content start -->
            <div class="content999">

                <!-- left side start -->
                <div class="about_us">

                    <div class="t1"> Welcome to  Business Details Update </div> <br />

                    <img src="images/left-hr.png"/>	<br /> <br />

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Details Update </div>

                   <!-- form -->
                    <div class="sell_form1" align="center" >

                        <s:actionerror/><s:actionmessage/>
                        <div >
                            <form action="update.action" method="post" theme="simple">
                                <s:hidden name="referenceNo" value="%{sell.referenceNo}"/>
                            <div class="t100">Reference Id</div>
                            
                            <div class="txt_box" style="margin-left:30px"><s:textfield name="referenceId" value="%{sell.referenceId}" /></div>
                           
                             <div class="t100">Heading</div>
                            
                            <div class="txt_box" style="margin-left:30px"> <s:textfield name="newheading" value="%{sell.BAdverHeading}"   /></div>
                            <div class="t100">Price</div>
                            
                            <div class="txt_box" style="margin-left:30px"><s:textfield name="newprice" value="%{sell.BSalePrice}" /></div>
                           
                           
                            <div class="txt_box" style="margin-top:20px;"> <input type="submit" value="Update Details" class="button_image" /></div>
                                                                       
                        </form>
                          
                        </div>
                       
                    </div>
                </div>	
                <!-- left side end -->	



                <!-- right content start -->		
                <div class="right10">

                 

                </div>
                <!-- right content end -->		

            </div>
            <!-- content end -->

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
        <!--container end -->
    </body>
</html>
