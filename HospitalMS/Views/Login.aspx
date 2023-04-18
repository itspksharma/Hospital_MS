<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalMS.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../CSS/Login.css" />
</head>
<body style="background-image:url(../Assets/Images/LoginBack3.jpg); background-size:cover">
    <div class="container-fluid">
          <div class="row" style="height:120px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <h1 class="caption-top">HSM- CUTM</h1>
                <form id="form2" runat="server">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
 
  <div class="d-grid">
      <button type="submit" class="btn btn-primary">login</button>

  </div>
  
</form>
                <div class="row" style="height:10px">

                </div>

            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    
    
</body>
</html>
