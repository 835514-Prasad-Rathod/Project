﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Touristchoice.master" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="height: 179px">
            <html>  
  <head>  
    <title></title>  
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">  
    <meta charset="utf-8">  
    <style type="text/css">  
      html, body, #canvasMap {  
        height: 100%;  
        margin: 0px;  
        padding: 0px  
      }  
    </style>  
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>  
    <script type="text/javascript">
        var map;
        function LoadGoogleMAP() {
            var SetmapOptions = {
                zoom: 10,
                center: new google.maps.LatLng(-34.397, 150.644)
            };
            map = new google.maps.Map(document.getElementById('canvasMap'),
      SetmapOptions);
        }

        google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);

    </script>  
  </head>  
  <body>  
      <div id="canvasMap"> </div>  
  </body>  
</html>  
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

