<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Edit Category</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST" role="form"
						action="editproduct/${getC.categoryId}" commandName="edit">

						<div class="form-group">
							<label for="categoryId" class="col-sm-3 control-label">Category
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="categoryId"
									value="${getC.categoryId}" disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label for="categoryName" class="col-sm-3 control-label">Category
								Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="categoryName"
									value="${getC.categoryName}" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="categoryDescription" class="col-sm-3 control-label">Catgeory
								Description</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"
									name="categoryDescription"
									value="${getC.categoryDescription}" required="required">
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