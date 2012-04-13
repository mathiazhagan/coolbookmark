
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">
        <title>Cool Bookmark</title>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.js"></script>
        <script src="js/analysis3.js"></script>
        <script src="js/popup2.js"></script>
        <script src="js/load2.js"></script>
        <script src="js/date.js"></script>
        <link rel="stylesheet" type="text/css" href="js/popup.css" />
        <script type="text/javascript">
            if (window.XMLHttpRequest){
                xmlhttp=new XMLHttpRequest();
            }
            else{
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.open("GET","note.xml",false);
            xmlhttp.send();
            xmlDoc=xmlhttp.responseXML;
            var messagea;
            var messageb;
            var myString;
            
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
    </head>
    <body>
        <%
            Object obj = session.getAttribute("User");
            User u1 = (User) session.getAttribute("User");
            if (obj == null) {
                response.sendRedirect(request.getContextPath() + "/sessionError.action");
            }
        %>

        <div id="topnav">
            <div id="toplogomenu">
                <div id="toplogomenu1">
                    <a href="home.action">Home</a>
                    <a href="viewbookmarks.action">Bookmarks</a>
                </div>
                <div id="toplogomenu2">
                    <a href="#" >Hello,<%out.println(u1.getEmailId());%></a>
                    <a href="logout.action" >Log out</a>
                    <a href="" >Help</a>
                </div>
            </div>
        </div>
        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">Feeds</div>
                <form action="seardash.action"> <div style="float:right;" id="searchbox" ><input type="text" value="Search" name="search" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="clear"></div>
                <div id="formcontainer">
                    <div class="formrow">
                        <div class="form-label">Your Feed</div>
                        <div class="form-widget">   <textarea rows="5" cols="80" id="feed"></textarea></div>
                        <div id="ins"></div>
                    </div>
                    <div class="clear"></div>

                    <div class="formrow">
                        <div style="float: right">    <button id="submit" onclick="check()">Publish</button>
                        </div>
                    </div>
                    <div id="dialog-overlay"></div>
                    <div id="dialog-box">
                        <div id="titlebar">Hi Do You want to Save These url(s) as Bookmarks </div>
                        <div class="dialog-content">
                            <center>
                                <div id="dialog-message"></div>
                            </center>
                            <button id="add">Add</button>
                            <button id="close">close</button> 
                        </div>

                    </div>
                    <div id="dialog-overlay2"></div>
                    <div id="dialog-box2">
                        <div id="titlebar2">Welcome</div>
                        <div class="dialog-content2">
                            <div id="dialog-message2"></div>
                            <center>
                                Event Name:<input type="text"><br>
                                Start Date:<input type="text" id="sdate"><a href="#">Prev</a> <a href="#">Next</a><br>
                                End Date:<input type="text" id="edate"><a href="#">Prev</a> <a href="#">Next</a><br>
                                Time:<input type="text" id="time"><input type="checkbox" id="allt" value="AllDay" />All Day<br>
                                Location<input type="text" id="location"><a href="#">Prev</a> <a href="#">Next</a><br>
                                Note:<textarea rows="3" cols="20" id="note"></textarea><br>
                            </center>
                            <center>
                                <button id="add2">Add</button>
                                <button id="addAnother">Add Another Event</button>
                                <button id="close2">close</button>
                            </center>
                        </div>
                    </div> 
                </div>
                <div class="clear"></div>
                <div class="tableheader">
                    <span class="Compaign">User Name</span>
                    <span class="Compaign">Feed Desc</span>

                    <span class="Compaign">Time</span>

                    <span class="Budget">Remove Feed</span>

                </div>
                <div class="clear"></div>
                <s:iterator  value="feedlist">
                    <div class="tabletext"  >
                        <span class="Compaign"><s:property value="user.userName" /></span>
                        <span class="Compaign"><s:property value="scribbleDesc" /></span>

                        <span class="Compaign"><s:property value="scribbleTime" /></span>

                        <s:url action="deletefeed.action" var="deletefeed">
                            <s:param name="feedid" value="%{scribbleId}" />
                        </s:url>
                        <span class="Budget"><s:a href="%{deletefeed}" cssClass="ask"><img src="images/trash.png"/></s:a></span>

                    </div></s:iterator>
                    <div>
                    <s:url id="ajax" value="/scribleAjax.action"/>
                    <sj:div href="%{ajax}"   loadingText="Loading"  />
                </div>   
            </div>
        </div>
        <!--Container End-->
        <div></div>

    </body>
</html>
