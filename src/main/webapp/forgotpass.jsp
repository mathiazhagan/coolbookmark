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


        <title>Forgot Password</title>

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
                <div id="containerheader"  >Forget Password</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
              
             

                <div class="clear"></div>

                <div id="formcontainer">
                    <s:form action="forgotmail" theme="simple">
                        <div class="formrow">
                            <div class="form-label">Email_Address</div>
                            <div class="form-widget">  <s:textfield name="forgetemail" label="Enter Your Email Address" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow" >
                            <div class="form-widget"> <s:submit value="Send Mail" cssClass="button" /></div>
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
