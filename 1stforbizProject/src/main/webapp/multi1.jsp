<%-- 
    Document   : multi1
    Created on : Jul 11, 2012, 12:44:10 PM
    Author     : D.Mathiazhagan
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<html>
 <head><title>Upload page</title></head></p> <p><body>
    <h1>hello</h1>
 <form action="multi2.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
   <center>
   <table border="2">
       <tr>
               <td align="center"><b>Multipale file Uploade</td>
           </tr>
       <tr>
               <td>
                       Specify file: <input name="file" type="file" id="file">
                   <td>
           </tr>
           <tr>
              <td>
                     Specify file:<input name="file" type="file" id="file">
                  </td>
        <tr>
                   <td>
                      Specify file:<input name="file" type="file" id="file">
                   </td>
                 </tr>
                 <tr>
                    <td align="center">
               <input type="submit" name="Submit" value="Submit files"/>
                        </td>
                 </tr>
    </table>
        <center>
 </form>
 </body>
 </html>
