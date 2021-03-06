<%@ include file="header.jsp" %>
<script>
//Search Box From Heder products
$(window).load(function()
		{
	searchTable($('#search').val());
		})

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
							<strong class=""><b>List of All Products</b> </strong></br>
							
							<form role="search"  class="navbar-form navbar-center">
                <div class="form-group">
                <input type="text" id="search" value="${param.item}" placeholder="Search" class="form-control">
                 </div>
					<button class="btn btn-primary">Search</button>
                
                    
               
            </form>

						</div>
						<div class="table-responsive" data-max="30" data-min="11">
						<c:if test="${!empty product}">
							<table class="table" border="1" id="tab1">
								<thead>
									<tr>
										<th>Product ID</th>
										<th>Product Name</th>
										<th>Product Description</th>
										<th>Product Quantity</th>
										<th>Product Price</th>
										<th>Image</th>
										<th>Product Group</th>
										<th>Product Supplier</th>
										<th>Product Operations</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${product}" var="prod">
										<tr>
											<td><c:out value="${prod.productId}" /></td>
											<td><c:out value="${prod.productName}" /></td>
											
											<td><c:out value="${prod.productDescription}" /></td>
											<td><c:out value="${prod.productQuantity}" /></td>
											<td><c:out value="${prod.price}" /></td>
											<td><img src="<c:url value='/resources/images/${prod.productId}.png' />" height="50" width="50" /></td>
											<td><c:out value="${prod.productGroup}" /></td>
											<td><c:out value="${prod.productSupplier}" /></td>
											<td><a href="<c:url value='/viewDetails?productId=${prod.productId}' />" >View</a>
											<c:if test="${pageContext.request.userPrincipal.name=='admin'}">
											<a href="<c:url value='/editProduct?productId=${prod.productId}' />" >Edit</a>
											<a href='<c:url value="/delete/${prod.productId}" />' >Delete</a>
											</c:if>
											</td>
										</tr>
									</c:forEach>
									</tbody>
							</table>
						</c:if>
						</div>
					</div>
				</div>
			</div>


<%@ include file="footer.jsp" %>
