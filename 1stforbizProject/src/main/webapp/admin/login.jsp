<%-- 
    Document   : businessvaluationform
    Created on : Jun 30, 2012, 9:29:57 PM
    Author     : D.Mathiazhagan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
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

                    <li><a href="login.jsp" class="active">Home</a></li>


                </ul>

            </div>
                    
                </div>
            </div>
            <!--navigation end -->

            <!--content start -->
            <div class="content" style="border:1px solid #9a9b9d;">

                <!-- left side start -->
                <div class="about_us" style="float:none; margin:auto" >

                    <div class="t1"> Pegasus Business Sales: Admin Login From </div><br />

                    <img src="images/left-hr.png"/>	<br /><br />

                    <img src="images/left-content-top.png" width="540" height="32"/>
                    <div class="t10" > Please Login Using your details </div>	<br/><br/>					
                    <s:actionmessage theme="jquery"/>  <s:actionerror theme="jquery"/> 
                    <!-- form -->
                    <div class="form3" style="float:none;">

                         <div style="float:none;">
                            <form action="login.action" method="post" >
                            <div class="t100">User Name</div>
                            <input type="text" class="txt_bx1" name="username" style="margin-left:-50px;" />
                           
                            <div class="t100">Password</div>
                            <input type="password" name="password"  class="txt_bx1"   style="margin-left:-50px;"/> 
                        <div class="txt_box" style="margin:20px 0 0 150px;"> <input type="submit" value="Login" class="button_image" /></div>
                                                                       
                        </form>
                        
                        </div>

                    </div>
                </div>	
                <!-- left side end -->	

                <!-- footer start -->
                <div id="footer" style="width:1100px">			
                    <div class="bottom_link">

                    </div>

                    <div class="rights" style="margin:20px 0 0 380px;">copyright &copy; 2008 Pegasus Business Sales All rights reserved</div>
                </div>		
                <!-- footer end -->	
            </div>
            <!-- content end -->
        </div>
        <!--container end -->
    </body>
</html>
