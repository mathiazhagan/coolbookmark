<%-- 
    Document   : fullview
    Created on : Jun 28, 2012, 7:55:35 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <s:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <s:if test="sresult.size() > 0">
            <s:iterator value="sresult">
                <img src="MyFolder/<s:property value='referenceId'/>/<s:property value='referenceId'/>.jpg" height="500" width="500" align="center" style="margin: 0 5px"/></br>  

                Title  :<s:property value="BAdverHeading"/></br>
                Price :$<s:property value="BSalePrice"/></br>
                Ref Id :<s:property value="referenceId"/></br>
                Description:<s:property value="BPropDesc"/></br> 
            </s:iterator>
        </s:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           


            <s:form action="requestinfo">
                <s:actionmessage/>
                <table border="0" height="155px" width="100%">

                    <tr>
                        <td>                                
                            Title<font color="red">*</font>                                
                        </td>
                        <td>
                            <select name="title" class="select-box">
                                <option value="Mr" >Mr</option>
                                <option value="Mrs" >Mrs</option>
                                <option value="Miss" >Miss</option>
                                <option value="Ms" >Ms</option>
                                <option value="Dr" >Dr</option>                                
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            First Name<font color="red">*</font>                                
                        </td>
                        <td>
                            <input type="text" class="input-box" name="fname" size="30" maxlength="20" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Surname<font color="red">*</font>                            
                        </td>
                        <td>
                            <input type="text" class="input-box" name="sname" size="30" maxlength="20" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            E-mail<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" name="email" class="input-box" size="30" maxlength="100" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Telephone<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" name="telephone" class="input-box" size="30" maxlength="100" value="">
                        </td>
                    </tr> 
                    <tr>
                        <td>
                            Work Telephone
                        </td>
                        <td>
                            <input type="text" name="w_telephone" class="input-box" size="30" maxlength="100" value="">
                        </td>
                    </tr>                                 
                    <tr>
                        <td>
                            Fax
                        </td>
                        <td>
                            <input type="text" name="fax" class="input-box" size="30" maxlength="100" value="">
                        </td>
                    </tr> 

                    <tr>
                        <td>
                            House No/Name<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" class="input-box" name="house_no" size="30" maxlength="30" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Road or Street name<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" class="input-box" name="road" size="30" maxlength="30" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Town<font color="red">*</font>
                        </td>
                        <td >
                            <input type="text" class="input-box" name="town" size="30" maxlength="30" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>                                 
                            County<font color="red">*</font>
                        </td>
                        <td>                                    
                            <select  class="select-box" name="county">
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
                        </td>
                    </tr>    

                    <tr>
                        <td>
                            Postal code<font color="red">*</font>
                        </td>
                        <td >
                            <input type="text" class="input-box" name="postcode" size="30" maxlength="10" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ReferenceId<font color="red">*</font>                            
                        </td>
                        <td>
                            <input type="text" class="input-box" name="referenceId" size="30" maxlength="20" value="<s:iterator value="sresult"><s:property value="referenceId"/></s:iterator>">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                    <center>
                        <input type="submit" name="type" value="Request Information">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" name="type" value="reset">
                        <br>
                        ** Please only press the button once **
                    </center>
                    </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <font color="#990000" face="Arial, Helvetica, sans-serif">
                            Please Note: You are able to request information for all the listings that you have added to viewed from the 
                            <b>"My List"</b> on the top right corner. Add listings using <b>"add to My List"</b> link. 
                            </font>
                        </td>
                    </tr>
                </table>
            </s:form>

            <s:form action="tofriend" >
                <s:actionmessage/>
                <table border="0" height="100%" width="100%">

                    <tr>
                        <td>
                            Your Name<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" name="f_name" class="input-box" size="40" maxlength="100" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Your E-mail Address<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" name="y_email" class="input-box" size="40" maxlength="100" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Friends E-mail Address<font color="red">*</font>
                        </td>
                        <td>
                            <input type="text" name="f_email" class="input-box" size="40" maxlength="100" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ReferenceId<font color="red">*</font>                            
                        </td>
                        <td>
                            <input type="text" class="input-box" name="referenceId" size="30" maxlength="20" value="<s:iterator value="sresult"><s:property value="referenceId"/></s:iterator>">
                        </td>
                    </tr>
                 
                    <tr>
                        <td colspan="2">
                    <center>
                        <input type="submit" name="type" value="Tell your Friend">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" name="type" value="reset">
                        <br>
                        ** Please only press the button once **
                    </center>
                    </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr>  
                    <center>
                        <font style="font-size:12px">
                        <a href="http://www.1stforbiz.com/contact_us.jsp?contact_category=Business Sales" title="contact Pegasus Business Sales">| Contact Us|</a>
                        <a href="http://www.1stforbiz.com/listing.jsp?add_to_my_list=true&reference=I6991J" title="Add to my list">| Add to My List |</a>
                        <a href="http://www.1stforbiz.com" title="contact Pegasus Business Sales">| Search |</a>
                        </font>                                            
                    </center>
                    </td>
                    </tr>                                            
                    <tr>
                        <td>
                            <br>
                        </td>
                    </tr>
                </table>
            </s:form>
    </body>
</html>
