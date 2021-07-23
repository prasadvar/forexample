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
                                alert("Don't leave the field empty!");
                                valid = false;
                            }
                            else{
                                if(!isNaN(h) || !isNaN(i)||!isNaN(j) ||!isNaN(k) ||!isNaN(l) ||isNaN(m) ||isNaN(n)){
                                    alert("Enter in Alphabets and numbers with respect to field");
                            valid = false;}
                        }
                        return valid;
                    };
                </script>
</head>
<body>
<form:form method="post" modelAttribute="person" action="addPerson" onsubmit="return validate();">
<table>
		<tr>
			<th colspan="5">Add Details</th>
		</tr>
		<tr>
		<form:hidden path="id" />
          <td><form:label path="Nationality">nationality:</form:label></td>
          <td><form:input path="Nationality" size="30" maxlength="30"></form:input></td>
        </tr>

		<tr>
		 <td><form:label path="Firstname">firstname:</form:label></td>
                  <td><form:input path="Firstname" type="text" size="30" maxlength="30"></form:input></td>
                </tr>
        		<tr>
        			    <td><form:label path="Lastname">lastname:</form:label></td>
                  <td><form:input path="Lastname" size="30" maxlength="30"></form:input></td>
        		</tr>
        		<tr>

                		</tr>
                		<tr>
                        <td><form:label path="Email">email:</form:label></td>
               <td><form:input path="Email" size="30" maxlength="30"></form:input></td>
               </tr>
              	<tr>
                <td><form:label path="Mobile">mobile:</form:label></td>
                   <td><form:input path="Mobile" size="30" maxlength="30"></form:input></td>
                    </tr>
                    <tr>
                     <td><form:label path="Gender">gender:</form:label></td>
                    <td> Male<form:radiobutton path="Gender" value="Male"/>
                    Female <form:radiobutton path="Gender" value="Female"/></td
                     </tr>
                 <tr>
               <td><form:label path="Age">age:</form:label></td>
            <td><form:input path="Age" size="30" maxlength="30"></form:input></td>
                      </tr>
                         </tr>
                             <td><form:label path="Address">address:</form:label></td>
                          <td><form:input path="Address" size="30" maxlength="30"></form:input></td>
                                    </tr>
		<tr>
			<td colspan="2"><input type="submit"
				class="blue-button" /></td>
		</tr>
	</table>
</form:form>
</br>
</body>
</html>
