<%-- 
    Document   : TaxCalculator
    Created on : 05 Jul 2017, 6:28:35 PM
    Author     : Michi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax calculator</title>
    </head>
    <body>
        <h1>Bean Test</h1>
        <jsp:useBean id="person" scope="session" class="JB.tax.calc.TaxBean" />
        <jsp:setProperty name="person" property="year"  />
        <jsp:setProperty name="person" property="age"  />
        <jsp:setProperty name="person" property="monthannn"  />
        <jsp:setProperty name="person" property="salary" />
        <jsp:setProperty name="person" property="medicalaid"  />
        <jsp:setProperty name="person" property="medidep"  />
        
        <jsp:getProperty name="person" property="year" /><br/>
        <jsp:getProperty name="person" property="age" /><br/>
        <jsp:getProperty name="person" property="monthannn" /><br/>
        <jsp:getProperty name="person" property="salary" /><br/>
        <jsp:getProperty name="person" property="medicalaid" /><br/>
        <jsp:getProperty name="person" property="medidep" />
           <jsp:getProperty name="person" property="tax" />
        <a href="../index.jsp">Back</a>
    </body>
</html>
