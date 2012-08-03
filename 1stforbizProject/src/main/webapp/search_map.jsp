<%-- 
    Document   : search_map
    Created on : Jul 10, 2012, 12:09:25 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head/>

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
                <div class="left" style="float:none">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>			

                    <div style="float:none; width:470px; background-color:#fff; height:480px; float:left; margin:20px 0 0 40px; border:#000;">
                        <div style="width: 470px"><iframe width="470" height="480" src="http://regiohelden.de/google-maps/map.php?width=470&amp;height=480&amp;hl=de&amp;q=London+(Pegasus)&amp;ie=UTF8&amp;t=&amp;z=8&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a style="font-size: 9px;" href="http://www.regiohelden.de/g/zahnarzt-marketing/">Zahnarzt Marketing</a> - <a href="http://www.regiohelden.de/">RegioHelden</a></iframe><br /><span style="font-size: 9px;"><a style="font-size: 9px;" href="http://www.regiohelden.de/g/zahnarzt-marketing/">Zahnarzt Marketing</a> - <a href="http://www.regiohelden.de/" style="font-size: 9px;">RegioHelden</a></span></div>
                    </div>
                </div>

                <!-- left side end -->	

                <!-- middle content start -->	
                    <div class="middle" style="float:none; margin:-61px 0 0 570px;">

                        <div class="t2"> Search Category </div> <br />

                        <img src="images/middle-hr.png"  width="215"/>	

                        <div class="list">
                            <ul>
                                <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'A'}"/>
                                </s:url>
                                <s:a href="%{url}">Freehold Businesses</s:a>  </li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'B'}"/>
                                </s:url>
                                <s:a href="%{url}">Driving School </s:a>  </li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'C'}"/>
                                </s:url>
                                <s:a href="%{url}">Cafes, Take-Aways And 
                                    Fish And Chips </s:a> </li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'D'}" />
                                </s:url>
                                <s:a href="%{url}">Cards, Gifts and Video Shops </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'E'}"/>
                                </s:url>
                                <s:a href="%{url}">Clothing and Boutiques </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'F'}"/>
                                </s:url>
                                <s:a href="%{url}">Day Nurseries and Child Care  </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'G'}"/>
                                </s:url>
                                <s:a href="%{url}">Dry Cleaners and Launderettes  </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'H'}"/>
                                </s:url>
                                <s:a href="%{url}">Florists and Pet Shops  </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'I'}"/>
                                </s:url>
                                <s:a href="%{url}"> Garage, and MOT Stations </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'J'}"/>
                                </s:url>
                                <s:a href="%{url}"> Grocers and Green Grocers </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'K'}"/>
                                </s:url>
                                <s:a href="%{url}"> Hair and Beauty Salons </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'L'}"/>
                                </s:url>
                                <s:a href="%{url}"> Hardware and D.I.Y  </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'M'}"/>
                                </s:url>
                                <s:a href="%{url}"> Investments  </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'N'}"/>
                                </s:url>
                                <s:a href="%{url}"> Gloucestershire </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'O'}"/>
                                </s:url>
                                <s:a href="%{url}"> Miscellaneous </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'P'}"/>
                                </s:url>
                                <s:a href="%{url}">Newsagents</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'Q'}"/>
                                </s:url>
                                <s:a href="%{url}">Off-Licences</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'R'}"/>
                                </s:url>
                                <s:a href="%{url}">Post Offices</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'S'}"/>
                                </s:url>
                                <s:a href="%{url}">Public Houses and
                                    Snooker/Pool Clubs</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'T'}"/>
                                </s:url>
                                <s:a href="%{url}">Rest Homes/Hotels</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'U'}"/>
                                </s:url>
                                <s:a href="%{url}"> Restaurants and Wine Bars</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'V'}"/>
                                </s:url>
                                <s:a href="%{url}"> Sandwich Bars</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'W'}"/>
                                </s:url>
                                <s:a href="%{url}"> Sports Shops </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'X'}"/>
                                </s:url>
                                <s:a href="%{url}"> Stop Press </s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'Y'}"/>
                                </s:url>
                                <s:a href="%{url}">Vacant Shop</s:a></li>
                            <li><s:url id="url" action="categorysearch">
                                    <s:param name="category" value="%{'Z'}"/>
                                </s:url>
                                <s:a href="%{url}">Warehouses and Industrial</s:a></li>

                        </ul>
                    </div>

                </div><br /><br /><br />
                <!-- middle content end -->

                <!-- right content start -->		
                <div class="right" style="margin:-620px 0 0 850px">

                    <div class="right1">
                        <a href="#"> <img src="images/savemoney.gif" width="200" height="245"/></a>	
                    </div>

                    <div class="right2">
                        <a href="search_map.jsp"> <img src="images/map.gif" width="200" height="292"/></a>
                        <a href="search_map.jsp"> <img src="images/map-bottom.png" width="200"/></a>
                    </div>

                </div><br />
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