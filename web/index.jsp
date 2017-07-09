<%-- 
    Document   : index
    Created on : 05 Jul 2017, 6:06:40 PM
    Author     : Michi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <style>
        .centerb {
            margin: auto;
            width: 60%;
            border: 3px solid #000000	;
            padding: 10px;
            background: #B6B6B6;
        }
        .center {
            margin: auto;
            width: 60%;
            padding: 10px;
        }
        .pad {
            padding-left: 120px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax Calculator</title>
    </head>
    <body style="background: #7b8391;">
        <div class="center"> 
            <h1>Tax calculator</h1>
        </div>
        <div class="centerb"><%--class="centerb"--%>

            <form name="InputForm" action="JB.Calc/TaxCalculator.jsp">
                <table border="0" style="padding: 100px;">
                    <tbody style="padding: 50px;">

                        <tr>
                            <th align="left" >Tax Year: </th>
                            <td colspan="2" class="pad"><select name="year">
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                </select></td>
                        </tr>
                        <tr>
                            <th align="left">Age:</th>
                            <td colspan="2" class="pad"><input type="text" name="age"  /></td>
                        </tr>
                        <tr>
                            <th align="left">Salary:</th>
                            <td class="pad"><input type="text" name="salary"  /></td>
                            <td > <select name="monthannn">
                                    <option value="m">Monthly</option>
                                    <option value="a">Annual</option>
                                </select></td>

                        </tr>
                        <tr>
                            <th align="left">Medical Aid:</th>
                            <td  class="pad"><select name="medicalaid" >
                                    <option value="y">Yes</option>
                                    <option value="n">No</option>
                                </select></td>
                        </tr>
                        <tr>
                            <th align="left">Number of dependants :</th>
                            <td colspan="2" class="pad"><input type="text" name="medidep"  value="0" /></td>
                        </tr>
                        <tr>
                            <td> <input type="submit" value="OK" /></td>
                        </tr>
                    </tbody>
                </table>



            </form>
        </div>

    </body>
</html>
