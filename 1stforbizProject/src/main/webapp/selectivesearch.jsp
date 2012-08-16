<%-- 
    Document   : selectivesearch
    Created on : Jun 29, 2012, 9:50:08 PM
    Author     : D.Mathiazhagan
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
        <s:form action="selectivesearch">
            
            <table border="0" width="100%">

                <tr>
                    <td>
                        <font style="font-weight:bold; font-size:120%" color="black">Max Price:</font>
                    </td>
                    <td>
                        <input type="text" name="price" value="" style="width: 140px" maxlength="15" class="input-box"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <font style="font-weight:bold; font-size: 120%" color="black">Sector:</font>
                    </td>
                    <td>
                        <select name="category" size="1" style="width: 140px" class="select-box">



                            <option value="A" >Freehold Businesses</option>

                            <option value="B"> Driving School</option>

                            <option value="C">Cafes, Take-Aways And Fish And Chips</option>

                            <option value="D">Cards, Gifts and Video Shops</option>

                            <option value="E">Clothing and Boutiques</option>

                            <option value="F">Day Nurseries and Child Care</option>

                            <option value="G">Dry Cleaners and Launderettes</option>

                            <option value="H">Florists and Pet Shops</option>

                            <option value="I">Garage, Spares and MOT Stations</option>

                            <option value="J">Grocers and Green Grocers</option>

                            <option value="K">Hair and Beauty Salons</option>

                            <option value="L">Hardware and D.I.Y.</option>

                            <option value="M">Investments</option>

                            <option value="N">Miscellaneous</option>

                            <option value="O">Gloucestershire </option>

                            <option value="P">Newsagents</option>

                            <option value="Q">Off-Licences</option>

                            <option value="R">Post Offices</option>

                            <option value="S">Public Houses and Snooker/Pool Clubs</option>

                            <option value="T">Rest Homes/Hotels</option>

                            <option value="U">Restaurants and Wine Bars</option>

                            <option value="V">Sandwich Bars</option>

                            <option value="W">Sports Shops</option>

                            <option value="X">Stop Press</option>

                            <option value="Y">Vacant Shop</option>

                            <option value="Z">Warehouses and Industrial</option>


                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <font style="font-weight:bold; font-size: 120%" color="black">Region:</font>
                    </td>
                    <td>
                        <select name="region" size="1" style="width: 140px" class="select-box">


                            <option value="Buckinghamshire">Buckinghamshire</option>

                            <option value="Edgeware">Edgeware</option>

                            <option value="Essex">Essex</option>

                            <option value="Hackney, London">Hackney, London</option>

                            <option value="Hampshire">Hampshire</option>

                            <option value="Hertfordshire">Hertfordshire</option>

                            <option value="Ilford, Essex">Ilford, Essex</option>

                            <option value="Kent">Kent</option>

                            <option value="Leicester">Leicester</option>

                            <option value="London">London</option>

                            <option value="Middlesex">Middlesex</option>

                            <option value="Rainham, Essex">Rainham, Essex</option>

                            <option value="Richmond, Surrey">Richmond, Surrey</option>

                            <option value="Shad Thames, London">Shad Thames, London</option>

                            <option value="Sheernes, Kent">Sheernes, Kent</option>

                            <option value="Streatham, London">Streatham, London</option>

                            <option value="Surbiton, Surrey">Surbiton, Surrey</option>

                            <option value="Surrey">Surrey</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                <center>
                    <input type="text" name="word" class="input-box" size="35"/>
                </center>
            </td>
        </tr>
        <tr>
            <td colspan="2">
        <center>
            <input type="submit" name="type" value="Search"/>
            <input type="Reset"  name="type" value="Reset"/>
            <a href="" title="help to understand the search function" onclick="window.open('http://www.1stforbiz.com/search_help.html','mywindow','width=400,height=250,left=100, top=100')">help</a>
        </center>                                                                                                                          
    </td>
</tr>
</table>
</s:form>  

</body>
</html>
