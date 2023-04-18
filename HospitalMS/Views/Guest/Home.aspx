<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HospitalMS.Views.Guest.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
</head>
<body >
    <!--

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    -->
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
    <a class="navbar-brand" href="#">HSM- CUTM</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link "  href="">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="">Laboratorian</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="">Receptionist</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="../Login.aspx">Login</a>
        </li>
                  
      </ul>
      
    </div>
  </div>
</nav>

        <div class="row" style="background-image:url(../../Assets/Images/LoginBack4.jpg);height:450px; background-size:cover">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <div class="row" style="height:100px"></div>
                <h2>Your Health is Our Only Priority</h2>
                <p class="h6">Our Hospital Has been created in 2023</p>
            </div>
            

        </div>
        <div class="row bg-primary">
            <div class="row" style="height:20px"></div>
            <div class="col-md-2 bg-light offset-1">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-6">
                        <h5 class="text-center">Surgery</h5>
                        <p>The Hospital has a top class Surgery Department with qualified  Doctors</p>
                    </div>
                </div>
            </div>
            <div class="col-md-2 bg-light offset-1">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-6">
                        <h5 class="text-center">Surgery</h5>
                        <p>The Hospital has a top class Surgery Department with qualified  Doctors</p>
                    </div>
                </div>
            </div>
            <div class="col-md-2 bg-light offset-1">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-6">
                        <h5 class="text-center">Surgery</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-2 bg-light offset-1">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-6">
                        <h5 class="text-center">Surgery</h5>
                    </div>
                </div>
            </div>
            
        </div>

    </div>

</body>
</html>
