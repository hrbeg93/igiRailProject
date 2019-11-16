<%@ include file = "user_header.jsp" %>





<div class="container" style="background-color: #3F729B; width: 100%  ">
  
  
  			<div class="col-sm-4" id="form1">
				<h2> Booking Detail</h2>
				
				
				  <form:form action="" modelAttribute="ticketBook"> <!-- updating with same method of saving -->
	<%--   <form:hidden path="trainId"/> --%>
			
			<div class="form-row">
			<div class="form-group col-md-6">
			      <label for="From">Train No.:</label>
			      <form:input type="text" class="form-control" id="from" name="bookTrainNo" path="bookTrainNo" value="${theTicket.bookTrainNo}" readonly="true"/>
			    </div>
			    <div class="form-group col-md-6">
			      <label for="From">Train Name:</label>
			      <form:input type="text" class="form-control" id="from"  name="bookTrainName" path="bookTrainName" value="${theTicket.bookTrainName}" readonly="true"/>
			    </div>
			    
			     </div>
		   <div class="form-row">
			<div class="form-group col-md-6">
			      <label for="From">From:</label>
			      <form:input type="text" class="form-control" id="from" name="from" path="bookFrom" value="${theTicket.bookFrom}" readonly="true"/>
			    </div>
			    <div class="form-group col-md-6">
			      <label for="To">To:</label>
			      <form:input type="text" class="form-control" id="to" name="to" path="bookTo" value="${theTicket.bookTo}" readonly="true"/>
			    </div>
			    </div>
			  	   <div class="form-row">
			    <div class="form-group col-md-6">
			      <label for="To">Date:</label>
			      <form:input type="text" class="form-control" id="to"  name="date" path="bookDate" value="${theTicket.bookDate}" readonly="true"/>
			    </div>
			    <div class="form-group col-md-6">
			      <label for="From">Time:</label>
			      <form:input type="text" class="form-control" id="from"  name="trainTime" path="bookTime" value="${theTicket.bookTime}" readonly="true"/>
			    </div>
			     
				   </div>
				   <div class="form-row">
				  <div class="form-group col-md-6">
			      <label for="From">Fare:</label>
			      <form:input type="text" class="form-control" id="from" placeholder="Enter fare" name="bookFare" path="bookFare" value="${theTicket.bookFare}" readonly="true"/>
			    </div>
			    <div class="form-group col-md-6">
			      <label for="sel1">Class:</label>
				  <form:input type="text" class="form-control" id="from"  name="trainTotalSeat" path="bookClass" value="${theTicket.bookClass}" readonly="true"/>
				  </div> 
				 <%--  <div class="form-group col-md-6">
			      <label for="From">No. Of free Seat:</label>
			      <form:input type="text" class="form-control" id="from" name="trainTotalSeat" path="bookSeat" value="${theTicket.bookSeat}" readonly="true"/>
			    </div> --%>
			    </div><hr style="border-top: 1px dashed red">
			    
			    
			     <div class="form-group">
			      <label for="From">Passenger Name</label>
			      <form:input type="text" class="form-control" id="from" name="bookPName" path="bookPName" value="${theTicket.bookPName}" readonly="true"/>
			    </div>
			       <div class="form-row">
			    <div class="form-group col-md-4">
			      <label for="To">Age:</label>
			      <form:input type="text" class="form-control" id="to"  name="date" path="bookPAge" value="${theTicket.bookPAge}" readonly="true"/>
			    </div>
			    <div class="form-group col-md-4">
			      <label for="From">Gender:</label>
			      <form:input type="text" class="form-control" id="from"  name="trainTime" path="bookPGender" value="${theTicket.bookPGender}" readonly="true"/>
			    </div>
			     <div class="form-group col-md-4">
			      <label for="sel1">Mobile:</label>
				  <form:input type="text" class="form-control" id="from"  name="trainTotalSeat" path="bookPMobile" value="${theTicket.bookPMobile}" readonly="true"/>
				  </div> 
				   </div>
				   <div class="form-group">
			      <label for="From">Email</label>
			      <form:input type="text" class="form-control" id="from" name="bookPEmail" path="bookPEmail" value="${theTicket.bookPEmail}" readonly="true"/>
			    </div>
			    <div class="checkbox">
			      <label><input type="checkbox" name="remember"> Remember me</label>
			    </div>
			    
		
			    <button type="submit" class="btn btn-primary btn-lg btn-block"> 
			    PAY &nbsp <i class="fa fa-rupee" style="font-size:24px"></i>${theTicket.bookFare} </button><br><br>
			    
	  
		</form:form>
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
<%@ include file = "user_footer.jsp" %>