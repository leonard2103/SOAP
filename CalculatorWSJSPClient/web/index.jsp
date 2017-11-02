<%-- 
    Document   : index
    Created on : 29/10/2017, 09:49:47 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.calculator.CalculatorWS_Service service = new org.me.calculator.CalculatorWS_Service();
	org.me.calculator.CalculatorWS port = service.getCalculatorWSPort();
	 // TODO initialize WS operation arguments here
	int i = 3;
	int j = 4;
	int result = port.add(i, j);
	out.println("Result = "+result);
    } catch (Exception ex) {
	out.println("Exception" + ex);
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
