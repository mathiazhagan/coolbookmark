<%-- 
    Document   : rentreviews
    Created on : Jun 30, 2012, 8:56:10 PM
    Author     : Naren
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <s:head/>

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
            <div class="content6">

                <!-- left side start -->
                <div class="form6">

                    <div class="t1"> Business and Vacant Commercial Properties for Sale </div> <br />

                    <img src="images/left-hr.png"/>	<br /> <br />

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Services </div>

                    <div class="list2">
                        <ul>
                            <li><a href="conveyancing.jsp"> Conveyancing </a></li>
                            <li><a href="finance.jsp"> Finance </a></li>
                            <li><a href="landlordact.jsp"> Landlord &amp; Tenant Act </a></li>
                            <li><a href="rentreviews.jsp"> Rent Reviews </a></li>
                            <li><a href="stocktaking.jsp"> Stocktaking </a></li>
                            <li><a href="valuations.jsp"> Valuations </a></li>					
                        </ul>
                    </div>		<br /> 

                    <img src="images/left-hr.png"/>	

                    <br /><br />					

                    <img src="images/left-content-top.png" width="540" height="32" />	
                    <div class="t10"> Pegasus Business Sales Rent Reviews </div><br /> 

                    <div class="t23">Rent Reviews </div><br /> <br /> <br /> 

                    <font size="3px">Professional rent review negotiations for Landlords and Tenants which resolve the matter in weeks, not months.</font><br /> <br /> 

                    <font size="4px">Are you in a deadlock and need to resolve the matter fast? <a href="contactus.jsp">Contact Us now</a>.<br /> <br />Lease Checkpoints </font><br /> <br />

                    <div class="t23"> COMMENCEMENT </div><br />

                    <div class="list2">
                        <ul>
                            <li> When will the lease begin? Are there any conditions to be fulfilled before the lease begins: for example, completion of building repairs? </li>
                            <li> Will you get vacant possession at that date? </li>

                        </ul>
                    </div>

                    <div class="t23"> TERM </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> How long does the lease run for? You may prefer a longer term if you plan to invest in altering or improving the premises, or building up retail trade. However, you will not want to be tied in if your needs change. </li>
                            <li> Is there an option to extend the lease? If so, how will the extended term, rent and so on be determined? </li>

                        </ul>
                    </div>

                    <div class="t23"> BREAK CLAUSES </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Do you have the right to break the lease early? When can you do this? For example, you might have the right to terminate the lease at the first rent review date. </li>
                            <li> Are there any conditions you must fulfil to exercise your break rights? You may be required to give written notice, perhaps a month in advance. You might also be required to be up to date with all your payments. You might lose your right to break the lease if you fail to meet the conditions. </li>
                            <li> Does the landlord have an option to break the lease early? This could be very disadvantageous to you, if you are planning to build a long-term business using the premises. Short-term licence agreements often give the landlord this right. </li>

                        </ul>
                    </div>

                    <div class="t23"> EXIT </div><br />

                    <div class="list2">
                        <ul>
                            <li> Can you assign the lease? This can be particularly important if you have a long-term lease and your needs or circumstances change. </li>
                            <li> What restrictions are there on assigning the lease? For example, the landlord might be able to withhold consent if the new tenant is not of equal financial standing. </li>
                            <li> What continuing liability will you have if you assign the lease? For example, you might be required to guarantee the new tenant?s payments. </li>

                        </ul>
                    </div>

                    <div class="t23"> RENEWAL </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What rights to renew the lease do you have? Since June 2004, it is now relatively easy for security of tenure to be excluded from a new lease. Financial terms </li>

                        </ul>
                    </div>

                    <div class="t23"> RENT </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> How much rent will be payable, and what will the payment schedule be (e.g. quarterly in advance)? </li>
                            <li> Will the rent be subject to VAT? </li>

                        </ul>
                    </div>

                    <div class="t23"> DEPOSIT </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Are you required to pay any deposit? Who will hold the deposit, and will it attract interest? Will the deposit be secure if your landlord becomes insolvent? </li>
                            <li> Are you required to give any personal guarantees? </li>

                        </ul>
                    </div>

                    <div class="t23"> RENT HOLIDAY </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Will you benefit from an initial rent holiday or discounted rent? For how long? </li>

                        </ul>
                    </div>

                    <div class="t23"> LEGAL FEES </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Are you responsible for paying the landlord?s legal fees to negotiate the lease? Are you responsible for the landlord?s fees in other circumstances ? for example, if you assign the lease? Is there any cap on the level of these fees? </li>

                        </ul>
                    </div>

                    <div class="t23"> RENT REVIEW </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> When will the rent be reviewed? </li>
                            <li> What dispute resolution procedures will be used if you and the landlord disagree over the correct level of rent? </li>
                            <li> Does the lease include an ?upwards only? clause, so that the rent can only rise at rent reviews, not fall? </li>

                        </ul>
                    </div>

                    <div class="t23"> BUSINESS RATES </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Are you required to pay business rates? In shared premises, how is your share calculated? </li>


                        </ul>
                    </div>

                    <div class="t23"> SERVICE CHARGES </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What services are provided by the landlord? What share of the costs must you pay? Is there any cap on the level of these charges? </li>
                            <li> What management charges can the landlord or management company make? </li>
                            <li> Are you required to contribute to a sinking fund towards future major expenses? </li>


                        </ul>
                    </div>

                    <div class="t23"> RESTRICTIONS </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Does the lease restrict how you can use the premises? Are you allowed to apply for planning permission for a change of use? </li>


                        </ul>
                    </div>

                    <div class="t23"> RIGHTS </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Do you have the access rights you need? Do you need access rights for others: for example, customers or deliveries? </li>
                            <li> Do you have rights to any shared services or facilities? </li>
                            <li> What rights to put up signage do you have? </li>

                        </ul>
                    </div>

                    <div class="t23"> LANDLORD </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What rights does the landlord have, and will these cause you any problems? For example, the landlord typically has some right of access to the premises. Will you be entitled to any compensation if this interferes with your business? Maintenance </li>


                        </ul>
                    </div>

                    <div class="t23"> RESPONSIBILITIES </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What are your responsibilities for maintenance and repair? Who is responsible for structural maintenance and repairs, and for wiring and plumbing? </li>
                            <li> Who is responsible for any common parts of the building? </li>
                            <li> What will happen if your use of the premises is impaired by the landlord?s maintenance or repair activities? Will you be compensated? </li>

                        </ul>
                    </div>

                    <div class="t23"> ALTERATIONS </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What alterations to the premises are you allowed to make? Will you need the landlord?s permission? </li>
                            <li> Will any initial alterations or repairs required be carried out by the landlord, at the landlord?s expense, prior to the commencement of the lease? </li>

                        </ul>
                    </div>

                    <div class="t23"> REINSTATEMENT </div><br />

                    <div class="list2">
                        <ul>
                            <li> What is your responsibility for returning the premises to their original condition at the end of the lease? What evidence do you have of that original condition? </li>
                            <li> What will happen if you have made major changes? </li>

                        </ul>
                    </div>

                    <div class="t23"> COMPLIANCE </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Who is responsible for ensuring that the premises meet legal requirements? Who will pay if the premises need to be altered to satisfy new regulations? </li>
                            <li> Is there an asbestos survey? </li>
                            <li> Is there a health and safety file? </li>

                        </ul>
                    </div>

                    <div class="t23"> INSURANCE </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What insurance are you obliged to have? </li>
                            <li> What insurance cover is the landlord required to provide? Are you required to contribute to the costs of this? Will you be provided with evidence of the insurance cover and its costs? </li>

                        </ul>
                    </div>

                    <div class="t23"> SUB-LETTING </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> Do you have the right to sub-let all or part of the premises? Are there any restrictions: for example, requiring the landlord?s consent, or setting a floor under the level of rent you can charge? </li>


                        </ul>
                    </div>

                    <div class="t23"> OTHER TENANTS </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> If you are leasing part of a multi-occupancy building, such as a shopping centre, are there any restrictions controlling what other tenants the landlord can get in other units? For example, is the landlord prevented from leasing to similar businesses? </li>
                            <li> What rights will you have if other tenants cause problems? Does the lease oblige the landlord to take action? </li>

                        </ul>
                    </div>

                    <div class="t23"> BREACH </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> What rights will you have if the landlord breaches any of his obligations under the lease? </li>
                            <li> What rights will the landlord have if you breach any of your obligations under the lease? </li>

                        </ul>
                    </div>

                    <div class="t23"> OTHER </div><br /> 

                    <div class="list2">
                        <ul>
                            <li> A lease can contain a wide variety of clauses; these might be advantageous or disadvantageous to you. The absence of key clauses from the lease could also have an important impact. A proper legal review of the lease is essential. </li>


                        </ul>
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
