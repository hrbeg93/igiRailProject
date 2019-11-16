<%@ include file = "header.jsp" %>





<div class="container" style="background-color: green; width: 100%  ">
  <div class="row"  style="background-image:  url(${pageContext.request.contextPath}/resources/image/rail4.jpg);">
   
    <div class="col-sm-4"  >
     
      <br>
      <div class="col-sm-12" id="form1" >
      <h2>Search Train</h2>
		
		<form action="" method="">
		<div class="form-group">
		      <label for="From">From:</label>
		      <input type="text" class="form-control" id="from" placeholder="Enter Starting Station" name="from">
		    </div>
		    <div class="form-group">
		      <label for="To">To:</label>
		      <input type="text" class="form-control" id="to" placeholder="Enter Destination" name="to">
		    </div>
		    
		    <div class="form-group">
		      <label for="To">Date:</label>
		      <input type="date" class="form-control" id="to" placeholder="Date" name="date">
		    </div>
		     <div class="form-group">
		      <label for="sel1">Select Class:</label>
			  <select class="form-control" id="sel1">
			    <option>SL</option>
			    <option>AC1</option>
			    <option>AC2</option>
			    <option>AC3</option>
			  </select>
			  </div>
		    <div class="checkbox">
		      <label><input type="checkbox" name="remember"> Remember me</label>
		    </div>
		    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    Search &nbsp<span class="glyphicon glyphicon-search"></span></button><br><br>
  
		</form>
		</div>   
    </div>
    
   <div class="col-sm-8"  >
      <br>
      <div class="col-sm-12" id="form1" >
   	<table class="table table-hover">
			<tr>
			<th>Train Number</th>
			<th>Train Name</th>
			<th>Train Date</th>
			<th>Train Start</th>
			<th>Train End</th>
			<th>Update/Delete</th>
			</tr>
			
			<!--  loop over -->
			<c:forEach var="theTrain" items="${train}">
			
			<c:url var="updateLink" value="/userPanel/bookTicketForm">
			<c:param name="trainId" value="${theTrain.trainId}"/>
			</c:url>
			
			<c:url var="deleteLink" value="/adminPanel/deleteTrain">
			<c:param name="trainId" value="${theTrain.trainId}"/>
			</c:url>
			<tr>
			<td>${theTrain.trainNo}</td>
			<td>${theTrain.trainName}</td>
			<td>${theTrain.trainDate}</td>
			<td>${theTrain.trainStart}</td>
			<td>${theTrain.trainEnd}</td>
			
			<td> <a href="${updateLink}">Book Ticket</a>
			<a href="${deleteLink}" 
			  onclick="if(!(confirm('Are you sure you want to delete the customer?'))) return false">Delete</a>
			</td>
			</tr>
			</c:forEach>
	</table>
      		</div>   
    </div> 
	
  </div>

 <!-- Login Modal -->
<%--   <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login Page</h4>
        </div>
        <div class="modal-body">
          <p>Please Login</p>
           <div class="form-group">
		    
			  <select class="form-control" id="sel1" ng-model="myLogin">
			  <option value="" selected disabled hidden>Select Type</option>
			    <option value="1" >User</option>
			    <option value="2">Admin</option>
			   
			  </select>
			  </div>
	<div ng-show="myLogin==1">
       <form:form action="userPanel/userLogin" modelAttribute="users" >
        <div class="form-group">
		     
		      <form:input type="text" class="form-control" id="from" placeholder="Email" name="from" path="email"/>
		    </div>
		    <div class="form-group">
		      
		      <form:input type="password" class="form-control" id="to" placeholder="Password" name="to" path="pass"/>
		    </div>
		     <div class="form-group">
		   <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    User Login</button>
		     </div>
		     
		     </form:form>
		     </div>
		     <div ng-show="myLogin==2">
       <form:form action="adminPanel/adminLogin" modelAttribute="admin" >
        <div class="form-group">
		     
		      <form:input type="text" class="form-control" id="from" placeholder="Name" name="from" path="adminName"/>
		    </div>
		    <div class="form-group">
		      
		      <form:input type="password" class="form-control" id="to" placeholder="Password" name="to" path="adminPass"/>
		    </div>
		     <div class="form-group">
		   <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		   Admin Login</button>
		     </div>
		     
		     </form:form>
		     </div>
		    </div>
		     
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> --%>
  
   <!-- Register Modal -->
 <%--  <div class="modal fade" id="register" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Registeration Page</h4>
        </div>
        <div class="modal-body" >
          <p>Please Register</p>
          
          
       <form:form action="userPanel/registerUser" modelAttribute="users"  >
        <div class="form-group">
		     
		      <form:input type="text" class="form-control" id="from" placeholder="Username"  path="userName" />
		    </div>
		    <div class="form-group">
		      
		      <form:input type="text" class="form-control" id="to" placeholder="Full Name" name="to" path="fullName" />
		    </div>
		  <div class="form-group">
		        <div class="form-group">
		     
		      <form:input type="text" class="form-control" id="from" placeholder="Email" name="from" path="email"/>
		    </div>
		    
		      <form:input type="password" class="form-control" id="to" placeholder="Password" name="to" path="pass"/>
		    </div>
		    <div class="form-group">
		      
		      <form:input type="password" class="form-control" id="to" placeholder="Confirm Password" name="to" path="confirm_pass"/>
		    </div>
		      <div class="form-group">
		      <form:input type="text" class="form-control" id="to" placeholder="Gender" path="gender" />
			  
			  </div>
		    <div class="form-group">
		     
		      <form:input type="text" class="form-control" id="to" placeholder="Date Of birth" path="date" />
		    </div>
		 
		    <div class="form-group">
		      
		      <form:input type="number" class="form-control" id="to" placeholder="Mobile" name="to" path="mobile"/>
		    </div>
		    <div class="form-group">
		     
		      <form:input type="text-area" class="form-control" id="from" placeholder="Address" name="from" path="address"/>
		    </div>
		    <div class="form-group">
		   <button type="submit" class="btn btn-primary btn-lg btn-block"> 
		    Register</button>
		     </div>
		     </form:form>
		    </div>
		   
		   <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
		     </div>
       
      </div>
      
    </div> --%>
  </div>


</div>




   <script>
   window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
   </script>
</div>
<%@ include file = "footer.jsp" %>