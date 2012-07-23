<%-- 
    Document   : searchresults2
    Created on : Jul 1, 2012, 9:25:54 PM
    Author     : Naren
--%>


<%@page import="com.model.Sell"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title> 1stforbiz </title>

        <link rel="stylesheet" type="text/css" href="style/style.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#tid').easyPaginate({
                    step:3
                });
	
            });    
    
        </script>
        <style type="text/css">
            ol#pagination{overflow:hidden;}
            ol#pagination li{
                float:left;
                list-style:none;
                cursor:pointer;
                margin:0 0 0 .5em;
                font: 1em Helvetica, Arial, Sans-Serif;
                line-height: 1.5em;
                color: #333;
            }
            ol#pagination li.current{color:#f00;font-weight:bold;}
        </style>
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
            <div class="content04">

                <!-- left side start -->
                <div class="form02">

                    <div class="t1"> Pegasus Business Sales, Search Results, by Category and the business sector. </div>
                    <s:if test="sresult.size()>0">
                        <%

                            List<Sell> first = (List<Sell>) request.getAttribute("sresult");


                        %>

                        <h5><%out.println(first.size());%> Results found for your search</h5>
                    </s:if>
                    <s:else>
                        <h5><font color="red"><s:actionerror/></font> 0 Results found for your search......Please see the similar search results below </h5>
                    </s:else>
                    <div class="pages">


                    </div>

                    <div class="pages1">    


                    </div>


                    <div class="left1">
                        <div id="tid">
                            <s:if test="sresult.size()>0">
                                <s:iterator value="sresult">
                                    <div class="tabletext">
                                        <img src="images/left-content-top.png" width="540" height="32" />
                                        <div class="t10"> <s:property value="BAdverHeading"/> </div>	
                                        <div class="t11">  </div>
                                        <img src="MyFolder/<s:property value='referenceId'/>/<s:property value='referenceId'/>.jpg" width="141" height="122" alt="NoImage"/> 

                                        <h1>Reference :</h1>
                                        <div class="list_id1"><s:property value="referenceId"/> <font size="1px">(please quote this number when contacting us, by phone)</font></div>	

                                        <h1>Price     :</h1>
                                        <div class="list_price1">&pound;<s:property value="BSalePrice"/></div> <br /><br /><br /><br /><br /><br /><br/>



                                        <h1>Location  :</h1> 
                                        <div class="list_loc"><s:property value="PTown"/></div>

                                        <h1><s:property value="BBusinessDesc"/></h1> <br /><br /><br /><br /><br /><br />

                                        <h5>
                                            <s:url id="url" action="fulldetails">
                                                <s:param name="referenceId" value="referenceId"/>
                                            </s:url>
                                            <s:a href="%{url}">| View More Info</s:a> |



                                            <s:url id="url" action="addtolist">
                                                <s:param name="referenceId" value="referenceId"/>
                                            </s:url>
                                            <s:a href="%{url}">Add to MyList</s:a> |


                                            <s:url id="url" action="similarsearch">
                                                <s:param name="Category" value="BCategory"/>
                                            </s:url>
                                            <s:a href="%{url}">View more similar results</s:a> |

                                            <!--
                                            <s:url id="url" action="fulldetails">
                                                <s:param name="referenceId" value="referenceId"/>
                                            </s:url>
                                            <s:a href="%{url}">| View More Info</s:a> |-->

                                        </h5><img src="images/left-hr.png"/>
                                    </div>
                                </s:iterator></s:if>
                            </div>
                        <s:if test="sresult1.size()>0">
                            <s:iterator value="sresult1">

                                <img src="images/left-content-top.png" width="540" height="32" />
                                <div class="t10"> <s:property value="BAdverHeading"/> </div>	
                                <div class="t11">  </div>
                                <img src="MyFolder/<s:property value='referenceId'/>/<s:property value='referenceId'/>.jpg" width="141" height="122" /> 

                                <h1>Reference :</h1>
                                <div class="list_id1"><s:property value="referenceId"/> <font size="1px">(please quote this number when contacting us, by phone)</font></div>	

                                <h1>Price     :</h1>
                                <div class="list_price1">&pound;<s:property value="BSalePrice"/></div> <br /><br /><br /><br /><br /><br /><br/>



                                <h1>Location  :</h1> 
                                <div class="list_loc"><s:property value="PTown"/></div>

                                <h1><s:property value="BBusinessDesc"/></h1> <br /><br /><br /><br /><br /><br />

                                <h5>
                                    <s:url id="url" action="fulldetails">
                                        <s:param name="referenceId" value="referenceId"/>
                                    </s:url>
                                    <s:a href="%{url}">| View More Info</s:a> |



                                    <s:url id="url" action="addtolist">
                                        <s:param name="referenceId" value="referenceId"/>
                                    </s:url>
                                    <s:a href="%{url}">Add to MyList</s:a> |


                                    <s:url id="url" action="similarsearch">
                                        <s:param name="Category" value="BCategory"/>
                                    </s:url>
                                    <s:a href="%{url}">View more similar results</s:a> |

                                    <!--
                                    <s:url id="url" action="fulldetails">
                                        <s:param name="referenceId" value="referenceId"/>
                                    </s:url>
                                    <s:a href="%{url}">| View More Info</s:a> |-->

                                </h5><img src="images/left-hr.png"/>	</s:iterator></s:if>


                            </div> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


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
                    <div class="pages1">   
               
            </div>


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
