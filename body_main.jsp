<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "MOJARAM에서 자신감 UP 볼륨 UP ";
	String tagline = "하단 페이지 : 확인";%>

  <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
 
 <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
    <div class="card bg-dark text-white">
        <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">가발 이미지 샘플</h5>
            <p class="card-text">출처 : 가발나라</p>
        </div>
    </div>
    <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%></p>
                <p><%=product.getUnitPrice()%>원</p>
</div>
			<%
				}
			%>
		</div>
		<hr>
        </div>
      

<div class="card bg-dark text-white">
    <img src="image/himo.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">첫 구매 고객 이벤트!</h5>
    <p class="card-text">출처 : 하이모</p>
  </div>
</div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        2023 신상 가발
      </a>
      <a href="#" class="list-group-item list-group-item-action"> 신상 남성 가발</a>
     <a href="#" class="list-group-item list-group-item-action"> 신상 여성 가발</a>
      
    </div>