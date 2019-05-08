-<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="asp.netloginpage.cliente" %>

<!DOCTYPE html>
<form autocomplete="off" id="form2" runat="server">
        

    <div aria-label="right" style="background-color:#8a95a042">
        <div style="text-align: right"><asp:Label   ID="lblUserDetails" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="btnLogout" runat="server" Text="Salida segura" OnClick="btnLogout_Click" />
        
        <img  width="20" height="20" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIDAgNDU5IDQ1OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDU5IDQ1OTsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8Zz4KCTxnIGlkPSJleGl0LXRvLWFwcCI+CgkJPHBhdGggZD0iTTE4MS4wNSwzMjEuM2wzNS43LDM1LjdsMTI3LjUtMTI3LjVMMjE2Ljc1LDEwMmwtMzUuNywzNS43bDY2LjMsNjYuM0gwdjUxaDI0Ny4zNUwxODEuMDUsMzIxLjN6IE00MDgsMEg1MSAgICBDMjIuOTUsMCwwLDIyLjk1LDAsNTF2MTAyaDUxVjUxaDM1N3YzNTdINTFWMzA2SDB2MTAyYzAsMjguMDUsMjIuOTUsNTEsNTEsNTFoMzU3YzI4LjA1LDAsNTEtMjIuOTUsNTEtNTFWNTEgICAgQzQ1OSwyMi45NSw0MzYuMDUsMCw0MDgsMHoiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
        </div>
            <br>       <center><img src="img/davivienda.png" border="2" width="900" height="120"></center>
    </div>
    <asp:Label ID="lblErrorMessage" runat="server" Text="Credenciales erroneas" ForeColor="Red"></asp:Label>

<asp:GridView ID="GridView2" runat="server"></asp:GridView>   
                                       
                 <table  class="btn float-center"><tr><td>desde</td><td>hasta</td></tr>
                     <tr><td><input  ID="inicio" runat="server"></input></td><td><input  ID="fin" runat="server"></input></td></tr>
                 </table>  
    <br />
                    

                            <div>
                                <asp:Button type="submit" ID="btnconsultar" runat="server" Text="Consultar"  class="btn float-center login_btn" OnClick="btnConsultar_Click" />

                            </div>
	
					<asp:gridview  class="float-center" ID="GridView3" runat="server"></asp:gridview>

       
    <br />
    <br />

</form>
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="estilo-cliente.css">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!------ Include the above in your HEAD tag ---------->
    <head>
        <script type="text/javascript">
            $( "#inicio" ).datepicker({
                dateFormat: "yy-mm-dd"
            });
            $( "#fin" ).datepicker({
              dateFormat: "yy-mm-dd"
            });
        </script>

    </head>

<section runat="server" style="background-color:#9e9e9e26">
    <div class="container">
    	<div class="row">
    	    <h1 class="text-center"><span>Bienvenido</span><i class="fa fa-heart"> <asp:Label   ID="lblUserDetails2" runat="server" Text=""></asp:Label></h1></i>
    	    
    		<div runat="server" class="col-md-4">
    		    <div class="card profile-card-1">
                </div>
                <p class="mt-3 w-100 float-left text-center"><strong>Basic Profile Card</strong></p>
    		</div>
    		
    		<div class="col-md-4">
    		    <div class="card profile-card-2">
                    <div class="card-img-block">
                        <img class="img-fluid" src="https://images.pexels.com/photos/870903/pexels-photo-870903.jpeg?w=940&h=650&auto=compress&cs=tinysrgb" alt="Card image cap">
                    </div>
                    <div class="card-body pt-5">
                        <img src="https://randomuser.me/api/portraits/men/64.jpg" alt="profile-image" class="profile"/>
                        <h5 class="card-title">Landon Hunt</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <div class="icon-block"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"> <i class="fa fa-twitter"></i></a><a href="#"> <i class="fa fa-google-plus"></i></a></div>
                    </div>
                </div>
                <p class="mt-3 w-100 float-left text-center"><strong>Social Profile Card</strong></p>
    		</div>
    		
    		<!--Profile Card 3-->
    		<div class="col-md-4">
    		    <div class="card profile-card-3">
    		        <div class="background-block">
    		            <img src="https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" alt="profile-sample1" class="background"/>
    		        </div>
    		        <div class="profile-thumb-block">
    		            <img src="https://randomuser.me/api/portraits/men/41.jpg" alt="profile-image" class="profile"/>
    		        </div>
    		        <div class="card-content">
                    <h2>Justin Mccoy<small>Designer</small></h3>
                    <div class="icon-block"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"> <i class="fa fa-twitter"></i></a><a href="#"> <i class="fa fa-google-plus"></i></a></div>
                    </div>
                </div>
                <p class="mt-3 w-100 float-left text-center"><strong>Modren Profile Card</strong></p>
    		</div>
    		
    		<!--Profile Card 4-->
    		<div class="col-md-4 mt-4">
    		    <div class="card profile-card-4">
                    <div class="card-img-block">
                        <div class="info-box">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                        <img class="img-fluid" src="https://images.pexels.com/photos/965157/pexels-photo-965157.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" alt="Card image cap">
                    </div>
                    <div class="card-body pt-5">
                        <img src="https://randomuser.me/api/portraits/women/14.jpg" alt="profile-image" class="profile"/>
                        <h5 class="card-title text-center">Gail Schmidt</h5>
                        <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <div class="icon-block text-center"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"> <i class="fa fa-twitter"></i></a><a href="#"> <i class="fa fa-google-plus"></i></a></div>
                    </div>
                </div>
                <p class="mt-3 w-100 float-left text-center"><strong>Info block with hover</strong></p>
    		</div>
    		
    		<!--Profile Card 5-->
    		<div class="col-md-4 mt-4">
    		    <div class="card profile-card-5">
    		        <div class="card-img-block">
    		            <img class="card-img-top" src="https://images.unsplash.com/photo-1517832207067-4db24a2ae47c" alt="Card image cap">
    		        </div>
                    <div class="card-body pt-0">
                    <h5 class="card-title">Florence Garza</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                  </div>
                </div>
                <p class="mt-3 w-100 float-left text-center"><strong>Card with Floting Picture</strong></p>
    		</div>
    		
    	</div>
    </div>
</section>