<%-- 
    Document   : num
    Created on : 02-Jun-2022, 4:12:18 pm
    Author     : mayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- JSP Code for bill generator -->
<%
  String cnm=request.getParameter("cnm");
  String mno=request.getParameter("mno");
  int ir=Integer.parseInt(request.getParameter("iread"));
  int fr=Integer.parseInt(request.getParameter("fread"));
  String ctype=request.getParameter("ctype");
  int tr=fr-ir;
  float rpu=0.0f;  
  if(ctype.equalsIgnoreCase("reci"))
  {
      rpu=3.50f;
  
  }
  else if(ctype.equalsIgnoreCase("comm"))
  {
        rpu=5.50f;
  }
  else if(ctype.equalsIgnoreCase("agri"))
  {
      rpu=2.50f;
  }
  
  float tbill=(float) tr*rpu;
  // Condition for minimum bill 
  if(tbill<100.0f)
      tbill=100.0f;
  
  
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
    <center>
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2">Electricity Bill Generator</th>
                 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Consumer Name </td>
                    <td><%=cnm%></td>
                </tr>
                <tr>
                    <td>Meter No </td>
                    <td><%= mno%></td>
                </tr>
                 <tr>
                    <td>Consumer Type </td>
                    <td><%= ctype%></td>
                </tr>
                 <tr>
                    <td>Total Units Consumed</td>
                    <td><%= tr%></td>
                </tr>
                 <tr>
                    <td>Rate/Unit As per Type</td>
                    <td><%= rpu%></td>
                </tr>
                 <tr>
                    <td>Total Bill</td>
                    <td><%= tbill%></td>
                </tr>
            </tbody>
        </table>

    </center>
    
      
    </body>
</html>

