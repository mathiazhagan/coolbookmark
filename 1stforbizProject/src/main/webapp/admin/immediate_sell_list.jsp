<%-- 
    Document   : index
    Created on : Jun 13, 2012, 4:02:43 PM
    Author     : ayyanar
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
    <head>
         <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="stylesheet" type="text/css" href="table.css" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link rel="icon" type="image/png" href="images/favicon.png" />
        <link rel="icon" type="image/gif" href="images/favicon.gif" />
        <title>Admin</title>

        <script type = "text/javascript">
            function SelectAllChk()
            {
                var table = document.getElementById("table1");
                var td =  table.getElementsByTagName("span");
                for(var i=0;i<td.length;i++)
                {
                    var chk = td[i].getElementsByTagName("input")[0];
                    if (chk != null)
                    {
                        if (chk.type =="checkbox")
                        {
                            chk.checked=!chk.checked;
                        }
                    }
                }
            }</script>

        <!-- for pagination script start-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#table1').easyPaginate({
                    //step value define for number of results shown on every page here 5 set for 5 items on each page
                    step:8
                });
	
            });    
    
        </script>
        <!-- for pagination script end-->
        <s:head/>
    </head>
    <body>


        <%
            Object obj = session.getAttribute("user");


            if (obj == null) {
                response.sendRedirect(request.getContextPath() + "/admin/sessionError.action");
            }

        %>


      
         <!--container start -->
        <div id="container">

            <div class="header">

                <div class="logo">
                    <img src="images/logo.gif" width="195" height="81" />	

                    <!--navigation start -->
                    <div class="navigation">
                <ul>

                    <li><a href="adminpage.jsp">Home</a></li>
                    <li><a href="logout.action">Logout</a></li> 
                </ul>

            </div>
                    
                </div>
            </div>
            <!--navigation end -->
           
            <div class="content100">

                <div class="t1" align="center" > Immediate Sales List View  </div> 


                <div id="containerbox">

                    <div class="tableheader" >
                        <span class="checkbox"><input type="checkbox" id="checkbox" onclick ="SelectAllChk();"/></span>
                        <span class="Compaign">First Name</span>
                        <span class="Compaign">Sur Name</span>
                        <span class="Created">Advertisement Heading</span>
                        <span class="CPC">Trading Hours</span>
                        <span class="Impressions">Ref id</span>
                        <span class="Cost">Delete</span>
                        <span class="response">Send Mail</span>
                        <span class="change_1">Change Status</span>
                        <span class="Clicks_1">Posting Time</span>
                    </div>

                    <div class="clear"></div>
                    <form name="form">
                        <div id="table1">
                            <s:iterator value="list">
                                <div class="tabletext">
                                    <span class="checkbox"><input type="checkbox" id="checkbox" name="check"  value="<s:property value="referenceId"/> "/></span>
                                    <span class="name"><s:property value="BFirstName"/></span>
                                    <span class="name"><s:property value="BSurname"/></span>
                                    <span class="Created"><s:property value="BAdverHeading"/></span>
                                    <span class="CPC"><s:property value="BTradingHours"/></span>
                                    <span class="Impressions"><s:property value="referenceId"/></span>

                                    <s:url id="url" action="admin/deleteonesell">
                                        <s:param name="referenceId" value="referenceId"/>
                                    </s:url>
                                    <span class="Cost"><s:a href="%{url}"><img src="images/trash.png" alt="Delete"  /></s:a></span>
                                    <span class="response"><a href="mailto:<s:property value="BEmail"/>"><img src="images/mailicon.png" alt="Mail" height="20" width="20" /></a></span>
                                    <s:url id="url" action="admin/changestatus">
                                        <s:param name="referenceId" value="referenceId"/>
                                        <s:param name="status" value="status"/>
                                    </s:url>
                                    <span class="change_1"><s:a href="%{url}"><s:property value="status"/></s:a></span>
                                    <span class="Clicks_1"><s:property value="createdDate"/></span>
                                </div>

                            </s:iterator>
                        </div>

                        <div class="clear"></div>
                        <div class="tabletext1"></div>
                        <div class="t1" align="center" > 
                            <input type="submit" name="submit" value="Delete" onclick="form.action='multiplerowdelete';" class="button_image" ></input>
                            <input type="submit" name="submit" value="Change Status" onclick="form.action='multiplestatuschange';" class="button_image" ></input>
                        </div> <br/>      
                    </form>
                    
                    
                    <!-- footer start -->
                <div id="footer" style="width:1250px; margin-left:auto;margin-right:auto;">			
                    <div class="bottom_link">

                    </div>

                    <div class="rights" style="margin:20px 0 0 450px;">copyright &copy; 2008 Pegasus Business Sales All rights reserved</div>
                </div>		
                <!-- footer end -->

                    <div class="clear"></div>
                </div>

	
            </div>
        </div>
    </body>
</html>