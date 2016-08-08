<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Electronic Gadget Store</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/main.css"></link>
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">



<style type="text/css">
</style>
<script>
	function formSubmit() {
		document.getElementById("logout").submit();
	}
</script>
</head>
<body>
	<div class="row">
		<div class="col-sm-8">
			<img src="resources/images/title_icon.jpg" class="img-responsive"
				alt="abc" width="150" height="125">
			<h2>Electronics Bazaar</h2>
		</div>
	</div>


	<div>
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar" role="navigation">
					<div class="navbar-header">

						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
					</div>

					<c:url value="/perform_logout" var="logout" />
					<form action="${logout}" method="post" id="logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Mobiles<strong class="caret"></strong></a>
								<ul class="dropdown-menu">

									<li><a
										href="${pageContext.request.contextPath}/samsungmobile">Samsung</a>
									</li>
									<li class="divider"></li>

									<li><a
										href="${pageContext.request.contextPath}/micromaxmobile">Micromax</a>
									</li>
									<li class="divider"></li>
									<li><a href="${pageContext.request.contextPath}/htcmobile">HTC</a>
									</li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Computers<strong class="caret"></strong></a>

								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/desktop">Desktops</a>
									</li>
									<li class="divider"></li>
									<li><a href="${pageContext.request.contextPath}/laptop">Laptops</a>
									</li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Home Appliances<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/irons">Irons</a>
									</li>
									<li class="divider"></li>
									<li><a
										href="${pageContext.request.contextPath}/inductioncookpots">Induction
											Cookpots</a></li>
									<li class="divider"></li>
									<li><a href="${pageContext.request.contextPath}/microwave">Microwave
											Oven</a></li>
									<li class="${pageContext.request.contextPath}/divider"></li>
									<li><a href="${pageContext.request.contextPath}/fans">Fans</a>
									</li>


								</ul></li>
							<li><a href="${pageContext.request.contextPath}/allProducts">All
									Products</a></li>
							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}" >
								<li><a href="${pageContext.request.contextPath}/products">AddItem</a></li>

								<li><a href="${pageContext.request.contextPath}/category">Categories</a></li>
								<li><a href="${pageContext.request.contextPath}/supplier">Suppliers</a></li></c:if>
						</ul>



						<ul class="nav navbar-nav navbar-right">
							
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li>Welcome :${pageContext.request.userPrincipal.name}</li>
									<li><a href="javascript:formSubmit()">Logout</a></li>
									<security:authentication var="user"
										property="principal.authorities" />
										
									<security:authorize var="loggedIn" access="isAuthenticated()">
										<security:authorize access="hasRole('ROLE_ADMIN')">
											<li>Admin</li>
										</security:authorize>
										<security:authorize access="hasRole('ROLE_USER')">
											<li>User</li>
										</security:authorize>
									</security:authorize>
								</c:if>
								<c:if test="${pageContext.request.userPrincipal.name==null}">

									<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
									<li><a href="${pageContext.request.contextPath}/signup">SignUp</a></li>
								</c:if>
								

							</ul>
					</div>

				</nav>
			</div>
		</div>
	</div>