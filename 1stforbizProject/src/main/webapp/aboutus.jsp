<%-- 
    Document   : aboutus
    Created on : Jun 29, 2012, 8:39:04 PM
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
                    <li><a class="active" href="aboutus.jsp">About us</a></li>
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
                <div class="about_us">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div>

                    <br />

                    <img src="images/left-content-top.png" width="540" height="32" />
                    <div class="t10"> About Us At Pegasus Business Sales </div>

                    <div class="t17"> <img src="images/sell1.jpg" width="400" height="265" />Established since 1987 Pegasus Business Sales are dynamic, proactive agents acting in all aspects of the sale of companies and businesses in throughout London and the Home Counties. <br /> <br /> Our philosophy has and always will be to put the customer at the centre of all that we do. We take pride in providing our clients with the ultimate before, during and after sales service. The principle has over twenty years experience in the UK business sales market. This is therefore your definitive guide to property and business purchase, whether it is a well-run business, a dream development potential or a sound investment that you are looking for. Pegasus Business Sales is dedicated to providing exceptional customer service to fulfil each of our client?s specific requirements. <br /> <br /> A smile and a warm welcome from partners and staff alike, along with Pegasus's unique "Super cover Guarantee", is your personal assurance of total peace of mind. Pegasus Business Sales has simply the best selection of quality, value-for-money businesses currently available, supported with our full service and advice to both sellers and buyers. <br /> <br /> Matching up clients and sellers is a skill developed over many years by Pegasus Business Sales. Our courteous, highly trained and experienced staff do this to a higher standard than any other business transfer agency. Why? Because we care and because we listen. Both clients and vendors have specific requirements and motivations, so we listen to these and act accordingly. It is all about asking the right questions and listening to the answers. Because of this straightforward philosophy, we satisfy both the seller and the buyer time and time again. <br /> <br /> Simply put, Pegasus Business Sales achieves customer satisfaction the old fashioned way: We earn it. We now enjoy the loyalty of hundreds of clients in UK. Your investment is secure, your dream awaits, so why not call us and become one of Pegasus?s esteemed customers.					
                    </div>
                    <br />
                    <img src="images/left-content-top.png" width="540" height="32" />
                    <div class="t19"> Our Profile </div> <br /><br />

                    <div class="t18"> <img src="images/office1.jpg" width="150" height="240" alt="" />Our Central London office has successfully handled over 3,300 transactions. Our clients range from single property owners to those with portfolios of over 200. Our office handles 600 to 800 new enquiries each week with over 23,000 applicants currently seeking to be suited for specific properties and businesses.<br /><br />

                        We pride ourselves in providing a personal and individual service to every client as countless letters and cards commending our service testify.<br /><br />

                        We presently have a capacity to market 8,000 properties and businesses yet we provide a superior service to both buyer and seller with fast turnaround. 15% of our clients reside outside of England but we expect the number to grow to 20% by the end of this year. We trouble-shoot for clients by liaising with auctioneers, bank managers, solicitors, local authorities, utility companies and other organizations for a full realization of their investments throughout the UK.
                    </div>

                </div>	
                <!-- left side end -->	



                <!-- right content start -->		
                <div class="right" style="margin:-925px 0 0 860px">

                    <div class="right1">
                        <a href="#"> <img src="images/savemoney.gif" width="200" height="245"/></a>	
                    </div>

                    <div class="right2">
                        <a href="search_map.jsp"> <img src="images/map.gif" width="200" height="292"/></a>
                        <a href="search_map.jsp"> <img src="images/map-bottom.png" width="200"/></a>
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