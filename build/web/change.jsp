
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Change Password</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <style>
            .register-photo {
                background:#f1f7fc;
                padding:80px 0;
            }

            .register-photo .image-holder {
                display:table-cell;
                width:auto;
                background:url(../../assets/img/meeting.jpg);
                background-size:cover;
            }

            .register-photo .form-container {
                display:table;
                max-width:500px;
                width:60%;
                margin:0 auto;
                box-shadow:1px 1px 5px rgba(0,0,0,0.1);
            }

            .register-photo form {
                display:table-cell;
                width:400px;
                background-color:#ffffff;
                padding:40px 60px;
                color:#505e6c;
            }

            @media (max-width:991px) {
                .register-photo form {
                    padding:40px;
                }
            }

            .register-photo form h2 {
                font-size:24px;
                line-height:1.5;
                margin-bottom:30px;
            }

            .register-photo form .form-control {
                background:#f7f9fc;
                border:none;
                border-bottom:1px solid #dfe7f1;
                border-radius:0;
                box-shadow:none;
                outline:none;
                color:inherit;
                text-indent:6px;
                height:40px;
            }

            .register-photo form .form-check {
                font-size:13px;
                line-height:20px;
            }

            .register-photo form .btn-primary {
                background:#f4476b;
                border:none;
                border-radius:4px;
                padding:11px;
                box-shadow:none;
                margin-top:35px;
                text-shadow:none;
                outline:none !important;
            }

            .register-photo form .btn-primary:hover, .register-photo form .btn-primary:active {
                background:#eb3b60;
            }

            .register-photo form .btn-primary:active {
                transform:translateY(1px);
            }

            .register-photo form .already {
                display:block;
                text-align:center;
                font-size:12px;
                color:#6f7a85;
                opacity:0.9;
                text-decoration:none;
            }


        </style>
    </head>

    <body>
        <div class="register-photo">
            <div class="form-container">               
                <form method="post" action="change">
                    <h2 class="text-center"><strong>Change Password</strong> </h2>
                    <div class="form-group"><input class="form-control" type="text" name="user" placeholder="Username" value="${sessionScope.account.username}" ></div>
                    <div class="form-group"><input class="form-control" type="password" name="opass" placeholder="Old Password" value="${sessionScope.account.password}"></div>
                    
                    <div class="form-group"><input class="form-control" type="password" name="npass" placeholder="New Password"></div>
                    <div class="form-group"><input class="form-control" type="password" name="rpass" placeholder="RE_Password"></div>


                    <div style="height: 15px; padding-top: 15px">
                        <h5 style="color: red; text-align: center">${requestScope.ms}</h3>
                    </div>
                    <div class="form-group"><button class="btn btn-info btn-block" type="submit">Change</button></div>
                    <a href="home" class="already">You don't want change Password? Back here.</a>
                </form>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
