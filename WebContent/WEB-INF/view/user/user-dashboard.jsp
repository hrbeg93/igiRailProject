<%@ include file="user_header.jsp"%>



<div class="container" style="background-color: #3F729B; width: 100%">
	<div class="row"
		style="background-image:  (${pageContext.request.contextPath}/resources/image/rail4.jpg);">

		<div class="col-sm-4">

			<br>
			<div class="col-sm-12" id="form1">
				<p>${user.userName} Profile [<a href="#">Edit</a>]</p>
				<div class="card" style="text-align: center">
				
				
					<h1><i class="fa fa-user-circle-o" style="font-size: 36px"></i>${user.fullName}</h1>
					<h3 class="title"><i class="fa fa-envelope "></i>${user.email}</h3>
					<h3><i class="fa fa-mobile"></i>${user.mobile}</h3>
					<div style="margin: 24px 0;">
						<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a>
					</div>
					<p>
						<!-- <button>Contact</button> -->
					</p>
				
				</div>
			</div>
		</div>

		<div class="col-sm-8">
			<br>
			<div class="col-sm-12" id="form1">
				<br>
				<div id="services" class="container-fluid text-center">
					<div class="row slideanim">
						<div class="col-sm-4">
							<a href="#"><i class="fa fa-train" style="font-size: 50px"></i></a>
							<h4>Book Ticket</h4>

						</div>
						<div class="col-sm-4">
							<a href="#"><i class="fa fa-ticket" style="font-size: 50px"></i></a>
							<h4>Your Booking</h4>

						</div>
						<div class="col-sm-4">
							<a href="#"><i class="fa fa-exclamation-triangle"
								style="font-size: 50px;"></i></a>
							<h4>Cancled tickets</h4>

						</div>
					</div>
				</div>
			</div>


			<br>
			<div class="col-sm-12" id="form1">
				<br>
				<div id="services" class="container-fluid text-center">
					<div class="row slideanim">
						<div class="col-sm-4">
							<a href="#"><i class="fa fa-edit" style="font-size: 50px"></i></a>
							<h4>Edit Profile</h4>

						</div>
						<div class="col-sm-4">
							<a href="#"><i class="fa fa-ticket" style="font-size: 50px"></i></a>
							<h4>Your Booking</h4>

						</div>
						<div class="col-sm-4">
							<a href="#"><i class="fa fa-exclamation-triangle"
								style="font-size: 50px;"></i></a>
							<h4>Cancled tickets</h4>

						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

	<!-- Login Modal -->
	<div class="modal fade" id="book" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Book Train</h4>
				</div>
				<div class="modal-body">


					<h2>Search Train</h2>

			<form:form action="searchTrain" modelAttribute="train">
					<div class="form-group">
			      <label for="From">From:</label>
			      <form:input type="text" class="form-control" id="from" placeholder="Enter Starting Station" name="from" path="trainStart"/>
			    </div>
			    <div class="form-group">
			      <label for="To">To:</label>
			      <form:input type="text" class="form-control" id="to" placeholder="Enter Destination" name="to" path="trainEnd"/>
			    </div>
			    
			    <div class="form-group">
			      <label for="To">Date:</label>
			      <form:input type="text" class="form-control" id="to" placeholder="Date" name="date" path="trainDate"/>
			    </div>
			     <div class="form-group">
			      <label for="sel1">Select Class:</label>
				  <form:select class="form-control" id="sel1" path="trainClass">
				    <option>SL</option>
				    <option>AC1</option>
				    <option>AC2</option>
				    <option>AC3</option>
				  </form:select>
				  </div>
			    <div class="checkbox">
			      <label><input type="checkbox" name="remember"> Remember me</label>
			    </div>
			    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
			    Search &nbsp<span class="glyphicon glyphicon-search"></span></button><br><br>
	  
		</form:form>





					<div ng-show="myLogin==2"></div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>


</div>



<%@ include file="user_footer.jsp"%>
