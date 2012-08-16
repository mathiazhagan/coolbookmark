<%-- 
    Document   : contactus
    Created on : Jun 29, 2012, 8:45:50 PM
    Author     : D.Mathiazhagan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title> 1stforbiz </title>
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
                    <li><a class="active" href="contactus.jsp">Contact us</a></li>
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
                <div class="about_us">
                    <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>	

                    <div class="left3" style="float:none;">

                        <img src="images/left-content-top.png" width="540" height="32" />	
                        <div class="t10"> Contact Pegasus  </div>

                        <div class="address">
                            45, Welbeck Street,  London,<br />

                            United Kingdom, W1G 8DZ.<br />

                        </div>
                        <div class="address">
                            Tel:	0207 935 3939<br />
                            Fax:	0207 935 9171<br />
                            Office Hours:	Mon - Fri 0900 - 1730<br />
                            Email: contact@1stforbiz.com
                        </div><br /> <br /> 

                        <a href="contactus_for_selling.jsp">
                            <div class="view_more" style="margin-left:70px;">
                                <div class="t151"> 
                                    Sell
                                </div>
                            </div>
                        </a> <a href="buy.jsp">
                            <div class="add_list" style="margin:8px 0 0 25px;">
                                <div class="t151"> 
                                    Buy
                                </div>
                            </div>
                        </a>

                    </div>
               </div>	
                <!-- left side end -->	

<br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- right content start -->		
                <div class="right_01" style="margin:-625px 0 0 560px;">

                    <div class="t1"> You may like this </div> <br />

                    <img src="images/hr.gif" width="170" style="margin-left:60px;"/>	

                    <s:url id="ajax" value="/ajaxcallcustom"/>
                    <sj:div href="%{ajax}" indicator="logo">
                        <img id="logo" src="images/lo.gif" alt="loading" style="display:none"/>
                    </sj:div>



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