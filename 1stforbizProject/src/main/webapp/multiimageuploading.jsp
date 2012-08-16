<%-- 
    Document   : multiimageuploading
    Created on : Jun 22, 2012, 6:10:51 PM
    Author     : D.Mathiazhagan


<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Multiple Image upload using JavaScript</title>
    <script language="javascript" type="text/javascript">
        function AddMoreImages() {
            if ((!document.getElementById)&&(!document.createElement))
                return false;
            var fileUploadarea = document.getElementById("fileUploadarea");
            if (!fileUploadarea)
                return false;
            var newLine = document.createElement("br");
            fileUploadarea.appendChild(newLine);
            var newFile = document.createElement("input");
            newFile.type = "file";
            newFile.setAttribute("class", "fileUpload"); 
            if (!AddMoreImages.lastAssignedId)
                AddMoreImages.lastAssignedId = 100;
            newFile.setAttribute("id", "FileUpload" + AddMoreImages.lastAssignedId);
            newFile.setAttribute("name", "FileUpload" + AddMoreImages.lastAssignedId);
            var div = document.createElement("div");
            div.appendChild(newFile);
            div.setAttribute("id", "div" + AddMoreImages.lastAssignedId);
            fileUploadarea.appendChild(div);
            AddMoreImages.lastAssignedId++;
        }  
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="fileUploadarea">
            <s:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" BorderColor="Gray" /><br />
        </div>
        &nbsp;
        <input style="display: block;" id="btnAddMoreImages" type="button" value="Add more images" onclick="AddMoreImages();" />
        <s:Button ID="ButtonUpload" runat="server" OnClick="ButtonUpload_Click" Text="Upload" />
    </div>
    </form>
</body>
</html>   --%>


<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.File"%>
<%@ page
    import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>After Upload</title>
</head>
<body>
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

                        if ("".equals(itemName))
                            continue;                       

                        File savedFile = new File("/tmp/" + itemName);
                        item.write(savedFile);

                        out.println(itemName + " uploaded. <br />");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    %>
    
    
    <form action = "/upload" method="post" enctype="multipart/form-data">
     <input type="file" name="myFiles[]" multiple="true"/>
     <input type="submit"/>
   </form>
</body>
</html>