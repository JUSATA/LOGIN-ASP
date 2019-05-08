<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="asp.netloginpage.Login" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head  runat="server">

	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Acceso</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form  id="form1" runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Usuario" ></asp:TextBox>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Contraseña"></asp:TextBox>
						
					</div>

					<div class="row align-items-center remember">
						<input id="cliente" value="False" runat="server"   class="sev_check" checked type="checkbox">Cliente
					</div>
                    <div class="row align-items-center remember">
						<input  id="empleado" value="True"  runat="server"  class="sev_check"  type="checkbox">Empleado
					</div>
					<div class="form-group">
						<asp:Button type="submit" ID="btnLogin" runat="server" Text="Ingresar"  class="btn float-right login_btn" OnClick="btnLogin_Click" />
					</div>
				</form>
                <asp:Label ID="lblErrorMessage" runat="server" Text="Credenciales erroneas" ForeColor="Red"></asp:Label>
			</div>
			<div class="card-footer"
				<div class="d-flex justify-content-center links">
					No recuerdas la cuenta ?<a href="#">Registrar</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">no recuerdas la contraseña?</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
        <script type="text/javascript">
            $('.sev_check').click(function() {
              $('.sev_check').not(this).prop('checked', false);
            });

        </script>
</html>