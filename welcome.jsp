



<%@ page import="java.util.Random" %>

<%
String oper=request.getParameter("operation");
String numb=request.getParameter("number");
int numbers=Integer.valueOf(numb);
String range=request.getParameter("range");
int ranges=Integer.valueOf(range);

Random rand = new Random();
int na1=0,nb1=0,nc1=0;
int na2=0,nb2=0,nc2=0;
int i=0,k=1;;

%>

<html>
<head><title>welcome</title>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">


<style>
table, th, td {
    border: 1px solid white;
}
</style>


</head>
<body background="bg.jpg" style="background-repeat: no-repeat;height: 100%;background-size:30000px 30000px;">
<nav class="navbar navbar-dark green" style="height:100px;">
    
        <h1>OUTPUT</h1>
		 <div class="text-center">
        <a href="generate.html"><button class="btn btn-elegant"><-- back</button></a>
    </div>
	 <div class="text-center">
        <a href="login.jsp"><button class="btn btn-elegant">Logout</button></a>
    </div>
  
    
    


    
    
</nav>  
<table style="width:80%;margin:20px 120px;color:white;">
  <tr>
    <th>Sr.no</th>
    <th>N1</th>
    <th>N2</th>
	<% if(oper.equals("mul"))
	{%>
    <th>N1 * N2</th>
    <% }%>
	<% if(oper.equals("div"))
		{%>
    <th>N1 / N2</th>
	<% }%>
	<% if(oper.equals("add"))
		{%>
    <th>N1 + N2</th>
	<% }%>
	<% if(oper.equals("sub"))
		{%>
    <th>N1 - N2</th>
	<% }%>
	<th>N3</th>
  </tr>
  <% while(i<numbers){ 
  
  
  
  for(int j=0;j<=1000;j++)
  {
	  na1 =rand.nextInt(ranges);
      nb1 =rand.nextInt(ranges);
      nc1 =rand.nextInt(ranges);
  
    if((nb1*nc1)+na1<=ranges & na1!=0 & nb1!=0 & nc1!=0 )
		break;
	 
  }
  
   for(int j=0;j<=1000;j++)
  {
	  na2 =rand.nextInt(ranges);
      nb2 =rand.nextInt(ranges);
      nc2 =rand.nextInt(ranges);
  
    if((nb2*nc2)+na2<=ranges & na2!=0 & nb2!=0 & nc2!=0 )
		break;
	 
  }
  
  
  %>
  <tr>
    <td ><b><% out.println(k); %></b></td>
    <td><% out.println(nc1+" "+na1+"/"+nb1); %></td>
    <td><% out.println(nc2+" "+na2+"/"+nb2); %></td> 
    <td><% 
	    if(oper.equals("mul"))
			out.println("("+nc1+" "+na1+"/"+nb1+") * ("+nc2+" "+na2+"/"+nb2+")");
	    if(oper.equals("div"))
	out.println("("+nc1+" "+na1+"/"+nb1+") / ("+nc2+" "+na2+"/"+nb2+")");
		 if(oper.equals("add"))
	out.println("("+nc1+" "+na1+"/"+nb1+") + ("+nc2+" "+na2+"/"+nb2+")");
		 if(oper.equals("sub"))
	out.println("("+nc1+" "+na1+"/"+nb1+") - ("+nc2+" "+na2+"/"+nb2+")");
	
	    %></td>
	 <td><% 
	 
	 if(oper.equals("mul"))
	 {int l=(nb1*nc1+na1)*(nb2*nc2+na2);
    int	 t=nb1*nb2;
	 out.println(l+"/"+t);}
	 
	  if(oper.equals("div"))
	{int l=(nb1*nc1+na1)*nb2;
    int	 t=(nb2*nc2+na2)*nb1;
	 out.println(l+"/"+t);}
	 
	 if(oper.equals("add"))
	{int l=((nb1*nc1+na1)*nb2)+((nb2*nc2+na2)*nb1);
    int	 t=nb1*nb2;
	 out.println(l+"/"+t);}
	 
	 if(oper.equals("sub"))
	{int l=((nb1*nc1+na1)*nb2)-((nb2*nc2+na2)*nb1);
    int	 t=nb1*nb2;
	 out.println(l+"/"+t);}
   
      


 %></td>
 
  </tr>
  <% i++;k++;} %>
</table>
</body>
</html>


