<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Board | Login </title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
</head>

<body class="login-page">
<div class="login-box">
<div class="login-logo">
<a href = "/"><b>Board Project</b></a>
</div><!--/.login-logo -->

<div class="login-box-body">
<p class="login-box-msg" style="font-size:150%;">Sign up to start!</p>

<form method="POST">

<div class="form-group has-feedback">
<label for="userId">ID</label>
<input type="text" name="userId" id = "userId" class="form-control" placeholder="ID" required>
<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label for="userpw">PW</label>
<input type="password" name="userpw" id = "userpw" class="form-control" placeholder="Password" required>
<span class="glyphicon glyphicon-lock form-control-feedback"></span>
</div>

 
<!--userName-->
<div class="form-group">
<label for="username">NAME</label>
<input type="text" class="form-control" id="username" name="username" placeholder="username" required>
<span class="glyphicon glyphicon-user form-control-feedback"></span>
</div>

<div class="submit_button">
<button type="submit" class="btn btn-primary btn btn-block btn-flat">Sign Up</button>
</div>

</form>
</div>
</div>



</html>