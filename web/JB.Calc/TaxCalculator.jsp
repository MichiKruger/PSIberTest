
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
        <h1>Tax</h1>
        <jsp:useBean id="person" scope="session" class="JB.tax.calc.TaxBean" />
        <jsp:setProperty name="person" property="year"  />
        <jsp:setProperty name="person" property="age"  />
        <jsp:setProperty name="person" property="monthannn"  />
        <jsp:setProperty name="person" property="salary" />
        <jsp:setProperty name="person" property="medicalaid"  />
        <jsp:setProperty name="person" property="medidep"  />


       
        <jsp:getProperty name="person" property="calc"  />


        <table >
            <tbody>
                <tr>
                    <td>Tax year:</td>
                    <td> <jsp:getProperty name="person" property="year" /></td>
                    <td>Salary:</td>
                    <td> <jsp:getProperty name="person" property="salary" /></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><jsp:getProperty name="person" property="age" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Medical aid:</td>
                    <td><jsp:getProperty name="person" property="medicalaid" /></td>
                    <td>Medical Aid dependants:</td>
                    <td><jsp:getProperty name="person" property="medidep" /></td>

                </tr>
                <tr>
                    <td>Tax:</td>
                    <td><jsp:getProperty name="person" property="tax" /></td>
                    <td>Tax credit</td>
                    <td><jsp:getProperty name="person" property="medicalAidCredit" /></td>
                </tr>
                <tr>
                    <td>Monthly Tax:</td>
                    <td> <jsp:getProperty name="person" property="montlyTax" /></td>
                    <td>Net Tax:</td>
                    <td> <jsp:getProperty name="person" property="netTax" /></td>
                </tr>
                <tr>
                    <td>Monthly Salary:</td>
                    <td><jsp:getProperty name="person" property="monthlySalary" /></td>
                    <td>Net Salary:</td>
                    <td><jsp:getProperty name="person" property="netSalary" /></td>
                </tr>

            </tbody>
        </table>

        <a href="../index.jsp">Back</a>

    </body>
</html>
