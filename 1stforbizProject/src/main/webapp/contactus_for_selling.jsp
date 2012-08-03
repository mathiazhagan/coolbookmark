<%-- 
    Document   : contactus_for_selling
    Created on : Jul 1, 2012, 9:36:26 AM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head theme="jquery"/>
        <sj:head  jqueryui="true" jquerytheme="flick"/>

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
                <div class="about_us">

                    <div class="t1"> Pegasus Business Sales; Contact us to Sell your business. </div><br />

                    <img src="images/left-hr.png"/>	
                    <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                    <div class="t1"> Your Business Details </div>		<br />

                    <div class="t18"> If you are considering selling through us immediately, complete the <a href="ImmediateSelling.jsp"> form here.</a>. </div> 

                    <div class="t18">Alternatively if you require a form sent to you by post then please fill in the following form and select the correct option from the, <b>Contact Options</b> box, or you can select any other option from there.</div> <br /><br />

                    <!-- form -->
                    <div class="sell_form">

                        <form  action="contactforsell.action" method="post" >

                            <div class="t18">Title<font color="red">*</font> </div>

                            <select name="RTitle" class="drp_bx">

                                <option value="Mr" >Mr</option>
                                <option value="Mrs" >Mrs</option>
                                <option value="Miss" >Miss</option>
                                <option value="Ms" >Ms</option>
                                <option value="Dr" >Dr</option>

                            </select>

                            <div class="t18">First Name<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="RFirstName" size="30" maxlength="20" value="" /><br />

                            <div class="t18">Surname<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="RSurname" size="30" maxlength="20" value="" /><br />

                             <div class="t18">Email<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="REmail" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Business/Company Name<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="RCompName" size="30" maxlength="30" VALUE="" /><br />

                            <div class="t18">House No/Name<font color="red"></font> </div>

                            <input type="text" class="txt_bx" name="RCompNo" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Road or Street name<font color="red"></font> </div>

                            <input type="text" class="txt_bx" name="RRoad" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Town<font color="red"></font> </div>

                            <input type="text" class="txt_bx" name="RTown" size="30" maxlength="30" value="" /><br />

                            <div class="t18">County<font color="red"></font> </div>

                            <select name="RCountry" class="drp_bx">

                                <option value="invalid" >(please select a county)</option>
                                <optgroup label="England">
                                    <option value="London" >London   </option>
                                    <option value="Bedfordshire" >Bedfordshire</option>
                                    <option value="Berkshire" >Berkshire</option>
                                    <option value="Buckinghamshire" >Buckinghamshire </option>
                                    <option value="Cambridgeshire" >Cambridgeshire</option>
                                    <option value="Cheshire" >Cheshire</option>
                                    <option value="Cornwall" >Cornwall</option>
                                    <option value="Cumberland" >Cumberland</option>
                                    <option value="Derbyshire" >Derbyshire</option>
                                    <option value="Devon" >Devon </option>
                                    <option value="Dorset" >Dorset</option>
                                    <option value="Durham" >Durham</option>
                                    <option value="Essex" >Essex</option>
                                    <option value="Gloucestershire" >Gloucestershire</option>
                                    <option value="Hampshire" >Hampshire</option>
                                    <option value="Herefordshire" >Herefordshire </option>
                                    <option value="Hertfordshire" >Hertfordshire</option>
                                    <option value="Huntingdonshire" >Huntingdonshire</option>
                                    <option value="Kent" >Kent</option>
                                    <option value="Lancashire" >Lancashire</option>
                                    <option value="Leicestershire" >Leicestershire </option>
                                    <option value="Lincolnshire" >Lincolnshire</option>
                                    <option value="Middlesex" >Middlesex</option>
                                    <option value="Norfolk" >Norfolk</option>
                                    <option value="Northamptonshire" >Northamptonshire</option>
                                    <option value="Northumberland" >Northumberland </option>
                                    <option value="Nottinghamshire" >Nottinghamshire</option>
                                    <option value="Oxfordshire" >Oxfordshire</option>
                                    <option value="Rutland" >Rutland</option>
                                    <option value="Shropshire" >Shropshire</option>
                                    <option value="Somerset" >Somerset</option>
                                    <option value="Staffordshire" >Staffordshire </option>
                                    <option value="Suffolk" >Suffolk</option>
                                    <option value="Surrey" >Surrey</option>
                                    <option value="Sussex" >Sussex</option>
                                    <option value="Warwickshire" >Warwickshire</option>
                                    <option value="Westmorland" >Westmorland</option>
                                    <option value="Wiltshire" >Wiltshire </option>
                                    <option value="Worcestershire" >Worcestershire</option>
                                    <option value="Yorkshire" >Yorkshire</option>
                                </optgroup>
                                <optgroup label="Wales">
                                    <option value="Anglesey" >Anglesey</option>
                                    <option value="Brecknockshire" >Brecknockshire </option>
                                    <option value="Caernarfonshire" >Caernarfonshire</option>
                                    <option value="Carmarthenshire" >Carmarthenshire</option>
                                    <option value="Cardiganshire" >Cardiganshire</option>
                                    <option value="Denbighshire" >Denbighshire</option>
                                    <option value="Flintshire" >Flintshire </option>
                                    <option value="Glamorgan" >Glamorgan</option>
                                    <option value="Merioneth" >Merioneth</option>
                                    <option value="Monmouthshire" >Monmouthshire</option>
                                    <option value="Montgomeryshire" >Montgomeryshire</option>
                                    <option value="Pembrokeshire" >Pembrokeshire </option>
                                    <option value="Radnorshire" >Radnorshire</option>
                                </optgroup>
                                <optgroup label="Scotland">
                                    <option value="Aberdeenshire" >Aberdeenshire</option>
                                    <option value="Angus" >Angus</option>
                                    <option value="Argyllshire" >Argyllshire </option>
                                    <option value="Ayrshire" >Ayrshire</option>
                                    <option value="Banffshire" >Banffshire</option>
                                    <option value="Berwickshire" >Berwickshire</option>
                                    <option value="Buteshire" >Buteshire</option>
                                    <option value="Cromartyshire" >Cromartyshire</option>
                                    <option value="Caithness" >Caithness</option>
                                    <option value="Clackmannanshire" >Clackmannanshire</option>
                                    <option value="Dumfriesshire" >Dumfriesshire</option>
                                    <option value="Dunbartonshire" >Dunbartonshire</option>
                                    <option value="East Lothian" >East Lothian </option>
                                    <option value="Fife" >Fife</option>
                                    <option value="Inverness-shire" >Inverness-shire</option>
                                    <option value="Kincardineshire" >Kincardineshire</option>
                                    <option value="Kinross" >Kinross</option>
                                    <option value="Kirkcudbrightshire" >Kirkcudbrightshire </option>
                                    <option value="Lanarkshire" >Lanarkshire</option>
                                    <option value="Midlothian" >Midlothian</option>
                                    <option value="Morayshire" >Morayshire</option>
                                    <option value="Nairnshire" >Nairnshire</option>
                                    <option value="Orkney" >Orkney</option>
                                    <option value="Peeblesshire" >Peeblesshire </option>
                                    <option value="Perthshire" >Perthshire</option>
                                    <option value="Renfrewshire" >Renfrewshire</option>
                                    <option value="Ross-shire" >Ross-shire</option>
                                    <option value="Roxburghshire" >Roxburghshire</option>
                                    <option value="Selkirkshire" >Selkirkshire </option>
                                    <option value="Shetland" >Shetland</option>
                                    <option value="Stirlingshire" >Stirlingshire</option>
                                    <option value="Sutherland" >Sutherland</option>
                                    <option value="West Lothian" >West Lothian</option>
                                    <option value="Wigtownshire" >Wigtownshire</option>
                                </optgroup>
                                <optgroup label="Northern Ireland">
                                    <option value="Antrim" >Antrim</option>
                                    <option value="Armagh" >Armagh</option>
                                    <option value="Down" >Down</option>
                                    <option value="Fermanagh" >Fermanagh </option>
                                    <option value="Londonderry" >Londonderry</option>
                                    <option value="Tyrone" >Tyrone</option>
                                </optgroup>
                            </select>

                            <div class="t18">Postal code<font color="red"></font> </div>

                            <input type="text" class="txt_bx" name="RPostalCode" size="30" maxlength="10" value="" /><br />

                            <div class="t18">Telephone<font color="red"></font> </div>

                            <input type="text" class="txt_bx" name="RPhone" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Work Telephone</div>

                            <input type="text" class="txt_bx" name="RWorkPhone" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Mobile </div>

                            <input type="text" class="txt_bx" name="RMobile" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Fax </div>

                            <input type="text" class="txt_bx" name="RFax" size="30" maxlength="30" value="" /><br />

                           
                            <div class="t18">Contact Options<font color="red">*</font> </div>

                            <select name="RContact" class="select_box" style="width:380px" size="5">
                                <option value="I am thinking of selling. Please send me a form by post" selected>I am thinking of selling. Please send me a form by post</option>
                                <option value="I want a valuer to call (instruction fee payable)" >I want a valuer to call (instruction fee payable)</option>
                                <option value="I require a professional valuation" >I require a professional valuation</option>
                                <option value="I want to discuss my options by phone" >I want to discuss my options by phone</option>
                                <option value="I have a buyer now and require advice" >I have a buyer now and require advice</option>                                
                            </select> <br />

                            <input type="submit" value="Contact" name="type" class="sub_button button"/>

                                <input type="reset" value="Reset" name="type" class="rst_button button"/>

                                    </form><br /><br /><br />
                                    </div>

                                    </div>	
                                    <!-- left side end -->	



                                    <!-- right content start -->		
                                    <div class="right" style="margin:-1000px 0 0 840px">

                                        <div class="right1">
                                            <a href="#"> <img src="images/savemoney.gif" width="223" height="245"/></a>	
                                        </div>

                                        <div class="right2">
                                            <a href="search_map.jsp"> <img src="images/map.gif" width="217" height="292"/></a>
                                            <a href="search_map.jsp"> <img src="images/map-bottom.png"/></a>
                                        </div>

                                    </div>
                                    <!-- right content end -->		


                                    <!-- footer start -->
                                     <div id="footer" style="width:1100px">				
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
