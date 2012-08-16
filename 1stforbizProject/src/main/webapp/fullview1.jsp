<%@page import="com.model.Sell"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title> 1stforbiz </title>

        <%Sell onesell=(Sell)session.getAttribute("onesell");%>


        <script language="JavaScript1.1">
            <!--

            //Pixelating Image slideshow
            //Copyright Dynamic Drive 2001
            //Visit http://www.dynamicdrive.com for this script

            //specify interval between slide (in mili seconds)
            var slidespeed=10000
            //specify images
            <% //String a = request.getParameter("referenceId");
            String a=onesell.getReferenceId();
                String s = a.substring(1, a.length() - 1);
                long s1 = Integer.parseInt(s);

            %>
                var slideimages=new Array(
            <%
                for (int i = 1; i <= 5; i++) {
                    String images = "imageretrieve" + i + ".action?referenceId=" + s1;

            %>
                "<%=images%>"
            <%
                if (5 != i) {
            %>,
            <%}%>
            <% }%>)



                //specify corresponding links
                //var slidelinks=new Array("http://1stforbiz.D.Mathiazhagan.cloudbees.net/","http://1stforbiz.D.Mathiazhagan.cloudbees.net/","http://1stforbiz.D.Mathiazhagan.cloudbees.net/","http://1stforbiz.D.Mathiazhagan.cloudbees.net/ ","http://1stforbiz.D.Mathiazhagan.cloudbees.net/ ")

                var imageholder=new Array()
                var ie55=window.createPopup
                for (i=0;i<slideimages.length;i++){
                    imageholder[i]=new Image()
                    imageholder[i].src=slideimages[i]
                }

                function gotoshow(){
                    window.location=slidelinks[whichlink]
                }

                //-->
        </script>


        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />
        <s:head theme="jquery"/>
        <sj:head jquerytheme="flick" jqueryui="true"/>
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
                <div class="content002" style="float:none">

                    <div class="content003" style="float:none">

                        <div class="t1"> Pegasus Business Sales, Listings. </div><br/>





                        <img src="images/left-content-top.png" width="760" height="32" />
                        <div class="t10"> Businesses For Sale Reference: <%out.print(onesell.getReferenceId());%>(<%out.print(onesell.getBCategory());%> ) </div>

                        <h5 style="text-align:center;"><%out.print(onesell.getBAdverHeading());%>(<%out.print(onesell.getBCategory());%>)</h5>

                        <div class="list">

                            <a href="javascript:gotoshow()"><img alt="Loading...." src="imageretrieve1.action?id=6667" width="640" height="480" name="slide" style="filter:progid:DXImageTransform.Microsoft.Pixelate(MaxSquare=15,Duration=1)"/></a>

                            <script language="JavaScript1.1">
                                <!--
                                var whichlink=0
                                var whichimage=0
                                var pixeldelay=(ie55)? document.images.slide.filters[0].duration*1000 : 0
                                function slideit(){
                                    if (!document.images) return
                                    if (ie55) document.images.slide.filters[0].apply()
                                    document.images.slide.src=imageholder[whichimage].src
                                    if (ie55) document.images.slide.filters[0].play()
                                    whichlink=whichimage
                                    whichimage=(whichimage<slideimages.length-1)? whichimage+1 : 0
                                    setTimeout("slideit()",slidespeed+pixeldelay)
                                }
                                slideit()

                                //-->
                            </script>



                          
                        </div> <br /><br />

                        <div class="t2">Business Description</div><br/>

                        <p style="margin:0 50px 0 50px;font-size:13px;"><%out.print(onesell.getBBusinessDesc());%></p>

                        <br />

                        <div class="t2">Business Summery</div><br />

                        <h1  style="color: #6687a8;"> Reference : </h1> 

                        <div class="list_id" style="color: #6687a8;" ><%out.print(onesell.getReferenceId());%> <font size="1px">(please quote this number when contacting us, by phone)</font></div> <br /><br /> 

                        <h1  style="color: #6687a8;"> Price : </h1>

                        <div class="list_price"  style="color: #6687a8;"><%out.print(onesell.getBSalePrice());%></div>

                    </div>

                    <div class="content_error"><s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/></div>

                    <div class="content004" style="float:none">

                        <div class="content_lt" style="float:none; margin:100px 0 0 30px;">

                            <div class="t2">Contact &amp; Request Information</div>

                            <div class="list_form">

                                <form  action="requestinfo.action" method="post" >

                                    <div class="t18">Title<font color="red">*</font> </div>

                                    <select name="title" class="drp_bx1">
                                        <option value="Mr" >Mr</option>
                                        <option value="Mrs" >Mrs</option>
                                        <option value="Miss" >Miss</option>
                                        <option value="Ms" >Ms</option>
                                        <option value="Dr" >Dr</option>                                
                                    </select>

                                    <div class="t18">First Name<font color="red">*</font> </div>

                                    <input type="text" class="txt_bx1" name="fname" size="30" maxlength="20" value=""/>

                                    <div class="t18">Surname<font color="red">*</font> </div>

                                    <input type="text" class="txt_bx1" name="sname" size="30" maxlength="20" value=""/>

                                    <div class="t18">E-mail<font color="red">*</font> </div>

                                    <input type="text" name="email" class="txt_bx1" size="30" maxlength="100" value=""/>

                                    <div class="t18">Telephone<font color="red">*</font> </div>

                                    <input type="text" name="telephone" class="txt_bx1" size="30" maxlength="100" value=""/>

                                    <div class="t18"> Work Telephone </div>

                                    <input type="text" name="WTelephone" class="txt_bx1" size="30" maxlength="100" value=""/>

                                    <div class="t18">Fax</div>

                                    <input type="text" name="fax" class="txt_bx1" size="30" maxlength="100" value=""/>

                                    <div class="t18">House No/Name<font color="red">*</font> </div>

                                    <input type="text" class="txt_bx1" name="houseNo" size="30" maxlength="30" value=""/>

                                    <div class="t18">Road or Street name<font color="red">*</font> </div>

                                    <input type="text" class="txt_bx1" name="road" size="30" maxlength="30" value=""/>

                                    <div class="t18">Town<font color="red">*</font> </div>

                                    <input type="text" class="txt_bx1" name="town" size="30" maxlength="30" value=""/>

                                    <div class="t18">County<font color="red">*</font> </div>

                                    <select  class="drp_bx1" name="country">
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

                                    <input type="text" class="txt_bx1" name="postcode" size="30" maxlength="10" value=""/>	

                                    <div class="t18">Reference</div>

                                    <input type="text" class="txt_bx1" name="referenceId" size="30" maxlength="10" value="<%out.print(onesell.getReferenceId());%>"/>


                                        <input type="submit" value="Request Information" name="type" class="sub_button1 button "/>

                                        <input type="reset" value="Reset" name="type" class="rst_button1 button"/>	<br/><br/><br/><br/><br/>
                                    </form>


                                </div>						

                            </div>						


                            <div class="content_rt" style="margin:-820px 0 0 550px;">

                                <div class="t2">Tell a Friend and Other Links</div> <br/><br/>

                                <form  action="tofriend.action" method="post">

                                    <div class="t18">Your Name<font color="red">*</font> </div>

                                    <input type="text" name="f_name" class="txt_bx1" size="40" maxlength="100" value=""/>

                                    <div class="t18">Your E-mail Address<font color="red">*</font> </div>

                                    <input type="text" name="y_email" class="txt_bx1" size="40" maxlength="100" value=""/>

                                    <div class="t18">Friends E-mail Address<font color="red">*</font> </div>

                                    <input type="text" name="f_email" class="txt_bx1" size="40" maxlength="100" value=""/>

                                    <div class="t18">Reference</div>

                                    <input type="text" class="txt_bx1" name="referenceId" size="30" maxlength="10" value="<%out.print(onesell.getReferenceId());%>"/>

                                    <input type="submit" value="Tell Your Friend" name="type" class="sub_button1 button"/>

                                    <input type="reset" value="Reset" name="type" class="rst_button1 button"/>	<br /><br/><br/><br/><br/>

                                </form>



                                <div class="t2">| <a href="contactus.jsp">Contact Us</a> | <s:url id="url" action="addtolist">
                                    <s:param name="referenceId" value="referenceId"/>
                                </s:url>
                                <s:a href="%{url}">Add to MyList</s:a> | | <a href="index2.jsp">Search</a> | </div>

                        </div>

                    </div>

                </div><br/>
                <!-- left side end -->	


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