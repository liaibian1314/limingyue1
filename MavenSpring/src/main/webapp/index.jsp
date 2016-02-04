<%@ page language="java" import="java.util.*" contentType="text/html"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>maven与springMVC</title>
<script type="text/javascript" src="static/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
   function go(){
	   $.ajax({
		   url:"/MavenSpring/li/1/user",
		   dataType:"json",
		   type:"post",
		   success:function(data){
			   var str="";
			   for(var i=0;i<data.length;i++){
				   str+="<tr><td>"+data[i].id+"</td><td>"+data[i].name+"</td><td>"+data[i].age+"</td><td>"+data[i].address+"</td></tr>";
			   }
			   $("#table").html("");
			   $("#table").append(str);
		   },
		   error:function(){
			   alert("error");
		   }
	   });
   }

</script>
</head>
<body>
	<h1>
	  <%
	    out.print("Hello World");
	  %>
	</h1>
	
	<input type="button"  value="确定" onclick="go();"/>
	<table id="table" border="1px"></table>
	<form action="/MavenSpring/li/1/user" method="post">
	  <input type="submit" value="确定"/>
	</form>
</body>
</html>