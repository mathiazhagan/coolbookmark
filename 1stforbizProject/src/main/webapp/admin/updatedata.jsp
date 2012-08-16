<%-- 
    Document   : adminpage
    Created on : Jun 30, 2012, 10:42:51 AM
    Author     : D.Mathiazhagan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />

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

            <div class="header">

                <div class="logo">
                    <img src="images/logo.gif" width="195" height="81" />	

                    <!--navigation start -->
                    <div class="navigation">
                <ul>

                    <li><a href="adminpage.jsp" class="active">Home</a></li>
                    <li><a href="logout.action">Logout</a></li> 
                </ul>

            </div>
                    
                </div>
            </div>
            <!--navigation end -->    

            <!--content start -->
            <div class="content" style="border:1px solid #9a9b9d;">

                <!-- left side start -->
                <div class="about_us" style="margin-right:auto; margin-left:auto;float:none;">

                    <div class="t1"> Welcome to  Business Details Update </div> <br />

                    <img src="images/left-hr.png"/>	<br /> <br />

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Details Update </div>

                    <!-- form -->
                    <div class="sell_form" align="center" >

                      <s:actionerror theme="jquery"/><s:actionmessage theme="jquery"/>
                        <div >
                            <form action="update.action" method="post" theme="simple" enctype="multipart/form-data">
                                <s:hidden name="referenceNo" value="%{sell.referenceNo}"/>
                                <div class="t100">Reference Id</div>

                                <div class="txt_box" style="margin-left:-500px"><s:textfield name="referenceId" value="%{sell.referenceId}" /></div>

                                <div class="t100">Heading</div>

                                <div class="txt_box" style="margin-left:-500px"> <s:textfield name="newheading" value="%{sell.BAdverHeading}"   /></div>
                                <div class="t100">Price</div>

                                <div class="txt_box" style="margin-left:-500px"><s:textfield name="newprice" value="%{sell.BSalePrice}" /></div>


                                <div class="t100">Image1</div>

                                <div class="txt_box" style="margin-left:-500px">   <s:file name="userImage1"  />  </div>


                                <div class="t100">Image2</div>

                                <div class="txt_box" style="margin-left:-500px">   <s:file name="userImage2"  />  </div>


                                <div class="t100">Image3</div>

                                <div class="txt_box" style="margin-left:-500px">   <s:file name="userImage3"  />  </div>


                                <div class="t100">Image4</div>

                                <div class="txt_box" style="margin-left:-500px">   <s:file name="userImage4"  />  </div>


                                <div class="t100">Image5</div>

                                <div class="txt_box" style="margin-left:-500px">   <s:file name="userImage5"  />  </div>


                                <div class="txt_box" style="margin:20px 0 0 -450px;"> <input type="submit" value="Update Details" class="button_image" /></div>

                            </form>

                        </div>

                    </div>
                </div>	
                <!-- left side end -->	





                <!-- footer start -->
                <div id="footer" style="width:1100px; margin-left:auto;margin-right:auto;">			
                    <div class="bottom_link">

                    </div>

                    <div class="rights" style="margin:20px 0 0 450px;">copyright &copy; 2008 Pegasus Business Sales All rights reserved</div>
                </div>		
                <!-- footer end -->	
            </div>
            <!-- content end -->


        </div>
        <!--container end -->
    </body>
</html>
