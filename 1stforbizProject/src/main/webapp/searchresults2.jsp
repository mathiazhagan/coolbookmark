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
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />
        <style type="text/css">
            ol#pagination{
                overflow:hidden;
                margin: 20px 0 0px 280px;
            float: left;
            }
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#tid').easyPaginate({
                    step:3
                });
	
            });    
    
        </script>


        <s:head/>
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
                <div class="form2" style="float:none;">

                    <div class="t1"> Pegasus Business Sales, Search Results, by Category and the business sector. </div>
                    <s:if test="sresult.size()>0">
                        <%

                            List<Sell> first = (List<Sell>) request.getAttribute("sresult");


                        %>

                        <h5 style="text-align:center;"> <%out.println(first.size());%> Results found for your search</h5>
                    </s:if>
                    <s:else>
                        <h5 style="text-align:center;" ><font color="red"><s:actionerror/></font> 0 Results found for your search......Please see the similar search results below </h5>
                    </s:else>


                    <div id="tid" style="float:none; margin:auto;">
                        <s:if test="sresult.size()>0">
                            <s:iterator value="sresult">
                                <div class="left1" style="float:none; margin:auto;">
                                    <img src="images/left-content-top.png" width="540" height="32" />
                                    <div class="t10"> <s:property value="BAdverHeading"/> </div>	
                                    <div class="t11">  </div>
                                    <img src="imageretrieve1.action?referenceId=<s:property value="%{referenceNo}"/>" width="141" height="122" alt="NoImage" style="margin:10px 0 0 10px;"/> 

                                    <h1>Reference :</h1>
                                    <div class="list_id1"><s:property value="referenceId"/> <font size="1px">(Please quote this when contacting us)</font></div>	

                                    <h1>Price     :</h1>
                                    <div class="list_price1">&pound;<s:property value="BSalePrice"/></div> <br /><br /><br /><br /><br /><br />



                                    <h1>Location  :</h1> 
                                    <div class="list_loc"><s:property value="PTown"/></div>

                                    <div class="t13" style="margin:30px 0 0 20px;" ><s:property value="BBusinessDesc"/></div> <br /><br /><br /><br /><br /><br />

                                    <h5 style="text-align:center;">
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

                                    </h5>
                                </div>
                            </s:iterator></s:if>
                        </div>
                    <s:if test="sresult1.size()>0">
                        <s:iterator value="sresult1">
                            <div class="left1" style="float:none; margin:auto;">
                                <img src="images/left-content-top.png" width="540" height="32" />
                                <div class="t10"> <s:property value="BAdverHeading"/> </div>	
                                <div class="t11">  </div>
                                <img src="imageretrieve1.action?referenceId=<s:property value="%{referenceNo}"/>" width="141" height="122" style="margin:10px 0 0 10px;" alt="No Image" /> 

                                <h1>Reference :</h1>
                                <div class="list_id1"><s:property value="referenceId"/> <font size="1px">(Please quote this when contacting us)</font></div>	

                                <h1>Price     :</h1>
                                    <div class="list_price1">&pound;<s:property value="BSalePrice"/></div> <br /><br /><br /><br /><br /><br />



                                    <h1>Location  :</h1> 
                                    <div class="list_loc"><s:property value="PTown"/></div>

                               <div class="t13" style="margin:30px 0 0 20px;" > <s:property value="BBusinessDesc"/></div><br /><br /><br /><br /><br /><br />

                                <h5 style="text-align:center;">
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

                                </h5></div>
                            </s:iterator>
                        </s:if> <br /><br />

                </div>	

                <!-- left side end -->	

                <!-- footer start -->
               <div id="footer" style="width:1100px;">			
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
