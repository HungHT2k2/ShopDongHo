<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Watch</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
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
                             <a href="cart" ${requestScope.size}>
                               
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
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="container">
                            <div class="card">
                                <div class="row">
                                    <aside class="col-sm-5 border-right">
                                        <article class="gallery-wrap"> 
                                            <div class="img-big-wrap">
                                                <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>
                                        <h5 class="title mb-2">Màn hình: ${detail.manhinh}</h5> 
                                         <h5 class="title mb-2">Time Pin theo ngày: ${detail.timepin}</h5> 
                                          <h5 class="title mb-2">HÐH: ${detail.hdh}</h5> 
                                         <h5 class="title mb-3">Hãng: ${detail.hang}</h5> 
                                         
                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency">Price: </span><span class="num">${detail.price} $</span>
                                            </span> 
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    <dt>Quantity: </dt>
                                                    <dd>
                                                        <select class="form-control form-control-sm" style="width:70px;">
                                                            <option> 1 </option>
                                                            <option> 2 </option>
                                                            <option> 3 </option>
                                                        </select>
                                                    </dd>
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->
                                        </div> <!-- row.// -->
                                        <hr>
                                        <a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>
                                        <a onclick="buy('${o.id}')" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart </a>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->
                    </div>
                </div>
            </div>
        </div>
                                                
   <jsp:include page="Footer.jsp"></jsp:include>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
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
