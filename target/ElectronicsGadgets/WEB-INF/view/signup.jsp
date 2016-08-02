<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">SignUp</strong>

				</div>
				<div class="panel-body">
					<form:form action="signup" class="form-horizontal" role="form" method="POST"  commandName="adduser">
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">UserName</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="username"
									placeholder="Enter your username" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email"
									placeholder="Enter your Email" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="inputAddress" class="col-sm-3 control-label">Address</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address"
									placeholder="Enter your address" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="inputMobile" class="col-sm-3 control-label">Mobile</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="mobile"
									placeholder="Enter your Mobile Number" required="required">
							</div></div>
							
						<div class="form-group">
							<label for="inputPassword" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="password"
									placeholder="Enter your Password" required="required">
							</div>
						</div>
						
						
						<!-- <div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<div class="checkbox">
									<label class=""> <input type="checkbox" class="">Remember
										me
									</label>
								</div>
							</div>
						</div> -->
						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-success btn-sm">Sign
									Up</button>
								<button type="reset" class="btn btn-default btn-sm">Reset</button>
							</div>
						</div>
					</form:form>
				</div>
				<div class="panel-footer">
					 Registered? <a href="index" class="">Login Here</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>