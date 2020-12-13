<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LandlystProjekt.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            z-index: 1;
            left: 10px;
            top: 15px;
            position: relative;
            height: 392px;
            width: 1428px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

       <table>
           <tr>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="Navn"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtNavn" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label2" runat="server" Text="Addresse"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtAddresse" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label3" runat="server" Text="Postnummer"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtPostnummer" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Telefonnummer"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 277px; top: 2px; position: absolute; height: 133px; width: 187px; right: 964px">
        </asp:GridView>
               </td>
               <td>
                   <asp:TextBox ID="txtTelefonnummer" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label5" runat="server" Text="Mail"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
               </td>
           </tr>
               <tr>
               <td>
                   <asp:Label ID="Label6" runat="server" Text="Rumnummer"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtRumnummer" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label7" runat="server" Text="Checkind dato"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtCheckindDato" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label8" runat="server" Text="Checkud dato"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtCheckudDato" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td colspan="2" align="center">
                   <asp:Button ID="Button1" runat="server" Text="Reservér" OnClick="Button1_Click" />
               </td>
           </tr>
       </table>
    </form>
</body>
</html>
