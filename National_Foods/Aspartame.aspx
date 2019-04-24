<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Aspartame.aspx.cs" Inherits="Aspartame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>Aspartame</title>
            <style>


              /*  #div2 {
                  --bg-color: #FFF000;
                  background-color: var(--bg-color);
                } */
            </style>
            <script>
                function GetMyValue()


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
                            <!--<div class="col-md-4"></div>
                            <div class="col-md-4"><img src ="img/aspartame.jpg" /></div>
                            <div class="col-md-4"></div> -->
                            <img src="img/aspartame.jpg" alt="aspartame" class="img-thumbnail">
                        </div>
                    </div>
            </div>
        </body>
        <!--<script type="text/javascript">
            var colorr = <%=ste3%>;
            $("div2").css('background-color');
        </script> -->
    </html>
</asp:Content>

