<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head/>

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
                    <li><a href="mylist.jsp">My list</a></li>

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
            <div class="content4">

                <!-- left side start -->
                <div class="form2">

                    <div class="t1"> Pegasus Business Sales: Immediate Sale From </div><br />

                    <img src="images/left-hr.png"/>	<br /><br />
                    <font color="red"> <s:actionmessage/> </font>
                    <div class="t1"> Your Business Details </div>						

                    <!-- form -->
                    <div class="sell_form">

                        <form  action="Listing.action" method="post" >

                            <div class="t18">Title<font color="red">*</font> </div>

                            <select name="BTitle" class="drp_bx">

                                <option value="Mr" >Mr</option>
                                <option value="Mrs" >Mrs</option>
                                <option value="Miss" >Miss</option>
                                <option value="Ms" >Ms</option>
                                <option value="Dr" >Dr</option>

                            </select>

                            <div class="t18">First Name<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BFirstName" size="30" maxlength="20" value="" /><br />

                            <div class="t18">Surname<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BSurname" size="30" maxlength="20" value="" /><br />

                            <div class="t18">Business/Company Name<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BComapnyName" size="30" maxlength="30" VALUE="" /><br />

                            <div class="t1"> Business Address Details</div>	<br />

                            <div class="t18">House No/Name<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BHouseNo" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Road or Street name<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BRoadName" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Town<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BTown" size="30" maxlength="30" value="" /><br />

                            <div class="t18">County<font color="red">*</font> </div>

                            <select name="BCountry" class="drp_bx">

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

                            <div class="t18">Postal code<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BPostalCode" size="30" maxlength="10" value="" /><br />

                            <div class="t18">Telephone<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BTelephone" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Work Telephone</div>

                            <input type="text" class="txt_bx" name="BWorkPhone" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Mobile </div>

                            <input type="text" class="txt_bx" name="BMobile" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Fax </div>

                            <input type="text" class="txt_bx" name="BFax" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Email<font color="red">*</font> </div>

                            <input type="text" class="txt_bx" name="BEmail" size="30" maxlength="30" value="" /><br />

                            <div class="t18">Website Url </div>

                            <input type="text" class="txt_bx" name="BSiteUrl" size="30" maxlength="100" value=""/>


                            <div class="t1"> Your Home Address Details </div> <br />

                            <div class="t18"> House No/Name </div>

                            <input type="text" class="txt_bx" name="PHouseNo" size="30" maxlength="30" value=""/>

                            <div class="t18"> Road or Street name </div>

                            <input type="text" class="txt_bx" name="PRoadName" size="30" maxlength="30" value=""/>

                            <div class="t18"> Town </div>

                            <input type="text" class="txt_bx" name="PTown" size="30" maxlength="30" value=""/>

                            <div class="t18"> County </div>

                            <select name="PCountry" class="drp_bx">

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

                            <div class="t18"> Postal code </div>

                            <input type="text" class="txt_bx" name="PPostalCode" size="30" maxlength="10" value=""/>

                            <div class="t1"> Your Business Details </div>	<br />

                            <div class="t18"> Business Type </div>

                            <input type="text" name="BBusinessType" class="txt_bx" size="30" maxlength="100" value=""/>

                            <div class="t18"> Trading Days/Hours </div>

                            <input type="text" class="txt_bx" name="BTradingHours" size="30" maxlength="100" value=""/>

                            <div class="t18"> Location -<font size="1pt"> Describe the area around your property - <i>maxlength 250</i></font> </div>

                            <textarea name="BLocationDesc" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea>

                            <div class="t18"> Description -<font size="1pt"> Describe size and design layout of property exterior and interior with current repair condition - <i>maxlength 250</i></font> </div>

                            <textarea name="BBusinessDesc" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea>

                            <div class="t18"> Business -<font size="1pt"> State takings and breakdown, gross profit percent, net profit, potential, reason for sale, etc. - <i>maxlength 250</i></font> </div>

                            <textarea name="BBusinessDetails" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea>

                            <div class="t18"> List of Equipment -<font size="1pt"> to be included in sale - <i>maxlength 250</i></font> </div>

                            <textarea name="BEquipList" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea>

                            <div class="t18"> Accommodation  -<font size="1pt"> Decribe if separate access, how many floors, rooms, sizes,etc. - <i>maxlength 250</i></font> </div>

                            <textarea name="BAccomDesc" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea>

                            <div class="t18"> Tenure  -<font size="1pt"> State Freehold or Leasehold - If Leasehold please state date lease commenced, original length of the lease, current rent, rent review frequency and current allowed use on your lease. - <i>maxlength 250</i></font> </div>

                            <textarea name="BTenure" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea>

                            <div class="t18"> Viewing Arrangements<font size="1pt">- <i>maxlength 250</i></font> </div>

                            <textarea name="BViewArrang" maxlength="250" onkeyup="return ismaxlength(this)" class="input_box"></textarea> <br /><br />

                            <div class="t18"> Business Rates and Rateable Value </div>

                            <input type="text" class="txt_bx" name="BRates" size="30" maxlength="100" value=""/>  

                            <div class="t18"> Current Average Weekly Takings </div>

                            <input type="text" class="txt_bx" name="BCurrentTakings" size="30" maxlength="100" value=""/>

                            <div class="t18"> Sale Price </div>

                            <input type="text" class="txt_bx" name="BSalePrice" size="30" maxlength="100" value=""/>

                            <div class="t18"> Advert Heading </div>

                            <input type="text" class="txt_bx" name="BAdverHeading" size="30" maxlength="100" value=""/>  

                            <div class="t18"> Category </div>

                            <select name="BCategory" class="drp_bx">


                                <option value="A" >Freehold Businesses</option>
                                <option value="B" >Driving School</option>
                                <option value="C" >Cafes, Take-Aways And Fish And Chips</option>
                                <option value="D" >Cards, Gifts and Video Shops</option>
                                <option value="E" >Clothing and Boutiques</option>
                                <option value="F" >Day Nurseries and Child Care</option>
                                <option value="G" >Dry Cleaners and Launderettes</option>
                                <option value="H" >Florists and Pet Shops</option>
                                <option value="I" >Garage, and MOT Stations</option>
                                <option value="J" >Grocers and Green Grocers</option>
                                <option value="K" >Hair and Beauty Salons</option>
                                <option value="L" >Hardware and D.I.Y</option>
                                <option value="M" >Investments</option>
                                <option value="N">Gloucestershire</option>
                                <option value="O" >Miscellaneous</option>
                                <option value="P" >Newsagents</option>
                                <option value="Q" >Off-Licences</option>
                                <option value="R" >Post Offices</option>
                                <option value="S" >Public Houses and Snooker/Pool Clubs</option>
                                <option value="T" >Rest Homes/Hotels</option>
                                <option value="U" >Restaurants and Wine Bars</option>
                                <option value="V" >Sandwich Bars</option>
                                <option value="W" >Sports Shops</option>
                                <option value="X" >Stop Press</option>
                                <option value="Y" >Vacant Shop</option>
                                <option value="Z" >Warehouses and Industrial</option>

                            </select>

                            <div class="t18"> Enter Reference Id </div>

                            <input type="text" class="txt_bx" name="referenceId" size="30" maxlength="100" value=""/>  

                            <br /> <br /> 

                            <input type="submit" value="Contact" name="type" class="sub_button"/>

                            <input type="reset" value="Reset" name="type" class="rst_button"/>

                        </form>
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
                        <li><a href="faqs.jsp">FAQ's</a></li>
                        <li><a href="tandc.jsp">Terms and Conditions</a></li>
                    </ul>			
                </div>

                <div class="rights"> copyright &copy;2008  Pegasus Business Sales All rights reserved. </div>
            </div>		
            <!-- footer end -->	

        </div>
        <!--container end -->
    </body>
</html>