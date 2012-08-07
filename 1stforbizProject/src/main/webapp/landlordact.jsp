<%-- 
    Document   : landlordact
    Created on : Jun 30, 2012, 8:52:45 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
                <div class="about_us" style="width:560px;">

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
                    </div>		<br /> 

                    <img src="images/left-hr.png"/>	

                    <br /><br />					

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Landlord and Tenant Act 1954 </div><br /> 

                    <div class="t1">Landlord and Tenant Act 1954: the meaning of 'occupation'</div><br /> 

                    <div class="t17"> A tenant need not be in physical occupation of the premises at the end of the tenancy in order to claim the protection of the Landlord and Tenant Act 1954. Where events occur which force the tenant to leave the premises - such as a fire - the tenant can still apply to the court for the renewal of the tenancy, provided that he continues to claim his right to occupy the premises during the period of his absence. It is a question of fact in each case whether the tenant can show an intention to resume occupation.<br /> <br /> 

                        In Flairline Properties, the tenant of a restaurant had to move out in April 1995 after a fire, and reopened in nearby premises in August 1996, taking a 25-year lease of them. However, the tenant retained the key to the restaurant, stored equipment there and claimed to have informed the landlord's agent of his desire to return to the restaurant once it had been reinstated to open a second restaurant. The tenancy expired in March 1997 and the landlord wished to redevelop the premises. He argued that the tenant was not in 'occupation' for the purposes of the 1954 Act, so that he would not have to operate the 1954 Act procedure and pay the tenant the statutory compensation to which the tenant would have been entitled had the landlord succeeded in preventing the lease being renewed under ground (f).<br /> <br /> 

                        The landlord's argument was that to establish an 'intention' to return to the premises, the tenant would have to show a genuine, firm and settled intention to return to the premises which is not likely to be changed and which he has a reasonable prospect of bringing about. This is the standard of 'intention' required in an action by a landlord under s30(1)(f) of the 1954 Act to regain possession of the premises for redevelopment. The Court rejected this argument and accepted that a lower standard of 'intention' applied for the purposes of proving an intention to occupy.<br /> <br /> 

                        After a detailed consideration of the evidence, the court held that the tenant had an intention to return to the premises, once they were reinstated, to open a second restaurant, to be run alongside the one in the nearby premises. Mr A Hacking QC, sitting as a deputy judge, put it this way: 'It is sufficient if [the tenant] establishes that, at all times since the event which caused him to absent himself, he has intended to return to reoccupy the premises once they have been reinstated. Although not strictly required, he should communicate this intention to exert and claim his right of occupancy to the landlord or the landlord's agent.' It was not necessary for the tenant to show that there was a reasonable prospect of bringing this about.<br /> <br /> </div>

                    <font size="2px"> Case reference <br />
                        Flairline Properties Ltd v Hassan [1998] EGCS 159 (QBD)<br />
                        Source: Simmons and Simmons March 1999 </font>


                </div>	
                <!-- left side end -->	

                <!-- right content start -->		
                <div class="right_01" style="margin:-1150px 0 0 560px;">

                    <div class="t1"> You may like this </div> <br />

                    <img src="images/hr.gif" width="170" style="margin-left:60px;"/>	

                    <s:url id="ajax" value="/ajaxcallother"/>
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