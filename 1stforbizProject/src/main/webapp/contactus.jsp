<%-- 
    Document   : contactus
    Created on : Jun 29, 2012, 8:45:50 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title> 1stforbiz </title>

        <link rel="stylesheet" type="text/css" href="style/style.css" />

    </head>

    <body>

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

                    <li><a href="index2.jsp">Home</a></li>
                    <li><a href="sell.jsp">Sell</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="aboutus.jsp">About us</a></li>
                    <li><a class="active" href="contactus.jsp">Contact us</a></li>
                    <li><a href="mylist.jsp">My list</a></li>

                </ul>		

                <!--                <div class="t9">2</div>			-->


                <form method="post" action="searchbyref.action" >

                    <p class="search-header">

                        <input type="text" class="search-input" value="" name="referenceId" placeholder="Our ref"/> 

                        <input type="submit" name="submit" class="search-submit" value="" title="Search"/>

                    </p>

                </form>


            </div>
            <!--navigation end -->

            <div class="green">
                <img src="images/green-line.png"/>	
            </div>

            <!--banner start -->
            <div class="banner1"> </div>
            <!--banner end -->

            <!--content start -->
            <div class="content0">

                <!-- left side start -->
                <div class="left">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>	

                    <div class="left1">

                        <img src="images/left-content-top.png" width="540" height="32" />	
                        <div class="t10"> Contact Pegasus By Mail </div>

                        <div class="address">
                            45, Welbeck Street,<br />
                            London,<br />
                            W1G 8DZ,<br />
                            United Kingdom.
                        </div>

                    </div>

                    <img src="images/left-hr.png"/>	

                    <div class="left2">

                        <img src="images/left-content-top.png" width="540" height="32" />	
                        <div class="t10"> Contact Pegasus By telephone, email or Fax </div>

                        <div class="address">
                            Tel:	0207 935 3939<br />
                            Fax:	0207 935 9171<br />
                            Office Hours:	Mon - Fri 0900 - 1730<br />
                            Email:	<a href="#">contact@1stforbiz.com</a>
                        </div>

                    </div>

                    <img src="images/left-hr.png"/>	

                    <div class="left3">

                        <img src="images/left-content-top.png" width="540" height="32" />	
                        <div class="t10"> Contact Pegasus </div>

                        <br /> <br /> <br > <br ><br ><br >
                                        <a href="contactus_for_selling.jsp">
                                            <div class="view_more">
                                                <div class="t151"> 
                                                    Sell
                                                </div>
                                            </div>
                                        </a> <a href="buy.jsp">
                                            <div class="add_list">
                                                <div class="t151"> 
                                                    Buy
                                                </div>
                                            </div>
                                        </a>

                                    </br ></br ></br ></br>

                        <img src="images/left-hr.png"/>	

                    </div>

                </div>	
                <!-- left side end -->	

                <div class="gap">
                </div>

                <!-- right content start -->		
                <div class="right">

                    <div class="right1">
                        <a href="#"> <img src="images/savemoney.gif" width="223" height="245"/></a>	
                    </div>

                    <div class="right2">
                        <a href="search_map.jsp"> <img src="images/map.gif" width="217" height="292"/></a>
                        <a href="search_map.jsp"> <img src="images/map-bottom.png"/></a>
                    </div>

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

                <div class="rights"> copyright &copy; 2008  Pegasus Business Sales All rights reserved. </div>
            </div>		
            <!-- footer end -->	

        </div>
        <!--container end -->
    </body>
</html>