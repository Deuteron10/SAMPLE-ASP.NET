<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Erythritol.aspx.cs" Inherits="Erythritol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>Erythritol</title>
            <style>


               /* #div2 {
                  --bg-color: #0094ff;
                  background-color: var(--bg-color);
                } */
            </style>
            <script>
                function GetMyValue()
                {
                    
                    
                } 

            </script>

        </head>
        <body>
            <div class="container">
                    <div class="row" id="div2">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h1><asp:Label ID="ste1" runat="server"></asp:Label></h1>
                            </div>
                            <div class="panel-body">
                                <asp:Label ID="ste2" runat="server"></asp:Label>
                                <asp:Label ID="ste3" runat="server"></asp:Label>
                            </div>
                            <center><img src="img/erythritol.png" alt="aspartame" class="img-thumbnail"></center>
                        </div>
                    </div>
            </div>
        </body>
    </html>
</asp:Content>

