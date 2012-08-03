<%@taglib uri="/struts-tags" prefix="s"%>


<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
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
        <sj:head jqueryui="true" jquerytheme="flick"/>

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
                            <li><a class="active" href="index2.jsp">Home</a></li>
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
            <div class="content">
                <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                <div class="left">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>	
                    <div>
                        <s:url id="ajaxdiv" value="/ajaxcall.action"/>
                        <sj:div href="%{ajaxdiv}" indicator="logo">
                            <img id="logo" src="images/lo.gif" alt="loading" style="display:none"/></sj:div>
                        </div>
                    </div>

                    <!-- left side end -->	

                    <!-- middle content start -->	
                    <div class="middle">

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

                </div>
                <!-- middle content end -->		

                <div class="rfsearch">
                    <div class="t4"> REFINE YOUR SEARCH </div> 

                    <form action="selectivesearch.action" method="post">
                        <div class="t5"> Max Price </div> 

                        <input type="text" id="text_box" name="price" /><br />

                        <div class="t5"> Sector </div> 

                        <select name="category" class="drop_box">

                            <option value="A" >Freehold Businesses</option>

                            <option value="B"> Driving School</option>

                            <option value="C">Cafes, Take-Aways And Fish And Chips</option>

                            <option value="D">Cards, Gifts and Video Shops</option>

                            <option value="E">Clothing and Boutiques</option>

                            <option value="F">Day Nurseries and Child Care</option>

                            <option value="G">Dry Cleaners and Launderettes</option>

                            <option value="H">Florists and Pet Shops</option>

                            <option value="I">Garage, Spares and MOT Stations</option>

                            <option value="J">Grocers and Green Grocers</option>

                            <option value="K">Hair and Beauty Salons</option>

                            <option value="L">Hardware and D.I.Y.</option>

                            <option value="M">Investments</option>

                            <option value="N">Miscellaneous</option>

                            <option value="O">Gloucestershire </option>

                            <option value="P">Newsagents</option>

                            <option value="Q">Off-Licences</option>

                            <option value="R">Post Offices</option>

                            <option value="S">Public Houses and Snooker/Pool Clubs</option>

                            <option value="T">Rest Homes/Hotels</option>

                            <option value="U">Restaurants and Wine Bars</option>

                            <option value="V">Sandwich Bars</option>

                            <option value="W">Sports Shops</option>

                            <option value="X">Stop Press</option>

                            <option value="Y">Vacant Shop</option>

                            <option value="Z">Warehouses and Industrial</option>

                        </select>

                        <div class="t5"> Region </div>

                        <select name="region" class="drop_box">

                            <option value="Buckinghamshire">Buckinghamshire</option>

                            <option value="Edgeware">Edgeware</option>

                            <option value="Essex">Essex</option>

                            <option value="Hackney, London">Hackney, London</option>

                            <option value="Hampshire">Hampshire</option>

                            <option value="Hertfordshire">Hertfordshire</option>

                            <option value="Ilford, Essex">Ilford, Essex</option>

                            <option value="Kent">Kent</option>

                            <option value="Leicester">Leicester</option>

                            <option value="London">London</option>

                            <option value="Middlesex">Middlesex</option>

                            <option value="Rainham, Essex">Rainham, Essex</option>

                            <option value="Richmond, Surrey">Richmond, Surrey</option>

                            <option value="Shad Thames, London">Shad Thames, London</option>

                            <option value="Sheernes, Kent">Sheernes, Kent</option>

                            <option value="Streatham, London">Streatham, London</option>

                            <option value="Surbiton, Surrey">Surbiton, Surrey</option>

                            <option value="Surrey">Surrey</option>

                        </select>

                        <div class="t5"> Keyword </div> 

                        <input type="text" id="text_box" name="word" /><br />

                        <input type="reset"  name="type" value="Reset" id="reset_button"/>
                        <input type="submit" name="type" value="Search" id="search_button"/>


                    </form>

                </div>
                <!-- right content start -->		
                <div class="index_right">

                    <div class="index_right1">
                        <img src="images/savemoney.gif" width="150" height="293"/>	
                    </div>

                    <div class="index_right2">
                        <a href="search_map.jsp"><img src="images/map.gif" width="150" height="260"/></a>
                        <a href="search_map.jsp"> <img src="images/map-bottom.png" height="30" width="150" /></a>
                    </div>				

                </div>
                <!-- right content end -->		
                <div class="rig1">
                    <s:url id="ajaxside" value="/ajaxcallindex.action"/>
                    <sj:div href="%{ajaxside}" indicator="logo">
                        <img id="logo" src="images/lo.gif" alt="loading" style="display:none"/></sj:div>


                </div>
                <!-- footer start -->
                <div id="footer" style="width:1090px">			
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