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
	
		   <div class="col-sm-12" id="form1">
      <h2> Train List</h2>
    	<input type="button" value="Add Customer"
		onclick="window.location.href='viewAllTrain'; return false;"
		class="add-button"
	/>
      	<table class="table table-hover">
			<tr>
			<th>Train Number</th>
			<th>Train Name</th>
			<th>Train Date</th>
			<th>Update/Delete</th>
			</tr>
			
			<!--  loop over -->
			<c:forEach var="theTrain" items="${train_list}">
			
			<c:url var="updateLink" value="/adminPanel/showTrainForUpdate">
			<c:param name="trainId" value="${theTrain.trainId}"/>
			</c:url>
			
			<c:url var="deleteLink" value="/adminPanel/deleteTrain">
			<c:param name="trainId" value="${theTrain.trainId}"/>
			</c:url>
			<tr>
			<td>${theTrain.trainNo}</td>
			<td>${theTrain.trainName}</td>
			<td>${theTrain.trainDate}</td>
			
			<td> <a href="${updateLink}">Update</a>
			<a href="${deleteLink}" 
			  onclick="if(!(confirm('Are you sure you want to delete the customer?'))) return false">Delete</a>
			</td>
			</tr>
			</c:forEach>
	</table>
		
		</div>
	
		</div><!-- ng model close -->
    </div> 
  
  </div>
 
 
 
<%@ include file = "admin_footer.jsp" %>
<script>

</script>
