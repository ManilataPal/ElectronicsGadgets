<%@ include file="header.jsp" %>

						<section class="container" data-ng-app="cartApp" style="height: 430px;">

		<div class="row"  data-ng-app="myApp" data-ng-controller="myCtrl">
			<div class="col-md-6">
		<img src="<c:url value='/resources/images/${getP.productId }.png' />" height="200" width="200" />

			</div>
			<div class="col-md-6">
                <h2 style="color: blue;">Product Information</h2>
				<h3>${getP.productName}</h3>
				<p>${getP.productDescription}</p>
				<p>
					<strong>Item Code : </strong><span class="label label-warning">${getP.productId}</span>
				</p>
				<p>
					<strong>Product Group :</strong> : ${getP.productGroup}
				</p>
				
				
				<h4>Rs &nbsp;${getP.price}  &nbsp;INR</h4>
			
				<p data-ng-controller="cartController">
					<a href="<spring:url value="/allProducts" />" class="btn btn-success">Back
						
					</a> 
					<a href="<spring:url value="/shoppingCart?productId=${getP.productId }"/>" class="btn btn-warning btn-large" data-ng-click="addToCart('${getP.productId}')">
					Order Now</a>
				</p>
			
			</div>
		</div>
	</section>						
											
											
<%@ include file="footer.jsp" %>