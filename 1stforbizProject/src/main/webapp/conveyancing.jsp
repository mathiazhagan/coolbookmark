<%-- 
    Document   : conveyancing
    Created on : Jun 30, 2012, 8:47:34 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head/>

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
                    <li><a class="active" href="services.jsp">Services</a></li>
                    <li><a href="aboutus.jsp">About us</a></li>
                    <li><a href="contactus.jsp">Contact us</a></li>
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
            <div class="content1">

                <!-- left side start -->
                <div class="about_us">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>	<br /> <br />

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Services </div>

                    <div class="list2">
                        <ul>
                            <li><a href="conveyancing.jsp"> Conveyancing </a></li>
                            <li><a href="finance.jsp"> Finance </a></li>
                            <li><a href="landlordact.jsp"> Landlord &amp; Tenant Act </a></li>
                            <li><a href="rentreviews.jsp"> Rent Reviews </a></li>
                            <li><a href="stocktaking.jsp"> Stocktaking </a></li>
                            <li><a href="valuations.jsp"> Valuations </a></li>					
                        </ul>
                    </div>		<br /> <br /> 

                    <img src="images/left-hr.png"/>	

                    <br /><br />					

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Conveyancing </div>

                    <div class="t1"> Tip the balance in your favour </div> 

                    <div class="t18"> A Professional service with free legal advice and assistance in conjunction with numerous solicitor practices. Fixed fee conveyancing for your business, leasehold or freehold purchase. <br /><br />

                        Get a quote before you start. <br /><br />

                        No hidden extras and no excuses. <br /><br />

                        The fees are subject to change if you require additional work carried out which is not in the original brief. Discuss your circumstances with Neil at any time on 020 7935 3939. <a href="contactus.jsp">Contact Us now</a>.<br />

                    </div><br /><br />

                    <img src="images/left-hr.png"/>	

                    <div class="t1"> Other Services </div>

                    <div class="list2">
                        <ul>
                            <li> Rent Review Negotiations </li>
                            <li> New Lease Negotiations </li>
                            <li> Liquor Licence Applications </li>
                            <li>  Protection Orders </li>
                            <li> Work Permits for Chefs </li>
                            <li> Applications for Alterations </li>
                            <li> Repair Disputes </li>
                            <li> Suspension of Rent </li>
                            <li>  Applications for Change of Use </li>
                            <li> Insurance Claim Applications	</li>

                        </ul>
                    </div>
                    <div class="serv">
                        <a href="#"><img src="images/01.gif" width="468" height="60"/></a>
                    </div>

                </div>	
                <!-- left side end -->	

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

                <div class="rights"> copyright &copy;2008  Pegasus Business Sales All rights reserved. </div>
            </div>		
            <!-- footer end -->	

        </div>
        <!--container end -->
    </body>
</html>