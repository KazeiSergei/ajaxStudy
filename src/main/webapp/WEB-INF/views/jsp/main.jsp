<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ajax</title>
    <script>
        function loadXMLDoc() {
            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("divId").innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET", "/ajax/test", true);
            xmlhttp.send();
        }
    </script>
</head>
<body>
<div id="divId"><h2>Hello everybody</h2></div>
<button type="button" onclick="loadXMLDoc()">Update context</button>
</body>
</html>