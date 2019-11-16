<%@ include file = "header.jsp" %>





<div class="container" style="background-color: #3F729B; width: 100%  ">
  <div class="row"  style="background-image: (${pageContext.request.contextPath}/resources/image/rail4.jpg);">
   
    <div class="col-sm-4"  >
     
      <br>
      <div class="col-sm-12" id="form1" >
      <h2 style="text-align: center">Search Train</h2>
		 
		<form:form action="searchTrain" modelAttribute="train" >
		<div class="form-group">
		      <label for="From">From:</label>
		      <form:input type="email" class="form-control" id="from" placeholder="Enter Starting Station" name="from" path="trainStart"/>
		    
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
		</div>   
    </div>
    
   <div class="col-sm-6"  >
      <br>
    <!--   <div class="col-sm-12" id="form1" >
      <div id="services" class="container-fluid text-center">
      <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>POWER</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>LOVE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
      </div>
      		</div>  --> 
       
       <!-- slider -->
         <div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/image/rail9.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/image/rail9.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/image/rail9.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
       
      <!-- slider -->  
       
    </div> 
	
	
	  <div class="col-sm-2"  >
	  
      <br>
      <div class="col-sm-12" id="form1" >
	     <h2 style="width: 100%">Notifications</h2>
	     <hr style="border-top: 1px dashed blue">
	     <c:forEach var="theNews" items="${newsModel}">
	     <!-- <marquee  behavior="alternate" height="100px"> -->
	     <p style="font-size: 20px"> <i class="fa fa-arrow-right" aria-hidden="true"> ${theNews.newsDetail}&nbsp[${theNews.testDate}]</i></p>
	     <%-- <p>${theNews.newsDate}</p> --%>
	     <br>
	    <!--  </marquee> -->
	     </c:forEach> 
	     
	     
	     
      </div>  
       
    </div> 
	
  </div>

 <!-- Login Modal -->
  <div class="modal fade" id="login" role="dialog">
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
  </div>
  
   <!-- Register Modal -->
  <div class="modal fade" id="register" role="dialog">
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
      
    </div>
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