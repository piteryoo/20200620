<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="example.*" %>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage = "../exception/product_not_found.jsp" %>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>상품 상세 정보</title>
</head>

    <body>
    	<%@ include file="top_menu_ad.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 상세 정보</h1>
		</div>
	</div>
	<%
   String id = request.getParameter("id");
	ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id); 
    %>

	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%></p>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
				<p><b>제조사</b> : <%=product.getManufacturer()%>
				<p><b>분류</b> : <%=product.getCategory()%>
				<p><b>재고 수</b> : <%=product.getUnitsInStock()%>
				<h4><%=product.getUnitPrice()%>원</h4>
                
                <div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">상품 이미지 원본</h5>
                    <p class="card-text">출처 : 가발나라</p>
                    </div>
                </div>
	<p><a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a href="index.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
		</div>
		</div>
		<hr>
	</div>
    <%@ include file="/footer.jsp" %>
</body>
</html>

