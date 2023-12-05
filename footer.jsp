<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<footer class="container">
    <p>&copy; 쇼핑몰 대표 : 유창희, 고유번호 : 20200620, 연락처 : wkzmxm@sungkyul.ac.kr<br> 

    <% 
    Date day = new Date();
    int hour = day.getHours();
    int minute = day.getMinutes();
    int second = day.getSeconds();
    String am_pm = (hour < 12) ? "AM" : "PM";
    hour = (hour >= 12) ? hour - 12 : hour;
    String CT = hour + ":" + minute + ":" + second + " " + am_pm;
    out.println("현재 접속 시각: " + CT + "\n");
    %>
    </p>
</footer>
