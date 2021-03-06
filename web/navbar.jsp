<%-- 
    Document   : navbar
    Created on : Nov 18, 2017, 6:29:15 PM
    Author     : Flammino, Login vs. Logout with session management by Kimberly
--%>
<%@page import="Database.UserDB"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<body>
    <!-- Create Navbar that collapses for mobile and expands for larger screens -->
    <nav id="myNavbar" class="navbar navbar-default" role="navigation">    
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Direct Sell!</a>
            </div>

            <!-- Navigation links and forms -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="nav navbar-nav">                        
                    <li><a href="listings.jsp">Listings</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="account.jsp">Account</a></li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Messages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="inbox.jsp">Inbox</a></li>                        
                            <li><a href="sent.jsp">Sent Items</a></li>
                            <li class="divider"></li>
                            <li><a href="trash.jsp">Trash</a></li>
                        </ul>
                    </li>                    
                </ul>
                <%
                    if (session.getAttribute("UID") == null) { %>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login.jsp">Login</a></li>
                </ul>
                <%} else { //Show logout button %>
                <form class="nav navbar-nav navbar-right" action="LogoutServlet" method="post">
                    <li><button class="logout" href="LogoutServlet.java">Logout</button></li>
                </form>
                <%}%>
            </div>
        </div>
    </nav>