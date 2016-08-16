<%@ include file="header.jsp" %>

						<div class="table-responsive" data-max="30" data-min="11">
						
							<table class="table" border="1" id="tab1">
								<thead>
									<tr>
										<th>Product ID</th>
										<th>Product Name</th>
										<th>Product Group</th>
										<th>Product Description</th>
										<th>Product Quantity</th>
										<th>Product Price</th>
										<th>Image</th>
										
										
									</tr>
								</thead>
								<tbody>
									
										<tr>
											<td><c:out value="${getP.productId}" /></td>
											<td><c:out value="${getP.productName}" /></td>
											<td><c:out value="${getP.productGroup}" /></td>
											<td><c:out value="${getP.productDescription}" /></td>
											<td><c:out value="${getP.productQuantity}" /></td>
											<td><c:out value="${getP.price}" /></td>
											<td><img src="<c:url value='/resources/images/${getP.productId}.png' />" height="50" width="50" /></td>
											</tr>
									
									</tbody>
							</table>
						
						</div>				
						<a href="ShoppingCart" class="btn btn-primary" role="button">Add to Cart </a>							
											
											
<%@ include file="footer.jsp" %>