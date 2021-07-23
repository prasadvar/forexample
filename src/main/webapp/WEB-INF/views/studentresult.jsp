<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>
.blue-button{
	background: #25A6E1;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:3px 5px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:2px;
	-moz-border-radius:2px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
  </style>
         <script type="text/javascript">
                    function validate()
                    {
                    var Gender = document.getElementsByName("Gender");

                        var a = document.getElementById("Nationality");
                        var b = document.getElementById("Firstname");
                        var c = document.getElementById("Lastname");
                        var d = document.getElementById("Email");
                        var e = document.getElementById("Address");
                        var f = document.getElementById("Mobile");
                        var g = document.getElementById("Age");
                        var h = document.getElementById("Nationality").value;
                        var i = document.getElementById("Firstname").value;
                        var j = document.getElementById("Lastname").value;
                         var k = document.getElementById("Email").value;
                         var l = document.getElementById("Address").value;
                          var m = document.getElementById("Mobile").value;
                          var n = document.getElementById("Age").value;
                        var valid = true;
                        if((Gender[0].checked != true && Gender[1].checked != true)||a.value.length<=0 || b.value.length<=0||c.value.length<=0||d.value.length<=0||e.value.length<=0||f.value.length<=0||g.value.length<=0)
                            {
                                alert("Don't leave the field empty! length less than 30");
                                valid = false;
                            }
                            else{
                                if(!isNaN(h) || !isNaN(i)||!isNaN(j) ||!isNaN(k) ||!isNaN(l) ||isNaN(m) ||isNaN(n)){
                                    alert("Enter in letters and numbers with respect to field ");
                            valid = false;}
                        }
                        return valid;
                    };
                </script>
</head>
<body>

</br>
<h3>Person List</h3>
<c:if test="${!empty listOfPerson}">
	<table class="tg">
	<tr>
        <th width="80">id</th>
		<th width="80">nationality</th>
		<th width="120">firstName</th>
		<th width="120">Lastname</th>
		<th width="60">Gender</th>
		<th width="60">Address</th>
		<th width="60">Age</th>
		<th width="60">Mobile</th>
		<th width="60">Email</th>
	</tr>
	<c:forEach items="${listOfPerson}" var="person">
		<tr>
		    <td>${person.id}</td>
			<td>${person.nationality}</td>
			<td>${person.firstname}</td>
			<td>${person.lastname}</td>
			<td>${person.gender}</td>
			<td>${person.address}</td>
			<td>${person.age}</td>
			<td>${person.mobile}</td>
			<td>${person.email}</td>

		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
