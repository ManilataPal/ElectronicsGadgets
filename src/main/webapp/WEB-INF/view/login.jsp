<%@ include file="header.jsp"%>
<section>
	<div id="login-form">


            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong class="">Login</strong>

				</div>
				<div class="panel-body">
					<form:form action="perform_login" class="form-horizontal" role="form" commandName="validate">
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">UserName</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="username"
									placeholder="Username" name="username" required="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="inputPassword3" name="password"
									placeholder="Password" required="">
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
								<button type="submit" class="btn btn-success btn-sm">Signin</button>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
								<button type="reset" class="btn btn-default btn-sm">Reset</button>
							</div>
						</div>
					</form:form>
				</div>
				<div class="panel-footer">
					Not Registered? <a href="${pageContext.request.contextPath}/signup" class="">Register here</a>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<%@ include file="footer.jsp" %>