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

        <form name="InputForm" action="JB.Calc/TaxCalculator.jsp">
            <table border="0">
                <tbody>

                    <tr>
                        <td>Tax Year: </td>
                        <td colspan="2"><select name="year">
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Age:</td>
                        <td colspan="2"><input type="text" name="age"  /></td>
                    </tr>
                    <tr>
                        <td>Salary:</td>
                        <td><input type="text" name="salary"  /></td>
                        <td> <select name="monthannn">
                                <option value="m">Monthly</option>
                                <option value="a">Annual</option>
                            </select></td>

                    </tr>
                    <tr>
                        <td>Medical Aid:</td>
                        <td colspan="2"><select name="medicalaid">
                                <option value="y">Yes</option>
                                <option value="n">No</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Number of dependants :</td>
                        <td colspan="2"><input type="text" name="medidep"  value="0" /></td>
                    </tr>
                </tbody>
            </table>

            <input type="submit" value="OK" />

        </form>

    </body>
</html>
