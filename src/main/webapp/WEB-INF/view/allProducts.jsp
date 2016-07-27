<%@ include file="header.jsp" %>

<div class="container" align="left">

				<div class="col-md-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong class="">List of All Products </strong></br>
							
							<form role="search" class="navbar-form navbar-left">
                <div class="form-group">
                <input type="text" placeholder="Search" class="form-control">
					<button class="btn btn-primary">Search</button>
                
                    
                </div>
            </form>

						</div>

						<c:if test="${!empty product}">
							<table class="table-responsive" border="1">
								<thead>
									<tr>
										<th>Product ID</th>
										<th>Product Name</th>
										<th>Product Group</th>
										<th>Product Description</th>
										<th>Product Quantity</th>
										<th>Product Price</th>
										<th>Edit Product</th>
										<th>Delete Product</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${product}" var="prod">
										<tr>
											<td><c:out value="${prod.productId}" /></td>
											<td><c:out value="${prod.productName}" /></td>
											<td><c:out value="${prod.productGroup}" /></td>
											<td><c:out value="${prod.productDescription}" /></td>
											<td><c:out value="${prod.productQuantity}" /></td>
											<td><c:out value="${prod.price}" /></td>
											<td><a href="editproduct">Edit</a></td>
											<td><button>Delete</button></td>
										</tr>
									</c:forEach>
									</tbody>
							</table>
						</c:if>
						
					</div>
				</div>
			</div>


<%@ include file="footer.jsp" %>
