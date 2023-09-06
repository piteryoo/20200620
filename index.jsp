<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Welcome</title>
</head>
<body>
    <nav class="navbar navbar-expand navbar-dark bg-dark">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="./index.jsp">꾸팡</a>
            </div>
        </div>
    </nav>
    
    <%@ page contentType="text/html; charset=utf-8"%>
    <%! String greeting = "상단 페이지 : 쇼핑몰 메인화면 문자열 000님";
        String tagline = "하단 페이지 : 확인";%>
    
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3"><%=greeting%></h1>
        </div>
    </div>    
    <div class="container">
        <div class="text-center">
            <h3><%=tagline%></h3>
        </div>
        <hr>
    </div>    
    
    <%@ page import="java.util.Date"%>
    <% 
    Date day = new java.util.Date();
    String am_pm;
    int hour = day.getHours();
    int minute = day.getMinutes();
    int second = day.getSeconds();
    if (hour / 12 == 0) {
        am_pm = "AM";
    } else {
        am_pm = "PM";
        hour = hour - 12;
    }
    String CT = hour + ":" + minute + ":" + second + " " + am_pm;
    out.println("현재 접속  시각: " + CT + "<br>");
    %>

    <footer class="container">
        <p>&copy; WebMarket</p>
    </footer>
</body>
</html>
