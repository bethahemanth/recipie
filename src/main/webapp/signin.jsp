<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*,java.lang.*" %>
<script>
    function showAlert() {

        alert("Invalid credentials" );
        window.location.href = "signup.html";
    }
</script>
<%
    String jdbcUrl = "jdbc:mysql://localhost:3306/francis";
    String dbUser = "root";
    String dbPassword = "root";
    out.println("Connected successfully!");
    Connection connection = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
        out.println("Connected successfully!");

    } catch (Exception e) {
        e.printStackTrace();
        e.getMessage();
    }
%>
<%
    String user=request.getParameter("username");
    String pass=request.getParameter("password");
    Connection con=null;
    PreparedStatement ps=null;
    String query= "SELECT * FROM signup WHERE username=? AND password=?";
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/francis","root","root");
        ps=con.prepareStatement(query);
        ps.setString(1,user);
        ps.setString(2,pass);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            
            response.sendRedirect("index.jsp");
        } else {

            out.println("<script>showAlert();</script>");
        }
    }
    catch (Exception e)
    {
        out.print(e);
    }

%>