<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Adding Products</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST" role="form"
						action="products" commandName="add">

						<div class="form-group">
							<label for="productName" class="col-sm-3 control-label">Product
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="productName"
									placeholder="Enter The product name" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="productGroup" class="col-sm-3 control-label">Product
								Group</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="productGroup"
									placeholder="Enter the product group" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="productDescription" class="col-sm-3 control-label">Product
								Description</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"
									name="productDescription"
									placeholder="Enter the product description" required="required">
							</div>
						</div>

						<div class="form-group">
							<label for="productQuantity" class="col-sm-3 control-label">Product
								Quantity</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="productQuantity"
									placeholder="Enter quantity of product" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="price" class="col-sm-3 control-label">Product
								Price</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="price"
									placeholder="Enter the price of product" required="">
							</div>
						</div>

						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-success btn-sm">ADD</button>

							</div>
						</div>
					</form>

				</div>

			</div>

			

		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>