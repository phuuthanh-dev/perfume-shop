<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login Form</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flat-ui/2.3.0/css/flat-ui.min.css" 
          integrity="sha512-6f7HT84a/AplPkpSRSKWqbseRTG4aRrhadjZezYQ0oVk/B+nm/US5KzQkyyOyh0Mn9cyDdChRdS9qaxJRHayww==" 
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style_1.css">
</head>

<body>
    <section class="fxt-template-animation fxt-template-layout1">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-12 fxt-bg-color">
                    <div class="fxt-content">
                        <div class="fxt-header">
                            <a href="home" class="fxt-logo"><img src="images/logo.png" alt="Logo"></a>
                            <div class="fxt-page-switcher">
                                <a href="login" class="switcher-text1 active">Log In</a>
                                <a href="register" class="switcher-text1">Register</a>
                            </div>
                        </div>
                        <div class="fxt-form">
                            <h2>Log In</h2>
                            <p>Log in to continue in our website</p>
                            <form method="post">
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-1">
                                        <input type="text" class="form-control" name="email" placeholder="UserName" required="required">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-2">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                                        <i class="flaticon-padlock"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-3">
                                        <div class="fxt-content-between">
                                            <button type="submit" class="fxt-btn-fill">Log in</button>
                                            <a href="forgot-password-1.html" class="switcher-text2">Forgot Password</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-12 fxt-none-767 fxt-bg-img" data-bg-image="images/figure/aa.jpg"></div>
            </div>
        </div>
    </section>
    <!-- jquery-->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Imagesloaded js -->
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <!-- Validator js -->
    <script src="js/validator.min.js"></script>
    <!-- Custom Js -->
    <script src="js/main_1.js"></script>

</body>


</html>