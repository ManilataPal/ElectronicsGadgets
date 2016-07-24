<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">SignUp</strong>

				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">UserName</label>
							<div class="col-sm-9">
								<input type="name" class="form-control" id="inputName"
									placeholder="Enter your username" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" id="inputEmail"
									placeholder="Enter your Email" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail1" class="col-sm-3 control-label">address</label>
							<div class="col-sm-9">
								<input type="address" class="form-control" id="inputAddress"
									placeholder="Enter your address" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputMobile" class="col-sm-3 control-label">Mobile</label>
							<div class="col-sm-9">
								<input type="mobile" class="form-control" id="inputMobile"
									placeholder="Enter your Mobile Number" required="">
							</div></div>
							
						<div class="form-group">
							<label for="inputPassword" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="inputpassword"
									placeholder="Enter your Password" required="">
							</div>
						</div>
						
						
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<div class="checkbox">
									<label class=""> <input type="checkbox" class="">Remember
										me
									</label>
								</div>
							</div>
						</div>
						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-success btn-sm">Sign
									Up</button>
								<button type="reset" class="btn btn-default btn-sm">Reset</button>
							</div>
						</div>
					</form>
				</div>
				<div class="panel-footer">
					 Registered? <a href="#" class="">Login Here</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>