<%@ include file="header.jsp" %>
<script>


$(document).ready(function()
		{
			$('#search').keyup(function()
			{
				searchTable($(this).val());
			});
		});

		function searchTable(inputVal)
		{
			var table = $('#tab1');
			table.find('tr').each(function(index, row)
			{
				var allCells = $(row).find('td');
				if(allCells.length> 0)
				{
					var found = false;
					allCells.each(function(index, td)
					{
						var regExp = new RegExp(inputVal, 'i');
						if(regExp.test($(td).text()))
						{
							found = true;
							return false;
						}
					});
					if(found == true)$(row).show();else $(row).hide();
				}
			});
		}
</script>
<div class="container" align="left">

				<div class="col-md-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong class="">List of All Products </strong></br>
							
							<form role="search" class="navbar-form navbar-left">
                <div class="form-group">
                <input type="text" id="search" placeholder="Search" class="form-control">
					<button class="btn btn-primary">Search</button>
                
                    
                </div>
            </form>

						</div>

						<c:if test="${!empty product}">
							<table class="table-responsive" border="1" id="tab1">
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
											<td><a href="<c:url value='/editProduct?productId=${prod.productId}' />" >Edit</a></td>
											<td><a href='<c:url value="/delete/${prod.productId}" />' >Delete</a></td>
										</tr>
									</c:forEach>
									</tbody>
							</table>
						</c:if>
						
					</div>
				</div>
			</div>


<%@ include file="footer.jsp" %>
