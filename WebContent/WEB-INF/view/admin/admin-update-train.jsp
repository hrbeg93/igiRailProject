<%@ include file = "admin_header.jsp" %>

<div class="container" style="background-color: #3F729B; width: 100%  ">
<div class="row"  style="background-image:  (${pageContext.request.contextPath}/resources/image/rail4.jpg);">
       <div class="col-sm-3"  >
       	      <br>
       
       <div class="col-sm-12" id="form1"  >
      <h1> Admin Works</h1>
	      <br>
	      <div class="col-sm-6" id="form1" >
	      
	     <label class="radio-inline"><input type="radio" name="optradio" ng-model="myVar" value="addTrain" >
	     Option 1</label>


			<!-- <button type="submit" class="btn btn-primary btn-lg btn-block" 
				  ng-class="{'button--is-selected--turquoise': isSelected, 
				             '' : isSelected===false}" 
				  ng-click="isSelected = true; addTrain = true">Add Train
				</button> --><br><br>
			</div> 
			<div class="col-sm-6" id="form1" >
	      <label class="radio-inline"><input type="radio" id="radio2" name="optradio2" ng-model="myVar" value="viewTrain">Option 2</label>
	     
			<!-- <button type="submit" class="btn btn-primary btn-lg btn-block" 
				 ng-click="hideShow=(hideShow ? false : true)">View Train
				</button><br><br> -->
				
			</div> 
			</div>
      </div>

 <div class="col-sm-9"  >
      <br>
      
    
		
		 <!-- view train -->
	
		   <div class="col-sm-6" id="form1">
      <h2> Train List</h2>
    	<input type="button" value="Add Customer"
		onclick="window.location.href='viewAllTrain'; return false;"
		class="add-button"
	/>
  <form:form action="addNewTrain" modelAttribute="newTrain"> <!-- updating with same method of saving -->
  <form:hidden path="trainId"/>
		<div class="form-group">
		      <label for="From">Train No.:</label>
		      <form:input type="text" class="form-control" id="from" name="trainNo" path="trainNo"/>
		    </div>
		    <div class="form-group">
		      <label for="From">Train Name:</label>
		      <form:input type="text" class="form-control" id="from"  name="trainName" path="trainName"/>
		    </div>
		<div class="form-group">
		      <label for="From">From:</label>
		      <form:input type="text" class="form-control" id="from" name="from" path="trainStart"/>
		    </div>
		    <div class="form-group">
		      <label for="To">To:</label>
		      <form:input type="text" class="form-control" id="to" name="to" path="trainEnd"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="To">Date:</label>
		      <form:input type="text" class="form-control" id="to"  name="date" path="trainDate"/>
		    </div>
		    <div class="form-group">
		      <label for="From">Time:</label>
		      <form:input type="text" class="form-control" id="from"  name="trainTime" path="trainTime"/>
		    </div>
		     <div class="form-group">
		      <label for="sel1">Select Class:</label>
			  <form:input type="text" class="form-control" id="from"  name="trainTotalSeat" path="trainClass"/>
			  </div> <div class="form-group">
		      <label for="From">Fare:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter fare" name="trainFare" path="trainFare"/>
		    </div>
			  <div class="form-group">
		      <label for="From">No. Of Seat:</label>
		      <form:input type="text" class="form-control" id="from" name="trainTotalSeat" path="trainSeat"/>
		    </div>
		    <div class="checkbox">
		      <label><input type="checkbox" name="remember"> Remember me</label>
		    </div>
		    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    Add Train &nbsp <span class="glyphicon glyphicon-plus"></span></button><br><br>
  
		</form:form>
		
		</div>
	
		</div><!-- ng model close -->
    </div> 
  
  </div>
 
 
 
<%@ include file = "admin_footer.jsp" %>
<script>

</script>
