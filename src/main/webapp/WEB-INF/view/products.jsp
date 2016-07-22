<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Adding Products</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">Product ID</label>
							<div class="col-sm-8">
								<input type="name" class="form-control" id="inputName"
									placeholder="Enter the product ID" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail" class="col-sm-3 control-label">Product Name</label>
							<div class="col-sm-8">
								<input type="email" class="form-control" id="inputEmail"
									placeholder="Enter The product name" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail1" class="col-sm-3 control-label">Product Group</label>
							<div class="col-sm-8">
								<input type="address" class="form-control" id="inputAddress"
									placeholder="Enter the product group" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputMobile" class="col-sm-3 control-label">Product Description</label>
							<div class="col-sm-8">
								<input type="mobile" class="form-control" id="inputMobile"
									placeholder="Enter the product description" required="">
							</div></div>
							
						<div class="form-group">
							<label for="inputPassword" class="col-sm-3 control-label">Product Quantity</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="inputpassword"
									placeholder="Enter quantity of product" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputMobile" class="col-sm-3 control-label">Product Price</label>
							<div class="col-sm-8">
								<input type="mobile" class="form-control" id="inputMobile"
									placeholder="Enter the price of product" required="">
							</div></div>
						
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
<%@ include file="footer.jsp" %>