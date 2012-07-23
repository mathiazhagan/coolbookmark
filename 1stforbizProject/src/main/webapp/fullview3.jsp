<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <%
  List<String> l1 = new ArrayList<String>();
   
    %>
    <%=l1%>

<html xmlns="http://www.w3.org/1999/xhtml">
    
   
    

    <head>

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
            <div class="content001">

                <!-- left side start -->
                <div class="content002">

                    <div class="content003">

                        <div class="t1"> Pegasus Business Sales, Listings. </div>

                        <img src="images/left-hr.png"/>	

                        <br />

                        <img src="images/left-content-top.png" width="760" height="32" />
                        <div class="t10"> Businesses For Sale Reference:  <s:iterator value="sresult"><s:property value="referenceId"/></s:iterator> (<s:iterator value="sresult"><s:property value="BCategory"/></s:iterator> ) </div>

                        <h5><s:iterator value="sresult"><s:property value="BAdverHeading"/></s:iterator> (<s:iterator value="sresult"><s:property value="BCategory"/></s:iterator>)</h5>

             
                        
                        <div class="list"><script language="JavaScript1.1"> 
                            
                            var slidespeed=3000


//specify images
var slideimages=new Array(
<%for(int i = 0; i < l1.size(); i++) 
{
       String image_path = "MyFolder/"+l1+"/"+l1.get(i);           
%>
       "<%=image_path%>"
       <%if (l1.size()-1 != i)          
       {
       %>
       ,
       <%
       }
       %>
<%
}
%>)
                            
                            
                            <img src="MyFolder/<s:property value='referenceId'/>/<s:property value='referenceId'/>.jpg" width="640" height="480"/>

                </script>        </div> <br /><br />
                

                        <div class="t2">Business Description</div>

                        <h1><s:iterator value="sresult"><s:property value="BBusinessDesc"/></s:iterator></h1>

                        <br /><br />

                        <div class="t2">Business Summery</div><br />

                        <h1> Reference : </h1> 

                        <div class="list_id"><s:iterator value="sresult"><s:property value="referenceId"/></s:iterator> <font size="1px">(please quote this number when contacting us, by phone)</font></div> <br /><br /> 

                        <h1> Price : </h1>

                        <div class="list_price"><s:iterator value="sresult"><s:property value="BSalePrice"/></s:iterator></div>

                    </div>

                    <hr />

                    <div class="content004">

                        <div class="content_lt">

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

                                    <input type="text" class="txt_bx1" name="fname" size="30" maxlength="20" value="">

                                        <div class="t18">Surname<font color="red">*</font> </div>

                                        <input type="text" class="txt_bx1" name="sname" size="30" maxlength="20" value="">

                                            <div class="t18">E-mail<font color="red">*</font> </div>

                                            <input type="text" name="email" class="txt_bx1" size="30" maxlength="100" value="">

                                                <div class="t18">Telephone<font color="red">*</font> </div>

                                                <input type="text" name="telephone" class="txt_bx1" size="30" maxlength="100" value="">

                                                    <div class="t18"> Work Telephone </div>

                                                    <input type="text" name="WTelephone" class="txt_bx1" size="30" maxlength="100" value="">

                                                        <div class="t18">Fax</div>

                                                        <input type="text" name="fax" class="txt_bx1" size="30" maxlength="100" value="">

                                                            <div class="t18">House No/Name<font color="red">*</font> </div>

                                                            <input type="text" class="txt_bx1" name="houseNo" size="30" maxlength="30" value="">

                                                                <div class="t18">Road or Street name<font color="red">*</font> </div>

                                                                <input type="text" class="txt_bx1" name="road" size="30" maxlength="30" value="">

                                                                    <div class="t18">Town<font color="red">*</font> </div>

                                                                    <input type="text" class="txt_bx1" name="town" size="30" maxlength="30" value="">

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

                                                                        <input type="text" class="txt_bx1" name="referenceId" size="30" maxlength="10" value="<s:iterator value="sresult"><s:property value="referenceId"/></s:iterator>">


                                                                            <input type="submit" value="Request Information" name="type" class="sub_button1">

                                                                                <input type="reset" value="Reset" name="type" class="rst_button1">	<br /><br /><br /><br /><br />
                                                                                    </form>
                                                                                    <hr />

                                                                                    </div>						

                                                                                    </div>						


                                                                                    <div class="content_rt">

                                                                                        <div class="t2">Tell a Friend and Other Links</div> <br /><br />

                                                                                        <form  action="tofriend.action" method="post">

                                                                                            <div class="t18">Your Name<font color="red">*</font> </div>

                                                                                            <input type="text" name="f_name" class="txt_bx1" size="40" maxlength="100" value="">

                                                                                                <div class="t18">Your E-mail Address<font color="red">*</font> </div>

                                                                                                <input type="text" name="y_email" class="txt_bx1" size="40" maxlength="100" value="">

                                                                                                    <div class="t18">Friends E-mail Address<font color="red">*</font> </div>

                                                                                                    <input type="text" name="f_email" class="txt_bx1" size="40" maxlength="100" value="">

                                                                                                        <div class="t18">Reference</font> </div>

                                                                                                        <input type="text" class="txt_bx1" name="referenceId" size="30" maxlength="10" value="<s:iterator value="sresult"><s:property value="referenceId"/></s:iterator>">

                                                                                                            <input type="submit" value="Tell Your Friend" name="type" class="sub_button1">

                                                                                                                <input type="reset" value="Reset" name="type" class="rst_button1">	<br /><br /><br /><br /><br />

                                                                                                                    </form>

                                                                                                                    <hr />

                                                                                                                    <div class="t2">| <a href="contactus.jsp">Contact Us</a> | <s:url id="url" action="addtolist">
                                                                                                                            <s:param name="referenceId" value="referenceId"/>
                                                                                                                        </s:url>
                                                                                                                        <s:a href="%{url}">Add to MyList</s:a> | | <a href="index2.jsp">Search</a> | </div>

                                                                                                                    </div>

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