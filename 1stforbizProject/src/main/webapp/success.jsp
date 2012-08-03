<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head theme="jquery"/>
        <sj:head  jqueryui="true" jquerytheme="flick"/>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />

    </head>

    <body>

        <!--container start -->
        <div id="container">

            <div class="header">

                <div class="logo">
                    <img src="images/logo.gif" width="195" height="81" />	

                    <!--navigation start -->
                    <div class="navigation">
                <ul>

                    <li><a href="index2.jsp">Home</a></li>
                    <li><a href="sell.jsp">Sell</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="aboutus.jsp">About us</a></li>
                    <li><a href="contactus.jsp">Contact us</a></li>
                    <li><a href="mylist.jsp">My list</a></li>

                </ul>		


<form method="post" action="searchbyref.action" >

                            <div class="search_header">

                                <input type="text" class="search_input" value="" name="referenceId" placeholder="Our ref"/> 

                                <input type="submit" name="submit" class="search_submit" value="" title="Search"/>

                            </div>

                        </form>

                    </div>

                    <!--navigation end -->

                </div>

            </div>
            
            <!--content start -->
            <div class="content" style="border:1px solid #9a9b9d;">

                <!-- left side start -->
                <div class="about_us" style="float:none; margin:auto" >

                    <div class="t1"> Pegasus Business Sales:  Your Reference Id is <font color="red">  <s:property value="referenceId"/></font><br /><br />
                        You can can contact us by using this reference id in future.
                    </div><br />

                    <img src="images/left-hr.png"/>	<br />
                    <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                    <div class="t1"> Upload Images Below To finish </div><br />						

                    <!-- form -->
                    <div class="sell_form" style="float:none; margin:auto">

                        <s:form action="imagefile" method="post" enctype="multipart/form-data" theme="simple">



                            <s:hidden name="referenceNo" value="%{referenceNo}" />
                            <s:hidden name="referenceId"    value="%{referenceId}" />



                            <div class="t18">Image1 </div>

                            <s:file name="userImage1" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />

                            <div class="t18">Image2</div>

                            <s:file name="userImage2" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />

                            <div class="t18">Image3 </div>

                            <s:file name="userImage3" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />
                            <div class="t18">Image4</div>

                            <s:file name="userImage4" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />

                            <div class="t18">Image5 </div>

                            <s:file name="userImage5" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />


                            <input type="submit" value="Upload" name="type" class="sub_button button" style="margin-left:-100px;"/>

                            <input type="reset" value="Reset" name="type" class="rst_button button"/>

                             </s:form> <br /><br /><br />
                        </div>

                    </div>	
                    <!-- left side end -->	



                    <!-- right content start -->		
                <div class="right" style="margin:-530px 0 0 880px">

                    <div class="right1">
                        <a href="#"> <img src="images/savemoney.gif" width="180" height="210"/></a>	
                    </div>

                    <div class="right2">
                        <a href="search_map.jsp"> <img src="images/map.gif" width="180" height="210"/></a>
                        <a href="search_map.jsp"> <img src="images/map-bottom.png" width="180"/></a>
                    </div>

                </div>
                <!-- right content end -->

                    <!-- footer start -->
                <div id="footer" style="width:1100px">			
                    <div class="bottom_link">
                        <ul>
                            <li><a href="index2.jsp">Home</a></li>
                            <li><a href="sell.jsp">Sell</a></li>
                            <li><a href="services.jsp">Services</a></li>
                            <li><a href="aboutus.jsp">About us</a></li>
                            <li><a href="contactus.jsp">Contact us</a></li>
                            <li><a href="mylist.jsp">My list</a></li>
                            <li><a href="faqs.jsp">FAQ's</a></li>
                            <li><a href="tandc.jsp">Terms and Conditions</a></li>
                        </ul>				
                    </div>

                    <div class="rights" style="margin:20px 0 0 256px;">copyright &copy; 2008 Pegasus Business Sales All rights reserved</div>
                </div>		
                <!-- footer end -->
                </div>
                <!-- content end -->
            </div>
            <!--container end -->
        </body>
    </html>