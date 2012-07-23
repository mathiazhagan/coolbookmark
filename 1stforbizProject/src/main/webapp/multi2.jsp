<%-- 
    Document   : multi2
    Created on : Jul 11, 2012, 12:46:52 PM
    Author     : Naren
--%>


<!DOCTYPE html>
<%@ page import="java.util.List" %>
   <%@ page import="java.util.Iterator" %>
   <%@ page import="java.io.File" %>
   <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
   <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
   <%@ page import="org.apache.commons.fileupload.*"%>
   <%@ page contentType="text/html;charset=UTF-8" language="java" %>
   <center><table border="2">
        <tr><td><h1>Your files  uploaded </h1></td></tr>
   <%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
 } else {
           FileItemFactory factory = new DiskFileItemFactory();
           ServletFileUpload upload = new ServletFileUpload(factory);
           List items = null;
           try {
                   items = upload.parseRequest(request);
           } catch (FileUploadException e) {
                   e.printStackTrace();
           }
           Iterator itr = items.iterator();
           while (itr.hasNext()) {
           FileItem item = (FileItem) itr.next();
           if (item.isFormField()) {
           } else {
                   try {
                           String itemName = item.getName();
                           
                                        
                                           
                   } catch (Exception e) {
                           e.printStackTrace();
                   }
           }
           }
   }
   %>
    </table>
   </center>
