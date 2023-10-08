<%@ page import="java.sql.*" %>
<%
    String jdbcUrl = "jdbc:mysql://localhost:3306/francis";
    String dbUser = "root";
    String dbPassword = "root";

    Connection connection = null;
    out.println("Connected successfully!");

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
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String checkQuery = "SELECT COUNT(*) FROM signup WHERE email=?";
    String insertQuery = "INSERT INTO signup VALUES (?,?,?)";

    PreparedStatement ps = null;
    try {
        connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
        // Prepare and execute the query to check if the email exists
        ps = connection.prepareStatement(checkQuery);
        ps.setString(1, email);
        ResultSet resultSet = ps.executeQuery();
        resultSet.next(); // Move to the first (and only) row
        int emailCount = resultSet.getInt(1);

        if (emailCount > 0) {
            // Email already exists in the database
            out.println("<script>showAlert();</script>");
        } else {
            // Prepare the SQL statement with parameterized query for inserting user data
            ps = connection.prepareStatement(insertQuery);

            // Set the parameters for the insert query
            ps.setString(1,username);
            ps.setString(2, password);
            ps.setString(3, email);

            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("login.html");
            } else {
                out.print("<p>Error Message</p>");
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>