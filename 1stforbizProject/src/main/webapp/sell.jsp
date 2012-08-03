<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title> 1stforbiz </title>

        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
         <s:head theme="jquery"/>
        <sj:head  jqueryui="true" jquerytheme="flick"/>

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
                    <li><a class="active" href="sell.jsp">Sell</a></li>
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
                <s:actionerror theme="jquery"/><s:actionmessage theme="jquery"/>
                <!-- left side start -->
                <div class="sell_content" style="margin-right:100px;text-align:center;">

                    <h6 style="color:#5585d7;">We deal with your complete selling process leaving you free to do what you are best at </h6>

                    <h5> <a href="ImmediateSelling.jsp"> Click here </a> and fill in the form for instant marketing (or) <br /> <br />

                        <a href="mailto:alan1@pegasus101.co.uk?subject=UNIQUE PROBLEM">Click here </a> to discuss your unique situation <br /> <br /> <br />


                        Most of the sellers come to us having dealt us before, through recommendations or after a bad or costly  experience. If you are one of those, just call us.<br /> <br /> <br />
                        Are you in a transaction that is proceeding too slow? We have the ultimate solution. <br/> <br /> <a href="http://www.startinbusiness.co.uk/sellbiz/members/submit.htm"> Click here </a> for more information.</h5> </div>

                <div class="sell">	

                    <h5 style="text-align:center"> <a href="http://www.startinbusiness.co.uk/sellbiz/members/submit.htm"> Our offer (unmatched or beaten by any other agent in UK) </a> </h5>

                    <div class="list02" style="margin-right:150px;">

                        <ul>
                            <li> A professional service from start to finish </li>
                            <li> Market driven advertising </li>
                            <li> Every applicant vetted for experience, suitability and financial ability <b>BEFORE</b> arranging viewing </li>
                            <li> Deals we put together do not abort. </li>
                            <li> You will not incur any legal or any other fees if the deal is aborted and it is not your's or your solicitor's fault. </li>
                            <li> Complete the transaction within two weeks of agreeing terms (subject to all parties co-operating with us) </li>
                            <li> Complete advice on all legal aspects and special situations </li>
                            <li> Free financial advice </li>
                            <li> Benefit of over 50 years combined experience in buying and selling businesses </li>
                            <li> A constantly updated modern approach </li>
                            <li> Traditional loyalty and trust the old fashioned way </li>
                            <li> Looking after your best interests with advice at all levels throughout the transaction </li>
                            <li> Always Friendly, approachable helpful and knowledgeable </li>
                            <li> We advertise your business in all the most popular media in UK until sold with no time limits. </li>
                            <li> Negotiate favourable terms to satisfy all parties </li>
                            <li> We will deal with most of the tedious legal work for your solicitor in order that he may continue with the more important aspects of the transaction </li>
                            <li> We do not make promises we cannot keep </li>
                        </ul>
                    </div> <br />

                    <div class="t22" style="text-align:center;color:#5585d7">Other little known (but very useful) services</div> 

                    <div class="list02" style="margin-right:150px;">
                        <ul>

                            <li> We can arrange for your lease to be renewed or extended * </li>
                            <li> Resolve any outstanding rent reviews within days * </li>
                            <li> We will satisfy your Landlord's most exacting requirements </li>
                            <li> Complete a Licence to occupy within 24 hours * </li>
                            <li> Prepare a schedule of conditions * </li>
                            <li> Valuation reports * </li>
                            <li> We take over and complete transactions other agents cannot see through </li>
                            <li> We will assist in completing transactions where buyer is found by you or any other party including solicitors and other agents </li>
                            <li> We draw up and complete handover with management agreements * </li>
                            <li>  </li>

                        </ul>
                    </div>

                    <div class="t21">  *   = Additional fees apply </div> <br />

                    <div class="t22" style="text-align:center;color:#5585d7" >Is your most valued asset handled by professionals?</div> <br />

                    <div class="t22">With over 3,400 successful sales through us, dealing with all aspects of your sale should be a 'walk in the park for us! <br /><br /> 

                        <a href="ImmediateSelling.jsp">Click Here</a> to fill in and submit the form and we will contact you with further instructions.
                    </div> <br />

                    <div class="t22" style="text-align:center;color:#5585d7">Some of the media we normally use to advertise your business (20% of our service):</div> <br />

                    <div class="partner">

                        <a href="#"><img src="images/partners/Pegasus.jpg" width="300" height="100" /></a>
                        <a href="#"><img src="images/partners/daltonsbusiness.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/businessesforsale.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/ukbusinessbase.jpg" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/rightbiz.png" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/businesssalereport.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/startinbusiness.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/hotelstobuy.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/restaurantstobuy.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/startups.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/thisismoney.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/ft.jpg" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/royalmail.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/caterer.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/hairdressersjournal.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/angelsden.jpg" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/morningadvertiser.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/thepublican.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/businesssalesonline.gif" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/telegraph.jpg" width="300" height="100"/></a>
                        <a href="#"><img src="images/partners/bizsale.jpg" width="300" height="100"/></a>					

                    </div> <br />




                </div>	
                <!-- left side end -->			
                <div class="t23" style="float:none">Anyone can pay and advertise a property or business in one or more media but what about protecting yourself against  buyers who may not be able keep their word, springing a problem at the last minute or not completing involving you in abortive costs? An agent's primary function is to protect you against all odds whilst keeping the buyer happy through to a smooth transfer. Any fees the agent may charge should easily be covered with over 90% possibility that you will come out with even more than you anticipated plus no hassles. Both parties will have plenty time from the date of the offer through to completion in order to outdo each other. </div>				

                <div class="t24" style="margin:0 0 10px 50px; float:none">
                    <a href="#">business brokers uk</a>
                </div>

               <div class="right_01" style="margin:-2200px 0 0 600px;">

                    <div class="t1"> You may like this </div> <br />

                    <img src="images/hr.gif" width="170" style="margin-left:60px;"/>	

                    <s:url id="ajax" value="/ajaxcallother"/>
                    <sj:div href="%{ajax}" indicator="logo">
                        <img id="logo" src="images/lo.gif" alt="loading" style="display:none"/>
                    </sj:div>

                </div>


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

                    <div class="rights"> copyright &copy;2008  Pegasus Business Sales All rights reserved. </div>
                </div>		
                <!-- footer end -->	
            </div>
            <!-- content end -->
        </div>
        <!--container end -->
    </body>
</html>