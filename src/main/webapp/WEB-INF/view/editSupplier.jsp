<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Edit Supplier</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST" role="form"
						action="editSupplier/${getS.supplierId}" commandName="edit">

						<div class="form-group">
							<label for="supplierId" class="col-sm-3 control-label">Supplier
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierId"
									value="${getS.supplierId}" disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label for="supplierName" class="col-sm-3 control-label">Supplier
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierName"
									value="${getS.supplierName}" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="supplierEmail" class="col-sm-3 control-label">Supplier
								Email</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierEmail"
									value="${getS.supplierEmail}" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="supplierAddress" class="col-sm-3 control-label">Supplier
								Address</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="supplierAddress"
									value="${getS.supplierAddress}" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="suDescripplierption" class="col-sm-3 control-label">Supplier
								Description</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"
									name="supplierDescription"
									value="${getS.supplierDescription}" required="required">
							</div>
						</div>
						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-success btn-sm">EDIT</button>

							</div>
						</div>
					</form>

				</div>


			</div>
 


		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>