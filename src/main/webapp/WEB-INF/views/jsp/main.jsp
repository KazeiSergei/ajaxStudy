<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ajax</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $("#jQuery").click(function () {
                $.get("/ajax/jQuery", function (data) {
                    document.getElementById("divId").innerHTML = data;
                });
            });
        });
    </script>
</head>
<body>
<div id="divId"><h2>Hello everybody</h2></div>
<button type="button" onclick="loadXMLDoc()">Update with XMLHttpRequest</button>
<button type="button" id="jQuery">Update with jQuery</button>
</body>
</html>