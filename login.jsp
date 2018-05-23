



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body background="bg.jpg" style="background-repeat: no-repeat;height: 100%;background-size:30000px 30000px;"> 

    <!-- Start your project here-->
    <nav class="navbar navbar-dark green" style="height:100px;">
    
        
  
    <h1>Enter the Login details:</h1>
    

<div class="text-center">
        <a href="register.jsp"><button class="btn btn-elegant">Register</button></a>
    </div>
    
    
</nav>  
    
    <!-- Form login -->
<form style="border:2px solid white;width:700px;margin:40px 400px;padding:10px;" action="afterlogin.jsp" method="get">
    <p class="h5 text-center mb-4" style="color:white;"><u>Login:</u></p>

    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
		 <label for="defaultForm-email">Your email</label>
        <input type="email" id="defaultForm-email" class="form-control" name="mail" style="color:white;">
       
    </div>

    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
		 <label for="defaultForm-pass">Your password</label>
        <input type="password" id="defaultForm-pass" class="form-control" name="pwd" style="color:white;">
       
    </div>

    <div class="text-center">
        <button class="btn btn-elegant">Login</button>
    </div>
</form>
<!-- Form login -->
                
    
    
    
    
    
    

</body>

</html>
