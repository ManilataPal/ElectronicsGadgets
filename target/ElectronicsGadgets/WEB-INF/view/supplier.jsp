<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Adding Supplier</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST" role="form"
						action="supplier" commandName="add">

 						<div class="form-group">
							<label for="supplierId" class="col-sm-3 control-label">Supplier Id</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierId"
									placeholder="Enter The supplier Id" required="required">
							</div>
						</div>
 						<div class="form-group">
							<label for="supplierName" class="col-sm-3 control-label">Supplier Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierName"
									placeholder="Enter The supplier name" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="supplierEmail" class="col-sm-3 control-label">Supplier Email</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierEmail"
									placeholder="Enter The supplier Email" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="supplierDescription" class="col-sm-3 control-label">Description</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierDescription"
									placeholder="Enter the supplier Description" required="required">
							</div>
						</div>
							<div class="form-group">
							<label for="supplierAddress" class="col-sm-3 control-label">Address</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierAddress"
									placeholder="Enter the Supplier Address" required="required">
							</div>
						</div>
						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-success btn-sm">ADD SUPPLIER</button>

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

<!-- fOR LISTING OF SUPPLIER -->

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
							<strong class=""><b>List of All Suppliers</b> <strong></br>
							
							<form role="search" class="navbar-form navbar-center">
                <div class="form-group">
                <input type="text" id="search" placeholder="Search" class="form-control">
                 </div>
					<button class="btn btn-primary">Search</button>
                
                    
               
            </form>

						</div>
						<div class="table-responsive">
						<c:if test="${!empty allCategory}"> 
							<table class="table" border="1" id="tab1">
								<thead>
									<tr>
										<th>Supplier ID</th>
										<th>Supplier Name</th>
										<th>Supplier Email</th>
										<th>Supplier Address</th>
										<th>Supplier Description</th>
										<th>Edit Supplier</th>
										<th>Delete Supplier</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${allSupplier}" var="sup">
										<tr>
											<td><c:out value="${sup.supplierId}" /></td>
											<td><c:out value="${sup.supplierName}" /></td>
											<td><c:out value="${sup.supplierEmail}" /></td>
											<td><c:out value="${sup.supplierAddress}" /></td>
											<td><c:out value="${sup.supplierDescription}" /></td>
											<td><a href="<c:url value='/editSupplier?supplierId=${sup.supplierId}' />" >Edit</a></td>
											<td><a href='<c:url value="/deleteSup/${sup.supplierId}" />' >Delete</a></td>
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