<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head theme="jquery"/>
        <sj:head  jqueryui="true" jquerytheme="flick"/>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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

                    <li><a href="adminpage.jsp">Home</a></li>
                    <li><a href="logout.action">Logout</a></li> 
                </ul>

            </div>
                    
                </div>
            </div>
            <!--navigation end -->    

            <!--content start -->
            <div class="content" style="border:1px solid #9a9b9d;">

                <!-- left side start -->
                <div class="about_us" style="float:none; margin:auto" >

                    <div class="t1"> Pegasus Business Sales:  New Reference Id is <font color="red">  <s:property value="referenceId"/></font><br/>
                        
                    </div><br />

                    <img src="images/left-hr.png"/>	<br />
                    <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                    <div class="t1"> Upload Images Below To finish </div><br />							

                    <!-- form -->
                    <div class="sell_form" style="float:none; margin:auto">

                        <form action="adminimagefile.action" method="post" enctype="multipart/form-data">

                            <s:hidden name="referenceNo" value="%{referenceNo}" />
                            <s:hidden name="referenceId"    value="%{referenceId}" />

                            <div class="t18">Image1 </div>

                            <s:file name="userImage1" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />

                            <div class="t18">Image2</div>

                            <s:file name="userImage2" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />

                            <div class="t18">Image3 </div>

                            <s:file name="userImage3" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />
                            <div class="t18">Image4</div>

                            <s:file name="userImage4" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />

                            <div class="t18">Image5 </div>

                            <s:file name="userImage5" cssClass="txt_bx_1"  size="30" maxlength="20" value="" /><br />


                            <input type="submit" value="Upload" name="type" class="sub_button button" style="margin-left:-100px;"/>

                            <input type="reset" value="Reset" name="type" class="rst_button button"/>


                        </form><br /><br />
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