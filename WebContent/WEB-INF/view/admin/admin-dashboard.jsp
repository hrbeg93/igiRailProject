<%@ include file = "admin_header.jsp" %>

<div class="container" style="background-color: #3F729B; width: 100%  ">
<div class="row"  style="background-image:  (${pageContext.request.contextPath}/resources/image/rail4.jpg);">
       <div class="col-sm-3"  >
       	      <br>
       
       <div class="col-sm-12" id="form1"  >
      <h1> Admin Works</h1>
	      <br>
	     <div class="radio">
		      <label><input type="radio" name="optradio" ng-model="myVar" value="addTrain"  >Add New Train</label>
		    </div>
		    <div class="radio">
		      <label><input type="radio" id="radio2" name="optradio2" ng-model="myVar" value="viewTrain">View Train</label>
		    </div>
		    <div class="radio">
		      <label><input type="radio" id="radio3" name="optradio3" ng-model="myVar" value="postNews">Post News</label>
		    </div>
	   <!--   <label class="radio"><input type="radio" name="optradio" ng-model="myVar" value="addTrain" >
	     Add New Train</label>


			<button type="submit" class="btn btn-primary btn-lg btn-block" 
				  ng-class="{'button--is-selected--turquoise': isSelected, 
				             '' : isSelected===false}" 
				  ng-click="isSelected = true; addTrain = true">Add Train
				</button><br><br>
			
	
	      <label class="radio"><input type="radio" id="radio2" name="optradio2" ng-model="myVar" value="viewTrain">View Train</label>
	     
			<button type="submit" class="btn btn-primary btn-lg btn-block" 
				 ng-click="hideShow=(hideShow ? false : true)">View Train
				</button><br><br>
				
				
				 <label class="radio"><input type="radio" id="radio3" name="optradio2" ng-model="myVar" value="postNews">Post News</label>
	      -->
			<br><br><br><br>
			
		
			</div>
			<br>
			<!-- <div class="col-sm-12" id="form1"  >
			<div class="col-sm-6"  >
	      <label class="radio-inline"><input type="radio" id="radio3" name="optradio2" ng-model="myVar" value="postNews">Post News</label>
	     
			<button type="submit" class="btn btn-primary btn-lg btn-block" 
				 ng-click="hideShow=(hideShow ? false : true)">View Train
				</button><br><br>
				
			</div> 
			</div> -->
      </div>

 <div class="col-sm-9"  >
      <br>
      <div ng-switch ="myVar">
      <div ng-switch-when="addTrain">
       <div class="col-sm-6" id="form1" >
      
      <h2>Add New Train</h2>
		
		<form:form action="addNewTrain" modelAttribute="newTrain">
		<div class="form-group">
		      <label for="From">Train No.:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter Train Number" name="trainNo" path="trainNo"/>
		    </div>
		    <div class="form-group">
		      <label for="From">Train Name:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter Train Name" name="trainName" path="trainName"/>
		    </div>
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
		      <label for="From">Time:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter Time" name="trainTime" path="trainTime"/>
		    </div>
		     <div class="form-group">
		      <label for="sel1">Select Class:</label>
			  <form:select class="form-control" id="sel1" path="trainClass">
			    <form:option value ="SL" >SL</form:option>
			    <form:option value ="AC1">AC1</form:option>
			    <form:option value ="AC2">AC2</form:option>
			    <form:option value ="AC3">AC3</form:option>
			 </form:select>
			  </div>
			  <div class="form-group">
		      <label for="From">Fare:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter fare" name="trainFare" path="trainFare"/>
		    </div>
			  
			  <div class="form-group">
		      <label for="From">No. Of Seat:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter total seat" name="trainTotalSeat" path="trainSeat"/>
		    </div>
		    <div class="checkbox">
		      <label><input type="checkbox" name="remember"> Remember me</label>
		    </div>
		    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    Add Train &nbsp <span class="glyphicon glyphicon-plus"></span></button><br><br>
  
		</form:form>
	
		</div> 
	</div> <!-- add train div close --> 
		
		 <!-- view train -->
		 <div ng-switch-when="viewTrain">
		   <div class="col-sm-6" id="form1">
      <h2> Train List</h2>
     	<input type="button" value="Add Customer"
		onclick="window.location.href='viewAllTrain'; return false;"
		class="add-button"
	/>
      	<table>
	<tr>
	<th>Train Number</th>
	<th>Train Name</th>
	<th>Train Date</th>
	<th>Update</th>
	</tr>
	
	<!--  loop over -->
	<c:forEach var="theTrain" items="${train_list}">
	
	<c:url var="updateLink" value="/adminPanel/showTrainForUpdate">
	<c:param name="customerId" value="${theTrain.trainId}"/>
	</c:url>
	
	<c:url var="deleteLink" value="/adminPanel/delete">
	<c:param name="customerId" value="${theTrain.trainId}"/>
	</c:url>
	<tr>
	<td>${theTrain.trainNo}</td>
	<td>${theTrain.trainName}</td>
	<td>${theTrain.trainDate}</td>
	
	<td> <a href="${updateLink}">Update</a>
	<a href="${deleteLink}" 
	  onclick="if(!(confirm('Are you sure you want to delete this Train?'))) return false">Delete</a>
	</td>
	</tr>
	</c:forEach>
	</table>
		
		</div>
		</div>
		
		  <div ng-switch-when="postNews">
       <div class="col-sm-6" id="form1" >
      
      <h2>Post News</h2>
		
		<form:form action="postNews" modelAttribute="newsModel">
		<div class="form-group">
		      <label for="From">News Date:</label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter Date" name="newsDate" path="newsDate"/>
		    </div>
		    <div class="form-group">
		      <label for="From"> Date:</label>
		      <form:input type="date" class="form-control" id="from" placeholder="Enter Date" name="testDate" path="testDate" />
		    </div>
		     <div class="form-group">
		      <label for="From"> Date:</label>
		      <form:input type="file" class="form-control" id="from" placeholder="Enter Date" name="testDate" path="newsFile" />
		    </div>
		    
		    <div class="form-group">
		      <label for="From">News Details </label>
		      <form:input type="text" class="form-control" id="from" placeholder="Enter News Detail" name="trainName" path="newsDetail"/>
		    </div>
	
		    <div class="checkbox">
		      <label><input type="checkbox" name="remember"> Remember me</label>
		    </div>
		    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    Post News &nbsp <span class="glyphicon glyphicon-plus"></span></button><br><br>
  
		</form:form>
	
		</div> 
	</div> <!-- news model close -->
		</div><!-- ng model close -->
    </div> 
  
  </div>
  </div>
 
 
<%@ include file = "admin_footer.jsp" %>
<script>

$(document).ready(function(){
	alert("its working");
	  $('#radio2').click(function(){
		  alert("its working 2");
		  
		  $.ajax({
			    type : "GET",
			    url : "${pageContext.request.contextPath}/adminPanel/viewAllTrain",
			    success: function(data){
			    console.log(data);	
			    }
			});
		  
		  
		  
		  
		  
	  });
});

</script>
