<%-- 
    Document   : aboutus
    Created on : Jun 29, 2012, 8:39:04 PM
    Author     : D.Mathiazhagan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page import="com.controller.header1"%>
<%@page import="com.model.Sell"%>
<%@page import="com.controller.spDAO"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>        

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> 1stforbiz </title>

        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <%

            ArrayList<String> my_list = (ArrayList<String>) session.getAttribute("my_list");

            if (my_list == null || my_list.size() == 0) {
                my_list = new ArrayList<String>();
            }



        %>

    </head>

    <body>

        <!--container start -->
        <div id="container" style="margin-left:-17px;">

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
                            <li><a class="active" href="mylist.jsp">My list</a></li>

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
                <s:actionerror theme="jquery"/><s:actionmessage theme="jquery"/>
                <!-- left side start -->
                <div class="about_us" >

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/><br /><br /><br />

                    <div class="my_list" style="margin:auto">

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

                            <br/>  <br/>
                            <%   }%>

                           

                                
                            <a href="mylistinfo.jsp"><input type="button" value="Request Info for All" class="button_image" style="cursor:pointer; " /></a>
                               				

                             
                                    <a href="removeall?action=removeall"><input type="button" value="Remove All" class="button_image" style="cursor:pointer"/></a>
                                			

                            


                            <%
                                } else {
                                    out.println("<h2 style='font-size:15px;'>List of your selection will appear here....</h2>");
                                }


                            %>

                        </div>         
                    </div>	

                </div>	
                <!-- left side end -->	              	


                <!-- footer start -->
                <div id="footer" style="width:1100px; margin-top:30px;">				
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