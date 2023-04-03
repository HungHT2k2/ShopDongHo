<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRJ_SHOP</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style_1.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: auto;
                max-height: 100%;
            }
        </style>
    </head>
    <body>
        <section id="checkout">           
            <div class="container">
                <a class="navbar-brand" href="home"><i class="fa fa-home fa-lg" aria-hidden="true"></i></a>
                <div class="row">
                    <div class="col-md-12">
                        <div class="checkout-area">
                            <form action="checkout1" method="post">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="checkout-left">
                                            <div class="panel-group">


                                                <!-- Shipping Address -->
                                                <div class="panel panel-default aa-checkout-billaddress">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title" style="color:#754110">
                                                            Địa chỉ giao hàng
                                                        </h4>
                                                    </div>
                                                    <div id="collapseFour">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Họ Tên*" required="required" name="transaction_name">
                                                                    </div>                             
                                                                </div>

                                                            </div> 

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="email" placeholder="Email*" required="required" name="transaction_email">
                                                                    </div>                             
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="tel" placeholder="Số điện thoại*" required="required" name="transaction_phone">
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <textarea cols="8" rows="3" required="required" placeholder="Địa chỉ*" name="transaction_address"></textarea>
                                                                    </div>                             
                                                                </div>                            
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <label>Title</label>
                                                                        <textarea cols="8" rows="3" id='transaction_mess' placeholder="Ghi chú" name="transaction_mess" style="width: 718px; height: 126px;"></textarea>
                                                                    </div>                             
                                                                </div>                            
                                                            </div>                 
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="checkout-right">
                                            <h4>Thông tin đơn hàng</h4>
                                            <div class="aa-order-summary-area">
                                                <table class="table table-responsive">
                                                    <thead>
                                                        <tr>
                                                            <th>Sản phẩm</th>
                                                            <th>Số tiền</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Tạm tính</th>
                                                            <td> 492 $</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Thuế</th>
                                                            <td>0 $</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Tổng cộng </th>
                                                            <td><strong>492 $</strong></td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                            <h4>Hình thức thanh toán</h4>

                                            <div class="aa-payment-method">                    
                                                <label for="#"><input type="radio" id="cashdelivery" name="transaction_payment" checked="" value="0"> Thanh toán khi nhận hàng (COD) </label>
                                                <label for="#"><input type="radio" id="paypal" name="transaction_payment" value="1"> Thanh toán bằng thể ngân hàng (ATM) </label>
                                                <img src="/WebApplication1/view/client/assets/img/paypal.jpg" border="0" alt="#">                                     
                                                <input type="submit" value="Đặt hàng" class="aa-browse-btn">
                                            </div>  

                                            <br>                   
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
        <script type="text/javascript">
            var editor = '';
            $(document).ready(function () {
                editor = CKEDITOR.replace('transaction_mess');
            });

        </script>

    </body>




