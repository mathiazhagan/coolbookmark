<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">


        <title>Cool Bookmark</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <div id="topnav">

            <div id="toplogomenu">
                <div id="toplogomenu1">


                    <a href="index.jsp" id="toplogomenuselect">Home</a>

                </div>
                <div id="toplogomenu2">


                    <a href="signup.jsp" >Signup</a>
                    <a href="index.jsp" >Login</a>

                </div>
            </div>


        </div>

        <div id="mainbanner">



        </div>

        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">Login</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>

                <div class="buttonmenu">

                </div>

                <div class="clear"></div>


                <div id="formcontainer">
                
                    <s:form  action="login" theme="simple">
                        <div class="formrow" >
                            <div class="form-label">Email_Address</div>
                            <div class="form-widget"> <s:textfield name="email" label="Email id" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Password</div>
                            <div class="form-widget">  <s:password name="password" label="Password" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div >
                            <div align="right" > <s:submit value="Login"/></div>
                        </div>
                        <div class="formrow">
                            <div class="form-label"><a href="forgotpass.jsp" >Forget Password?</a></div>

                        </div>
                        <div class="clear"></div>
                    </s:form>
                </div>

                <s:text name="message.disp"/>

                <div class="clear"></div>




            </div>     



        </div>
        <!--Container End-->
        <div></div>

    </body>
</html>