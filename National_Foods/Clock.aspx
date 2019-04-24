<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Clock.aspx.cs" Inherits="Clock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>About Us</title>
        </head>
        <body>
            <h1>To-Do</h1>
            <div id="myDIV" class="row">
              <div class="col-md-8">
                  <input type="text"  class="form-control" id="myInput" placeholder="Title...">
              </div>
              <div class="col-md-4">
                  <button type="button" class="btn btn-primary" onclick="newElement()">Add TD</button>
                  <!--<span onclick="newElement()" class="addBtn">Add</span> -->
              </div>
            </div>

            <ul id="myUL">
              <li>Hit the gym</li>
              <li class="checked">Pay bills</li>
              <li>Meet George</li>
              <li>Buy eggs</li>
              <li>Read a book</li>
              <li>Organize office</li>
            </ul>
            <br /><br /><br />
        </body>
        <script type="text/javascript">
            // Create a "close" button and append it to each list item
            var myNodelist = document.getElementsByTagName("LI");
            var i;
            for (i = 0; i < myNodelist.length; i++) {
                  var span = document.createElement("SPAN");
                  var txt = document.createTextNode("\u00D7");
                  span.className = "close";
                  span.appendChild(txt);
                  myNodelist[i].appendChild(txt);
            }

            // Click on a close button to hide the current list item
            var close = document.getElementsByClassName("close");
            var i;
            for (i = 0; i < close.length; i++) {
                  close[i].onclick = function() {
                    var div = this.parentElement;
                    div.style.display = "none";
                  }
            }

        </script>
    </html>
</asp:Content>

