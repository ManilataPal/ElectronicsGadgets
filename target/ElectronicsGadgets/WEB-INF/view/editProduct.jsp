<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Edit Products</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST" role="form"
						action="editproduct/${getP.productId}" commandName="edit" enctype="multipart/form-data">

						<div class="form-group">
							<label for="productId" class="col-sm-3 control-label">Product
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="productId"
									value="${getP.productId}" disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label for="productName" class="col-sm-3 control-label">Product
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="productName"
									value="${getP.productName}" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="productGroup" class="col-sm-3 control-label">Product
								Group</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="productGroup"
									value="${getP.productGroup}" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="productDescription" class="col-sm-3 control-label">Product
								Description</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"
									name="productDescription"
									value="${getP.productDescription}" required="required">
							</div>
						</div>

						<div class="form-group">
							<label for="productQuantity" class="col-sm-3 control-label">Product
								Quantity</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="productQuantity"
									value="${getP.productQuantity}" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="price" class="col-sm-3 control-label">Product
								Price</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="price"
									value="${getP.price}" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="image" class="col-sm-3 control-label">Product
								Image</label>
							<div class="col-sm-8">
								<img src="<c:url value='/resources/images/${getP.productId}.png' />" height="50" width="50" />
								<div class="col-sm-8">
								<input type="file" class="form-control" name="productImage">
							</div>
							</div>
						</div> 
						<!--  <div class="form-group">
							<label for="productImage" class="col-sm-3 control-label">Product
								Image</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" name="productImage">
							</div>
						</div>  -->
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