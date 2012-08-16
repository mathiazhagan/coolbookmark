<%-- 
    Document   : exactsearch
    Created on : Jun 27, 2012, 6:09:45 PM
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
    <%--    <s:form action="searchbyref" >
            <s:textfield name="referenceId" label="Enter Reference Id:"/>
            <s:submit value="find"/>
        </s:form>  ---%>


        <s:form action="categorysearch">
            <select  name="category">
                <option value="invalid" >(please select a Category)</option>
              
                    <option value="A" >Freehold Businesses  </option>
                    <option value="B" >Driving School</option>
                    <option value="C" >Cafes, Take-Aways And Fish And Chips</option>
                    <option value="D" >Cards, Gifts and Video Shops </option>
                    <option value="E" >Clothing and Boutiques</option>
                    <option value="F" >Day Nurseries and Child Care</option>
                    <option value="G" >Dry Cleaners and Launderettes</option>
                    <option value="H" >Florists and Pet Shops</option>
                    <option value="I" >Garage, Spares and MOT Stations</option>
                    <option value="J" >Grocers and Green Grocers</option>
                    <option value="K" >Hair and Beauty Salons</option>
                    <option value="L" >Hardware and D.I.Y.</option>
                    <option value="M" >Investments</option>
                    <option value="M" >Gloucestershire</option>
                    <option value="O" >Miscellaneous</option>
                    <option value="P" >Newsagents </option>
                    <option value="Q" >Off-Licences</option>
                    <option value="R" >Post Offices</option>
                    <option value="S" >Public Houses and Snooker/Pool Clubs</option>
                    <option value="T" >Rest Homes/Hotels</option>
                    <option value="U" >Restaurants and Wine Bars </option>
                    <option value="V" >Sandwich Bars</option>
                    <option value="W" >Sports Shops</option>
                    <option value="X" >Stop Press</option>
                    <option value="Y" >Vacant Shop</option>
                    <option value="Z" >Warehouses and Industrial </option>

            </select>
            <s:submit value="search"/>
                </s:form>
                </body>
                </html>
