<%@ page language="java"  import="java.io.*, java.util.*,
 java.text.*, javax.servlet.http.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>PTK</title>
</head>
<body style="margin: 10px; padding: 14px;">

<table width="100%" style="height: 100%;" cellpadding="10" cellspacing="0" border="1">
<tr>
<!-- ============ HEADER SECTION ============== -->
<td colspan="2" style="height: 100px;" bgcolor="#00BFFF">
<h1 align="center">PTK Social Media</h1>
</td>
</tr>

<tr>
<!-- ============ LEFT COLUMN (MENU) ============== -->
<td width="15%" valign="top" align="center" bgcolor="#00BFFF">
<br><br><a href="./index.jsp">Main Page</a><br>
 
 
</td>

<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top" bgcolor="#FFFFFF">
<BR>
<CENTER>
<%   	
    String UserId = request.getParameter("userid");
	String Password1 = request.getParameter("password1");
    String Password2 = request.getParameter("password2");
	String Fname = request.getParameter("fname");
	String Lname= request.getParameter("lname");       
	String Email= request.getParameter("email");
	String Desc= request.getParameter("Desc");
	String phone= request.getParameter("phone");
	String address= request.getParameter("address");
	
	 if(Password1!= null && Password2!= null && !Password2.equals(Password1))
	 {
	 %>
	  	<H3>Password does not match, Please Try again</H3>
		<a href="./signup.jsp">SignUp Page</a>
	 <%
	 
	 }

        ServletContext sc = this.getServletContext();
        String path = sc.getRealPath("/WEB-INF/userInfo.txt");

		File file = new File(path);
		BufferedReader br = new BufferedReader(new FileReader(path));
		boolean found = false;	
		String line = null;
		while ((line = br.readLine()) != null) {
        
			if (line.contains(UserId)){
			found= true;
				%>
				<BR><BR>
				<H3>User Already exist, Please try different user<BR>
				<STRONG>(<%= UserId%>)</STRONG></H3>
				<a href="./signup.jsp">SignUp Page</a>
				<%
				break;
			}
			
		}
		if(found == false){
			PrintWriter outt = new PrintWriter(
				new FileWriter(file, true));
			outt.println(UserId + "," + Password1 + "," 
			+ Fname + "," + Lname + "," + Email + "," + Desc +
			"," + phone + "," + address + "\n");        
			outt.close();
			%>
			<H3>You Have successfully registered.<BR>
			Go to main page to login</H3>
			<a href="./index.jsp">main Page</a>
			<%
		}
%></CENTER>

</td>
</tr>
<!-- ============ FOOTER SECTION ============== -->
<tr>
<td colspan="2" align="center" height="20" bgcolor="#00BFFF">
<br>
PTK project
<br>
<br>
</td>
</tr>
</table>
</body>
