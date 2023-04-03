<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

    <body>

        <!-- header section strats -->
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
        <!-- end header section -->

        <!-- slider section -->
        <section class="slider_section ">
            <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <div class="container-fluid ">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="detail-box">
                                        <h1>
                                            Smart Watches
                                        </h1>
                                        <p>
                                            Is more and more popular in life. In addition to the main function of helping you see the time and date, smartwatch accessories also bring many advanced features to help users in many ways in life.
                                        </p>
                                        <div class="btn-box">
                                            <a href="contact.jsp" class="btn1">
                                                Contact Us
                                            </a>
                                        </div>
                                    </div>
                                </div>                                 
                                <div class="col-md-6">
                                    <div class="img-box">
                                        <img src="images/slider-img.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <!-- end slider section -->
    </div>

    <!-- shop section -->


    <div class="heading_container heading_center">
        <h2>
            List Watches
        </h2>
    </div>


    <div class="quick-link">
        <a href="category?categoryID=1" class="a1">
            <img src="//cdn.tgdd.vn/Brand/1/Apple7077-b26-220x48.png" alt="logo" width="150" height="20">
        </a>
        <a href="category?categoryID=2" class="a1">
            <img src="//cdn.tgdd.vn/Brand/1/samsungnew-220x48-5.png" alt="logo" width="150" height="20">
        </a>
        <a href="category?categoryID=3" class="a1">
            <img src="//cdn.tgdd.vn/Brand/1/logo-befit-220x48-1.png" alt="logo" width="150" height="20">
        </a>
        <a href="category?categoryID=4" class="a1">
            <img src="//cdn.tgdd.vn/Brand/1/logo-xiaomi-220x48-14.png" alt="logo" width="150" height="20">
        </a>
    </div> 

    <div class="boloc col-sm-12">

        <div class="abc">
            <div class=" dropdown nav justify-content-ends">
                <a class="btn btn-light dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">Hãng</a>
                <div class="dropdown-menu">
                    <c:forEach items="${listC}" var="o">
                        <a class="list-group-item dropdown-item" href="category?categoryID=${o.categoryID}">${o.name}</a>
                    </c:forEach>
                </div>
            </div>

            <div class=" abcd dropdown nav justify-content-ends">
                <a class="btn btn-light dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">Giá</a>
                <div class="dropdown-menu">
                    <a class="list-group-item dropdown-item" href="orderby?type0=0&type=99">Dưới 100$</a>
                    <a class="list-group-item dropdown-item" href="orderby?type0=100&type=199">Từ 100$-200$</a>
                    <a class="list-group-item dropdown-item" href="orderby?type0=200&type=499">Từ 200$-500$</a>
                    <a class="list-group-item dropdown-item" href="orderby?type0=500&type=999">Trên 500$</a>
                </div>
            </div>

            <div class="abcd dropdown nav justify-content-ends">
                <a class="btn btn-light dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">Màn hình</a>
                <div class="dropdown-menu">
                    <a class="list-group-item dropdown-item" href="orderby?type0=0&type=199">Màn OLED</a>
                    <a class="list-group-item dropdown-item" href="orderby?type0=200&type=999">Màn AMOLED</a>
                </div>
            </div> 
            <div class="abcd dropdown nav justify-content-ends">
                <a class="btn btn-light dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">Time Pin</a>
                <div class="dropdown-menu">
                    <a class="list-group-item dropdown-item" href="orderby?type0=0&type=9">Duoi 10 ngay</a>
                    <a class="list-group-item dropdown-item" href="orderby?type0=10&type=19">Tren 10 ngay</a>
                </div>
            </div>  

            <div class="abcd dropdown nav justify-content-ends">
                <a class="btn btn-light dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">Sắp xếp</a>
                <div class="dropdown-menu">
                    <a class="list-group-item dropdown-item" href="orderby?type=giam">Giá tang dan</a>
                    <a class="list-group-item dropdown-item" href="orderby?type=tang">Giá giam dan</a>
                    <a class="list-group-item dropdown-item" href="orderby?type=az">A->Z</a>
                    <a class="list-group-item dropdown-item" href="orderby?type=za">Z-A</a>
                    <!--                            <a class="list-group-item dropdown-item" href="orderby?type=tang">Mới cập nhật</a>-->
                </div>
            </div>  
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="content" class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="product col-12 col-md-6 col-lg-3">
                            <div class="card">
                                <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                    <p class="card-text show_txt">${o.title}</p>
                                    <div class="row">
                                        <div class="col">
                                            <p class="btn btn-danger btn-block">${o.price} $</p>
                                        </div>
                                        <div >
                                            <a onclick="buy('${o.id}')" class="btn btn-secondary btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <form name="f" method="post" class=""></form>
                </div>
            </div>
        </div>
        <br>
        <h4 class="text-danger">${s}</h4>
    </div>

    <div class="heading_container heading_center">
        <h2>
            4 Sản phẩm mới nhất
        </h2>

    </div>
    <div class="container">

        <div class="row">

                <div id="content" class="row">                   
                    <c:forEach items="${listD}" var="o">             
                        <div class="product col-12 col-md-6 col-lg-3">
                            <div class="btn btn-success">New</div>
                            <div class="card">                        
                                <img class="card-img-top" src="${o.image}" alt="Card image cap">                               
                                <div class="card-body">
                                    <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                    <p class="card-text show_txt">${o.title}</p>
                                    <div class="row">
                                        <div class="col">
                                            <p class="btn btn-danger btn-block">${o.price} $</p>
                                        </div>
                                        <div >
                                            <a onclick="#" class="btn btn-secondary btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

        </div>
    </div>


    <div class="heading_container heading_center">
        <h2>
            Sản phẩm giá rẻ
        </h2>        
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="content" class="row">
                    <c:forEach items="${listE}" var="o">
                        <div class="product col-12 col-md-6 col-lg-4">
                            <div class="btn btn-info">Giá rẻ</div>
                            <div class="card">
                                <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                    <p class="card-text show_txt">${o.title}</p>
                                    <div class="row">
                                        <div class="col">
                                            <p class="btn btn-danger btn-block">${o.price} $</p>
                                        </div>
                                        <div >
                                            <a onclick="#" class="btn btn-secondary btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>

        </div>
    </div>





    <!-- end shop section -->

    <!-- about section -->

    <section class="about_section layout_padding">
        <div class="container  ">
            <div class="row">
                <div class="col-md-6 col-lg-5 ">
                    <div class="img-box">
                        <img src="images/about-img.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 col-lg-7">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>
                                INFORMATION
                            </h2>
                        </div>
                        <p>
                            The idea of a modern device worn on the wrist is not a novel one. However, if expanding the concept of what is "smart", smart watches also have a long history with the participation of many brands with many different models. With this article, we will find watches that not only have the ability to tell time, but also have the ability to calculate, store data, plan, be able to run programming code, play music.                       
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->

    <!-- feature section -->

    <section class="feature_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>
                    Features Of Our Watches
                </h2>
                <p>
                    With countless features to bring users the most comfortable and useful feeling.
                </p>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="box">
                        <div class="img-box">
                            <img src="images/f1.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Fitness Tracking
                            </h5>
                            <p>
                                Modes of measuring heart rate,measuring blood oxygen levels,exercise modes.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="box">
                        <div class="img-box">
                            <img src="images/f2.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Alerts & Notifications
                            </h5>
                            <p>
                                Clearly show the alert mode, the status from the workout, the alarm, the modes that the user set.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="box">
                        <div class="img-box">
                            <img src="images/f3.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Messages
                            </h5>
                            <p>
                                Reply to SMS, WhatsApp, Facebook and Messenger.Predictive text and emoji, predefined text.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="box">
                        <div class="img-box">
                            <img src="images/f4.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Bluetooth
                            </h5>
                            <p>
                                Will connect to the smartphone. Allows to adjust settings,use application easy setting.
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end feature section -->

    <!-- client section -->
    <section class="client_section layout_padding">
        <div class="container">
            <div class="heading_container heading_center">
                <h2>
                    Feedback
                </h2>
            </div>
            <div class="carousel-wrap ">
                <div class="owl-carousel client_owl-carousel">
                    <div class="item">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/c1.jpg" alt="">
                            </div>
                            <div class="detail-box">
                                <div class="client_info">
                                    <div class="client_name">
                                        <h5>
                                            Mark Thomas
                                        </h5>
                                        <h6>
                                            Customer
                                        </h6>
                                    </div>
                                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                    labore
                                    et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum
                                    dolore eu fugia
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/c2.jpg" alt="">
                            </div>
                            <div class="detail-box">
                                <div class="client_info">
                                    <div class="client_name">
                                        <h5>
                                            Alina Hans
                                        </h5>
                                        <h6>
                                            Customer
                                        </h6>
                                    </div>
                                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                    labore
                                    et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum
                                    dolore eu fugia
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- end client section -->

    <jsp:include page="Footer.jsp"></jsp:include>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
    <script type="text/javascript">
                                                var editor = '';
                                                $(document).ready(function () {
                                                    editor = CKEDITOR.replace('description');
                                                });

                                                function buy(id) {
                                                    document.f.action = "cookiep?id=" + id + "&num=" + 1;
                                                    document.f.submit();
                                                }

                                                function searchByName(param) {
                                                    var txtSearch = param.value;
                                                    $.ajax({
                                                        url: "/Project_banhang/searchAjax",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            txt: txtSearch
                                                        },
                                                        success: function (data) {
                                                            var row = document.getElementById("content");
                                                            row.innerHTML = data;
                                                        },
                                                        error: function (xhr) {
                                                            //Do Something to handle error
                                                        }
                                                    });
                                                }
    </script>   
</body>
</html>

