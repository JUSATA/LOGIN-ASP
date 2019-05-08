<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultar.aspx.cs" Inherits="asp.netloginpage.consultar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
                <meta charset="utf-8" />  
    <link rel="stylesheet" type="text/css" href="estilo-empleado.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>  
    <script type="text/javascript">  

    </script>  

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
    </head>
        <body>
            <form id="form1" runat="server">
                    <table  class="btn float-center"><tr><td>consulta</td></tr>
                        <tr><td><input  ID="id" runat="server"></td></tr>
                    </table>  
                    <br />
                    <div>
                     <asp:Button type="submit" ID="btnconsultar" runat="server" Text="Consultar"  class="btn float-center login_btn" OnClick="btnConsultar_Click" />
                    </div>
                    <div>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                                 <div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Nombre</th>
        <th scope="col">IdPais</th>
        <th scope="col">IdSexo</th>
        <th scope="col">FechaNacimiento</th>
        <th scope="col">Correo</th>
        <th scope="col">IdEducacion</th>
        <th scope="col">IdContextura</th>
        <th scope="col">sexo interes</th>
        <th scope="col">foto-titulo</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">1</th>
        <td><%#Eval("Nombre") %></td>
        <td><%#Eval("IdPais") %></td>
        <td><%#Eval("IdSexo") %></td>
        <td><%#Eval("FechaNacimiento") %></td>
        <td><%#Eval("Correo") %></td>
        <td><%#Eval("IdEducacion") %></td>
        <td><%#Eval("IdContextura") %></td>
        <td><%#Eval("IdSexoInteres") %></td>
        <td><img src="<%#Eval("ruta") %>" height="100"  width="100" /> %></td>
      </tr>
      <tr>
    </tbody>
  </table>
</div>

                        </ItemTemplate>
                    </asp:DataList>
                    </div>
                 <asp:Label ID="lblErrorMessage" style="display:none" runat="server" Text="No hay datos" ForeColor="Red"></asp:Label>

            </form>
        </body>
</html>
