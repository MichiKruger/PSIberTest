
<%-- 
    Document   : TaxCalculator
    Created on : 05 Jul 2017, 6:28:35 PM
    Author     : Michi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .centerb {
            margin: auto;
            width: 70%;
            border: 3px solid #000000	;
            padding: 10px;
            background: #B6B6B6;
        }
        .center {
            margin: auto;
            width: 70%;
            padding: 10px;
        }
        .pad {
            padding-left: 80px;
            padding-right: 80px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax calculator</title>
    </head >
    <body style="background: #7b8391;">
        <div class="center"> 
            <h1>Tax</h1>
        </div>
        <div class="centerb">

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
                        <th align="left" >Tax year:</th>
                        <td class="pad"> <jsp:getProperty name="person" property="year" /></td>
                        <th align="left" >Salary:</th>
                        <td class="pad">R<jsp:getProperty name="person" property="salary" /></td>
                    </tr>
                    <tr>
                        <th align="left" >Age</th>
                        <td class="pad"><jsp:getProperty name="person" property="age" /></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th align="left" >Medical aid:</th>
                        <td class="pad"><jsp:getProperty name="person" property="medicalaidExt" /></td>
                        <th align="left" >Medical Aid dependants:</th>
                        <td class="pad"><jsp:getProperty name="person" property="medidep" /></td>

                    </tr>
                    <tr>
                        <th align="left" >Tax:</th>
                        <td class="pad">R<jsp:getProperty name="person" property="tax" /></td>
                        <th align="left" >Tax credit</th>
                        <td class="pad">R<jsp:getProperty name="person" property="medicalAidCredit" /></td>
                    </tr>
                    <tr>
                        <th align="left" >Monthly Tax:</th>
                        <td class="pad"> R<jsp:getProperty name="person" property="montlyTax" /></td>
                        <th align="left" >Net Tax:</th>
                        <td class="pad">R<jsp:getProperty name="person" property="netTax" /></td>
                    </tr>
                    <tr>
                        <th align="left" >Monthly Salary:</th>
                        <td class="pad">R<jsp:getProperty name="person" property="monthlySalary" /></td>
                        <th align="left" >Net Salary:</th>
                        <td class="pad">R<jsp:getProperty name="person" property="netSalary" /></td>
                    </tr>

                </tbody>
            </table>

            <a href="../index.jsp">Back</a>
        </div>
    </body>
</html>
