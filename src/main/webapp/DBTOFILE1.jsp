<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="logo.jpg" type="image/icon type">
<title style="color:#003d99">Test Data Generator</title>
<script type="text/javascript">
				function NewformValidation()
				{
						return true;
				}
				</script>
</head>
<img src="allianz_logo.png" width="80" height="20" style="float: left;" />

			
<body  >
<center>
			<h1 style="color:#003d99">Test Data generator Utility </h1>
		</center>
	<center>
 


		<form method="post" style="color:#003d99" action="dbTofile"  onsubmit="return NewformValidation()">
		 <label for="uname"><b>Database Username:</b></label>
			 <input type="text" id="uname" name="username"  value="<%=request.getParameter("username")%>"readonly/><br><br> 
			 <label for="pass"><b>Database Password:</b></label> 
			 <input type="password" id="pass" name="password"  value="<%=request.getParameter("password")%>"readonly><br> <br> 
			 &ensp;&ensp;&ensp;&ensp;<label for="query"><b>Database Query:</b></label> 
			 <input type="text" id="query" name="query" value="<%=request.getParameter("query")%>"readonly><br> <br> 
			 &ensp;&ensp;&ensp;&ensp;&ensp;<label for="url"><b>Database URL:</b></label> 
			 <input type="text" id="url" name="url" value="<%=request.getParameter("url")%>"readonly><br> <br>
			 &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<label for="type"><b>File Type:</b></label> 			 
		     <input name="type" id="type" type="text" value="<%=request.getParameter("type")%>"readonly/><br><br>
		     &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<label for="loc"><b>Save File To:</b></label> 
			<input type="text" id="loc" name="loc" value="<%=request.getParameter("loc")%>"readonly /> <br><br>	
			 &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<label for="fileName"><b>Save File As:</b></label> 
			<%  
			String query = request.getParameter("query");
	        String qry[] = query.split(";");
	        
				for (int i=0; i < qry.length ;i++)
					
				{	%>
				
		<input type="text" id="fileName" name="fileName"/> <br><br>	
			<%
			
				}%>

			<input type="submit" value="Generate Test-Data" size="20"/>	
			</form>	
		
	</center>

</body>
</html>