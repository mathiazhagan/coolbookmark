
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>Cool Bookmark</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="feedstyle.css" rel="stylesheet" type="text/css" />
        <link href="style50.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
    </head>
    <body>

        <%
        Object obj = session.getAttribute("User");
         User u1=(User)session.getAttribute("User");
        if(obj==null)
            {
            response.sendRedirect(request.getContextPath()+"/sessionError.action");
        }
        %>

        <div id="topnav">

            <div id="toplogomenu">
                <div id="toplogomenu1">

                    <a href="home.action">Home</a>
                    <a href="viewbookmarks.action">Bookmarks</a>


                </div>
                <div id="toplogomenu2">

                    <a href="#" >Hello,<%out.println(u1.getEmailId()); %></a>
                    <a href="logout.action" >Log out</a>
                    <a href="" >Help</a>

                </div>
            </div>

        </div>


        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">Bookmarks</div>
                <form action="bookmarksearch.action"> <div style="float:right;" id="searchbox" ><input type="text" value="Search" name="search" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>



                <div class="clear"></div>
                <div id="formcontainer">


                    <div class="formrow">
                        <div class="form-label">Your Bookmarks</div>
                        <div class="form-widget"> </div>
                        <div id="ins"></div>
                    </div>
                    <div class="clear"></div>


                    <div class="clear"></div>

                </div>



                <div class="clear"></div>


                <div class="tableheader">
                    <span class="Compaign">User Name</span>
                    <span class="Compaign">Bookmark Url</span>
                    <span class="Compaign">Bookmark Name</span>
                    <span class="Budget">Category</span>
                  
                </div>
                <div class="clear"></div>
                <s:iterator  value="bookmarklist">
                    <div class="tabletext"  >
                        <span class="Compaign"><s:property value="user.userName" /></span>
                        <span class="Compaign"><s:property value="bookmarkUrl" /></span>
                        <span class="Compaign"><s:property value="bookmarkName" /></span>
                        <span class="Budget"><s:property value="bookmarkCategory" /></span>
                      
                    </div></s:iterator>
                <div class="clear"></div>




                <div class="clear"></div>




            </div>     


        </div>
        <!--Container End-->
        <div></div>

    </body>
</html>
