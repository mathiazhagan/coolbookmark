<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">


        <title>Sign Up</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
       
    </head>
    <body>
        <div id="topnav">

        </div>

        <div id="mainbanner">

         

        </div>

        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader"  >Sign Up</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
               
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>
              

                <div id="formcontainer">
                    <s:form  action="signup" theme="simple">
                        <div class="formrow" >
                            <div class="form-label">User Name</div>
                            <div class="form-widget">  <s:textfield name="uname" label="User Name" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow" >
                            <div class="form-label">Email_Address</div>
                            <div class="form-widget"> <s:textfield name="email" label="Email id" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Password</div>
                            <div class="form-widget">  <s:password name="pwd" label="Password" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow" >
                            <div class="form-label">Confirm Password</div>
                            <div class="form-widget">   <s:password name="confirmpwd" label="Confirm Password"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div align="right">
                            <div class="form-widget" align="center" > <s:submit value="Register" cssClass="button" /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>
                </div>



                <div class="clear"></div>



            </div>     



        </div>
        <!--Container End-->
        <div></div>

    </body>
</html>
