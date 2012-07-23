<%@page import="com.controller.header1"%>
<%@page import="com.model.Sell"%>
<%@page import="com.controller.spDAO"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

    <head>
        <s:head/>

        <%

            ArrayList<String> my_list = (ArrayList<String>) session.getAttribute("my_list");

            if (my_list == null || my_list.size() == 0) {
                my_list = new ArrayList<String>();
            }



        %>


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
                    <li><a href="contactus.jsp">Contact us</a></li>
                    <li><a class="active" href="mylist.jsp">My list</a></li>

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
                <div class="about_us1">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/><br /><br /><br />

                    <div class="my_list">

                        <img src="images/left-content-top.png" width="700" height="32" /><br /><br />
                        
                        <div class="t1000"> Your Selected List </div>
                        
                         <div class="mylist_lst">
                       
                        <%

                            if (my_list.size() > 0) {
                                for (int i = 0; i < my_list.size(); i++) {

                           
                        %>
 
                        
                        <div class="t012"><img src="images/list3.png" width="24" height="24"/></div>

                        <div class="t121"><%=my_list.get(i)%></div>

                        <div class="list_title">.....................</div>

                        <div class="t051"> 
                            <a href="fulldetails?action=fulldetails&referenceId=<%=my_list.get(i)%>"> View</a>
                            
                        </div>					

                        <div class="t050"> 
                        <a href="removelistitem?action=removelistitem&referenceId=<%=my_list.get(i)%>">Remove</a>
                        </div>	 
                        
                                
                        
                        
                        <%
                                }
                            }
                       else
                                                     {
                        out.println("No items added to your list....");
                       }


                        %>

                         </div>         
                    </div>	

                    <div class="all_items">

                        <div class="t05"> 
                            <a href="mylistinfo.jsp">Request Info for All</a>
                        </div>					

                        <div class="t005"> 
                            <a href="removeall?action=removeall">Remove All</a>
                        </div>				

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
                    </ul>				
                </div>

                <div class="rights"> copyright ɠ2008  Pegasus Business Sales All rights reserved. </div>
            </div>		
            <!-- footer end -->	

        </div>
        <!--container end -->
    </body>
</html>
