<%-- 
    Document   : finance
    Created on : Jun 30, 2012, 8:49:55 PM
    Author     : Naren
--%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
        <s:head theme="jquery" />
        <sj:head jqueryui="true" jquerytheme="flick" />
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
                    <li><a  href="services.jsp">Services</a></li>
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
                <div class="about_us" style="width:555px;">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>	<br /> <br />

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Services </div>

                    <div class="list02">
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
                    <div class="t10"> Pegasus Business Sales Financing </div><br /> <br />

                    <div class="t22">Our bank lending rate is, base + 1% or less with up to 100% of the valuation for freehold or leasehold subject to status.</div>

                    <h5> (only available for property or business listed by us) </h5>

                    <div class="t17"> <img src="images/cash2.jpg" width="98" height="68" />Whether you are buying a business or expanding and however much money you need our finance department will do everything possible to help you achieve your objectives. <br /> <br />

                        Whether you are buying a business, raising money to pay off debts, looking for a cheaper interest rate or expanding your business our close personal interest in your business and our very flexible approach to every proposal will ensure you get precisely what you apply for. <br /> <br />

                        Remember, we do not charge any up front fees, so we won't earn a single penny unless you are entirely satisfied.</div>

                    <div class="t23">Funding for UK Businesses from £25,000 to £4 million.</div><br /><br /><br />

                    <div class="t17">If you would like to contact us regarding financing you can <a href="contactus.jsp">contact us here</a>. 

                    </div>
                   
                </div>	
                <!-- left side end -->	

                <!-- right content start -->		
              <div class="right_01" style="margin:-800px 0 0 600px;">

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