<%-- 
    Document   : businessvaluationform
    Created on : Jun 30, 2012, 9:29:57 PM
    Author     : Naren
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

        <link rel="stylesheet" type="text/css" href="style/style.css" />

    </head>

    <body>

        <!--container start -->
        <div id="container101">

            <!--header start -->
            <div class="header">
                <img src="images/header-bg.png" />	
            </div>
            <!--header end -->	

            <!--navigation start -->
            <div class="navigation">

                <ul>

                    <li><a href="login.jsp" class="active">Home</a></li>
                   

                </ul>		

                <!--                <div class="t9">2</div>			-->




            </div>
            <!--navigation end -->

            <div class="green">
                <img src="images/green-line.png"/>	
            </div>

           

            <!--content start -->
            <div class="content5234">

                <!-- left side start -->
                <div class="form343">

                    <div class="t1"> Pegasus Business Sales: Admin Login From </div><br />

                    <img src="images/left-hr.png"/>	<br /><br />
                    
                    <img src="images/left-content-top.png" width="540" height="32"/>
                    <div class="t10"> Please Login Using your details </div>						

                    <!-- form -->
                    <div class="sell_form1" align="center" >

                        
                        <div>
                            <form action="login.action" method="post" >
                            <div class="t100">User Name</div>
                            <div class="txt_box"><input type="text" name="username" /></div>
                           
                            <div class="t100">Password</div>
                            <div class="txt_box"><input type="password" name="password" /></div>
                           
                         
                            <div class="txt_box" style="margin-top:20px;"> <input type="submit" value="Login" class="button_image" /></div>
                                                                       
                        </form>
                          <s:actionmessage theme="jquery"/>  <s:actionerror theme="jquery"/> 
                        </div>
                      
                    </div>
                </div>	
                <!-- left side end -->	
 


            </div>
            <!-- content end -->

            <div class="green1">
                <img src="images/green-line.png"/>	
            </div>

            <!-- footer start -->
            <div id="footer">			
                <div class="bottom_link">
                   				
                </div>

                <div class="rights"> copyright &copy;2008  Pegasus Business Sales All rights reserved. </div>
            </div>		
            <!-- footer end -->	

        </div>
        <!--container end -->
    </body>
</html>
