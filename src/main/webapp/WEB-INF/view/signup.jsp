<%@ include file="header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">SignUp</strong>

				</div>
				<div class="panel-body">
					<%-- <form:form action="addUser" method="POST" commandName="adduser">
						<table>
							<tbody>
								
								<tr>
									<td><form:label path="username">UserName:</form:label></td>
									<td><form:input path="username"></form:input></td>
								</tr>
								<tr>
									<td><form:label path="password">Password:</form:label></td>
									<td><form:input path="password"></form:input></td>
								</tr>
								<tr>
									<td><form:label path="email"> Email:</form:label></td>
									<td><form:input path="email"></form:input></td>
								</tr>
								<tr>
									<td><form:label path="address">Address:</form:label></td>
									<td><form:input path="address"></form:input></td>
								<tr>
									<td><form:label path="mobile">Mobile:</form:label></td>
									<td><form:input path="mobile"></form:input></td>
								<tr>
									<td colspan="2"><input type="submit"
										value="Submit"/></td>
								</tr>
							</tbody>
						</table>
					</form:form> --%>
					<form:form action="addUser" class="form-horizontal" role="form" method="POST"  commandName="adduser">
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">UserName</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="username" id="username"
									placeholder="Enter your username" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Enter your Email" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="address" class="col-sm-3 control-label">Address</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address" id="address"
									placeholder="Enter your address" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="mobile" class="col-sm-3 control-label">Mobile</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="mobile" id="mobile"
									placeholder="Enter your Mobile Number" required="required">
							</div></div>
							
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="password" id="password"
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
					Registered? <a href="login" class="">Login Here</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>