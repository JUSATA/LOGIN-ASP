<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="asp.netloginpage.perfil" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="estilo-cliente.css">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <h3></h3>
</head>
<body>
              <div class="text-center darken-grey-text mb-4">
                <h1 class="font-bold mt-4 mb-3 h3">Insertar perfil</h1>
            </div>
    <div class="container">
       <table class="table table-striped">
          <tbody>
                <td colspan="1">
                   <form runat="server" class="well form-horizontal">
                      <fieldset>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Nombre</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="Nombre" runat="server"  class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">fecha</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input ID="fecha" runat="server"  type="date"  name="addressLine1" placeholder="Address Line 1" class="form-control" required="true" value="" ></div>
                            </div>
                         </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Correo</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input  id="correo" runat="server"  type="email" name="addressLine2" placeholder="Address Line 2" class="form-control" required="true" value="" ></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">clave</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="clave" runat="server" name="Clave" placeholder="clave" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">foto persona</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span> <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                            </div>
                         </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">foto aficcion</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span> <asp:FileUpload ID="FileUpload2" runat="server" />
                              </div>
                            </div>
                         </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">lugar</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="lugar" runat="server"  class="form-control" required="true" value="" type="text"></div>
                        
                                  </div>
                            </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">foto lugares</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span> <asp:FileUpload ID="FileUpload3" runat="server" />
                        
                            </div>
                         </div></div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Aficcion</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                                
                                <select runat="server"  ID="Select1" >
                                    
                                </select>
                               </div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Pais</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <select runat="server"  ID="Select4" >
                                   
                                            </select>    
                                
                               </div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Educacion</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                                
                                <select runat="server"  ID="Select5" >

                                </select>
                               </div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">CONTEXTURA</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                                
                                <select runat="server"  ID="editprefixes" >
                                </select>
                               </div>
                            </div>
                         </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">sexo interes</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                                
                                <select runat="server"  ID="Select3" >
                                </select>
                               </div>
                            </div>
                         </div>
                      </fieldset>
                       <asp:Button ID="Button1" type="submit"   onclick="ingresar_Click" runat="server" class="btn btn-primary rounded-4" text="Insertar " />
                   </form>
                </td>
                        </tbody>
                            <asp:Label ID="lblErrorMessage" style="display:none" runat="server" Text="agregado" ForeColor="Red"></asp:Label>

       </table>
    </div>

</body>
           <script type="text/javascript">

        </script>
    
</html>
