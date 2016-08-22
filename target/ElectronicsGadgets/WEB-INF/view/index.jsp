<%@ include file="header.jsp"%>
<!-- Carousel Start -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img class="img-responsive" src="resources/images/a.png" alt="Chania"
				style="width: 640px; height: 500px">
			<div class="carousel-caption">
				<h3>
					<b>ELECTRONIC GADGETS</b>
				</h3>
				<p>
					<i>MOBILES!MOBILES!MOBILES!</i>
				</p>
			</div>
		</div>

		<div class="item">
			<img class="img-responsive" src="resources/images/b.png" alt="Chania"
				style="width: 640px; height: 500px">
			<div class="carousel-caption">
				<h3>
					<b>ELECTRONIC GADGETS</b>
				</h3>
				<p>
					<i>GET ALL COMPUTERS </i>
				</p>
			</div>
		</div>

		<div class="item">
			<img class="img-responsive" src="resources/images/c.png" alt="Chania"
				style="width: 640px; height: 500px">
			<div class="carousel-caption">
				<h3>
					<b>ELECTRONIC GADGETS</b>
				</h3>
				<p>
					<i>WIDE RANGE OF MOBILES HERE </i>
				</p>
			</div>
		</div>

		<div class="item">
			<img class="img-responsive" src="resources/images/d.png" alt="Chania"
				style="width: 640px; height: 500px">
			<div class="carousel-caption">
				<h3>
					<b>ELECTRONIC GADGETS</b>
				</h3>
				<p>
					<i>GET THE MOST REQUIRED APPLIANCES</i>
				</p>
			</div>
		</div>
	</div>

	<!-- Left and right controls -->
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<div class="panel panel-primary ">
				<div class="panel-heading">PRODUCTS FOR SALE</div>

			</div>
		</div>
	</div>
</div>


<!-- detail -->
 <div class="row ">
	<div class="col-xs-6">
		<div class="thumbnail">
			<c:if test="${!empty product}">
				<table class="table" border="1" id="tab1">

					
					<tbody>
						<c:forEach items="${product}" var="prod">


							<td>
							
								 <img src="<c:url value='/resources/images/${prod.productId}.png' />"
								height="150px" width="170px" /><br> <c:out
									value="${prod.productName}" /><br> <c:out
									value="${prod.price}" /><br> <a
								href="<c:url value='/viewDetails?productId=${prod.productId}' />"><b>VIEW</b></a>
</td>
</c:forEach>
							


						
					</tbody>
				</table>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>