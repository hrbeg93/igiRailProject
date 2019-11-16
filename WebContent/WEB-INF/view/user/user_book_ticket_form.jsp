<%@ include file="user_header.jsp"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring" %>


<div class="container" style="background-color: #3F729B; width: 100%">
	<div class="row"
		style="background-image:  (${pageContext.request.contextPath}/resources/image/rail4.jpg);">

		<div class="col-sm-4">

			<br>
			<div class="col-sm-12" id="form1">
				<p>${user.userName} Profile</p>
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
			<div class="col-sm-6" id="form1">
			<h2> Booking Detail</h2>
			
			
			  <form:form action="bookTicketAction" modelAttribute="ticketBook"> <!-- updating with same method of saving -->
  <%-- <form:hidden path="book_id"/> --%>
		
		<div class="form-row">
		<div class="form-group col-md-6">
		      <label for="From">Train No.:</label>
		      <form:input type="text" class="form-control" id="from" name="bookTrainNo" path="bookTrainNo" value="${myTrain.trainNo}" readonly="true"/>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="From">Train Name:</label>
		      <form:input type="text" class="form-control" id="from"  name="bookTrainName" path="bookTrainName" value="${myTrain.trainName}" readonly="true"/>
		    </div>
		    
		     </div>
	   <div class="form-row">
		<div class="form-group col-md-6">
		      <label for="From">From:</label>
		      <form:input type="text" class="form-control" id="from" name="from" path="bookFrom" value="${myTrain.trainStart}" readonly="true"/>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="To">To:</label>
		      <form:input type="text" class="form-control" id="to" name="to" path="bookTo" value="${myTrain.trainEnd}" readonly="true"/>
		    </div>
		    </div>
		  	   <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="To">Date:</label>
		      <form:input type="text" class="form-control" id="to"  name="date" path="bookDate" value="${myTrain.trainDate}" readonly="true"/>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="From">Time:</label>
		      <form:input type="text" class="form-control" id="from"  name="trainTime" path="bookTime" value="${myTrain.trainTime}" readonly="true"/>
		    </div>
		     
			   </div>
			   <div class="form-row">
			  <div class="form-group col-md-6">
		      <label for="From">Fare:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter fare" name="bookFare" path="bookFare" value="${myTrain.trainFare}" readonly="true"/>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="sel1">Class:</label>
			  <form:input type="text" class="form-control" id="from"  name="trainTotalSeat" path="bookClass" value="${myTrain.trainClass}" readonly="true"/>
			  </div> 
			 <%--  <div class="form-group col-md-6">
		      <label for="From">No. Of free Seat:</label>
		      <form:input type="text" class="form-control" id="from" name="trainTotalSeat" path="bookSeat" readonly="true"/>
		    </div> --%>
		    </div><hr style="border-top: 1px dashed red">
		    
		    
		     <div class="form-group">
		      <label for="From">Passenger Name</label>
		      <form:input type="text" class="form-control" id="from" name="bookPName" path="bookPName"/>
		    </div>
		       <div class="form-row">
		    <div class="form-group col-md-4">
		      <label for="To">Age:</label>
		      <form:input type="text" class="form-control" id="to"  name="date" path="bookPAge"/>
		    </div>
		    <div class="form-group col-md-4">
		      <label for="From">Gender:</label>
		      <form:input type="text" class="form-control" id="from"  name="trainTime" path="bookPGender"/>
		    </div>
		     <div class="form-group col-md-4">
		      <label for="sel1">Mobile:</label>
			  <form:input type="text" class="form-control" id="from"  name="trainTotalSeat" path="bookPMobile"/>
			  </div> 
			   </div>
			   <div class="form-group">
		      <label for="From">Email</label>
		      <form:input type="text" class="form-control" id="from" name="bookPEmail" path="bookPEmail"/>
		    </div>
		    <div class="checkbox">
		      <label><input type="checkbox" name="remember"> Remember me</label>
		    </div>
		    
		    <!-- testing spring tag -->
		    
		 <%--    <form action="bookTicket" modelAttribute = "ticketBook" >

				<spring:bind path="user.userName">
				   <input type="text" name="${status.expression}" value="${status.value}"><br />
				        </spring:bind>
				
				<spring:bind path="user.userName">
				   <input type="password" name="${status.expression}" value="${status.value}"><br />
				        </spring:bind>
				
				<spring:bind path="myTrain.trainName">
				   <input type="text" name="${status.expression}" value="${status.value}"><br >
				        </spring:bind>
				<spring:bind path="myTrain.trainNo">
				   <input type="text" name="${status.expression}" value="${status.value}"><br >
				        </spring:bind>
				        
				     
				
				<input type="submit" value="Create"/>
			</form> --%>
		    
		    <!-- testing spring tag -->
		    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    Book Ticket &nbsp <span class="glyphicon glyphicon-plus"></span></button><br><br>
  
		</form:form>
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

					<form action="" method="">
						<div class="form-group">
							<label for="From">From:</label> <input type="text"
								class="form-control" id="from"
								placeholder="Enter Starting Station" name="from">
						</div>
						<div class="form-group">
							<label for="To">To:</label> <input type="text"
								class="form-control" id="to" placeholder="Enter Destination"
								name="to">
						</div>

						<div class="form-group">
							<label for="To">Date:</label> <input type="date"
								class="form-control" id="to" placeholder="Date" name="date">
						</div>
						<div class="form-group">
							<label for="sel1">Select Class:</label> <select
								class="form-control" id="sel1">
								<option>SL</option>
								<option>AC1</option>
								<option>AC2</option>
								<option>AC3</option>
							</select>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="remember">
								Remember me</label>
						</div>
						<button type="submit" class="btn btn-primary btn-lg btn-block">
							Search<span class="glyphicon glyphicon-search"></span>
						</button>
						<br> <br>

					</form>





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
