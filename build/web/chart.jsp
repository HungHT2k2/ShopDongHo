<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
          <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Watch</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
      <header class="header_section">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg custom_nav-container ">

                    <a class="navbar-brand" href="home">
                        <span>
                            Watch
                        </span>
                    </a>                                             
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class=""> </span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                            </li>

                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                <li class="nav-item">
                                    <a class="nav-link" href="manageracc">Manager Account</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.acc.isSell == 2}">
                                <li class="nav-item">
                                    <a class="nav-link" href="managerad">Manager Product Admin</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc.isSell == 1}">
                                <li class="nav-item">
                                    <a class="nav-link" href="manager">Manager Product</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc.isSell == 1}">
                                <li class="nav-item">
                                    <a class="nav-link" href="chart.jsp">Thống kê</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="login.jsp">Login</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.acc != null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">User: ${sessionScope.acc.userName}</a>
                                </li>
                            </c:if>
                            <li class="nav-item">
                                <a class="nav-link" href="change.jsp">Change Password</a>
                            </li>
                        </ul>
                        <div class="user_option-box">

                            <nav class="navbar navbar-expand-md navbar-dark ab">
                                <div class="container">
                                    <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                                        <form action="search" method="post" class="form-inline my-2 my-lg-0">
                                            <div class="input-group input-group-sm">
                                                <input oninput="searchByName(this)" value="${txtSearch}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                                                <div class="input-group-append">
                                                    <button type="submit" class="btn btn-secondary btn-number">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </nav>

                            <a href="cart"                               
                               <i class="fa fa-cart-plus" aria-hidden="true"></i>
                            </a>

                            <a href="login.jsp">
                                <i class="fa fa-sign-in" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Apple',     6],
          ['SamSung',      4],
          ['BiFit',  3],
          ['Xiaomi', 2],
          ['Khác',    0]
        ]);

        var options = {
          title: 'Product quantity',
          pieHole: 0.4,
        };
        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="donutchart" style="width: 900px; height: 500px;"></div>
  </body>
  
  
</html>