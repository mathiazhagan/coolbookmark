<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
    <head>
        <sx:head />
    </head>

    <body>
        <h1>Struts 2 autocompleter + JSON example</h1>

        <s:form action="resultAction" namespace="/" method="POST" >

            <s:url id="databaseList" action="databaseJSON" />

            <sx:autocompleter label="What's your favorite Database Server?" 
                              href="%{databaseList}" name="yourFavDatabase" />

            <s:submit value="submit" name="submit" />

        </s:form>

    </body>
</html>