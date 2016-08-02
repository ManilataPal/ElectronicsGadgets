<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Adding category</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST" role="form"
						action="products" commandName="add" enctype="multipart/form-data">

						<div class="form-group">
							<label for="categoryName" class="col-sm-3 control-label">Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="categoryName"
									placeholder="Enter The category name" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="categoryDescription" class="col-sm-3 control-label">Description</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="categoryDescription"
									placeholder="Enter the category Description" required="required">
							</div>
						</div>
						
						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-success btn-sm">ADD CATEGORY</button>

							</div>
						</div>
					</form>
				</div>
			</div>




		</div>


	</div>



</div>
</div>
</div>

<!-- fOR LISTING OF CATEGORIES -->

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
							<strong class=""><b>List of All Categories</b> <strong></br>
							
							<form role="search" class="navbar-form navbar-center">
                <div class="form-group">
                <input type="text" id="search" placeholder="Search" class="form-control">
                 </div>
					<button class="btn btn-primary">Search</button>
                
                    
               
            </form>

						</div>
						<div class="table-responsive">
						<c:if test="${!empty category}"> //attention needed
							<table class="table" border="1" id="tab1">
								<thead>
									<tr>
										<th>Category ID</th>
										<th>Category Name</th>
										<th>Category Description</th>
										<th>Edit Category</th>
										<th>Delete Category</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${category}" var="cat">
										<tr>
											<td><c:out value="${cat.CategoryId}" /></td>
											<td><c:out value="${cat.categoryName}" /></td>
											<td><c:out value="${cat.categoryDescription}" /></td>
											<td><a href="<c:url value='/editProduct?categoryId=${cat.categoryId}' />" >Edit</a></td>
											<td><a href='<c:url value="/delete/${cat.categoryId}" />' >Delete</a></td>
										</tr>
									</c:forEach>
									</tbody>
							</table>
						</c:if>
						</div>
					</div>
				</div>
			</div>
<%@ include file="footer.jsp"%>