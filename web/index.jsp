<%-- 
    Document   : index
    Created on : 05 Jul 2017, 6:06:40 PM
    Author     : Michi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax Calculator</title>
    </head>
    <body>

        <h1>Tax calculator</h1>
        <form name="InputForm" action="TaxCalculator.jsp">
            Tax Year: 
            <select name="year">
                <option value="2017">2017</option>
                <option value="2018">2018</option>
            </select>
            Age: <input type="text" name="age"  />
            <select name="monthannn">
                <option value="m">Monthly</option>
                <option value="a">Annual</option>
            </select>
            Salary: R<input type="text" name="salary"  />
            


        </form>

    </body>
</html>
