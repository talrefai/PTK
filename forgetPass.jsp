<%@ page language="java"  import="java.io.*,
 java.util.*, java.text.*, javax.servlet.http.*" %>

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
<BR>
<a href ="index.jsp">Index</a><br>
</td>
<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top" bgcolor="#FFFFFF">
<BR>
<br><CENTER>
<%
if(request.getParameter("Spass") !=null)
{
    String UserId = request.getParameter("userid");
	String Lname= request.getParameter("lname");       
	String Email= request.getParameter("email");

	ServletContext sc = this.getServletContext();
	String path = sc.getRealPath("/WEB-INF/userInfo.txt");
	List<String> lines = new ArrayList<String>();
	FileReader fr = new FileReader(path);
	BufferedReader bf = new BufferedReader(fr);
	try {
		String aLine;
		while ((aLine = bf.readLine()) != null) {
			if(aLine.contains(UserId) && aLine.contains(Lname) && aLine.contains(Email))
			{
				lines.add(aLine);
			}
		}
	
	} finally 
	{
		bf.close();
	}		
	StringBuilder comma = new StringBuilder();
	for ( int i = 0; i< lines.size(); i++){
		comma.append(lines.get(i));
		if ( i != lines.size()-1){
		comma.append(",");
		}
	}
	String input = comma.toString();
	String part[] = input.split(",");
	if(part[0].equals(UserId) && part[3].equals(Lname) && part[4].equals(Email))
	{
		%>
		Your password is<STRONG><font color="red"><p><%= part[1] %></p>
		</font></STRONG>
		<%
	}
	else
	{
	%>
		<STRONG><font color="red"><p>Sorry one of the inputs is incorrect please 
			make sure about them</p></font></STRONG>
		<%
	}
}
%>

<p>Here is a form where you can get your password. 
For your security please change the password as soon as you login.</p>
<form>
Username: <input type="text" name="userid" REQUIRED >
<br><p></p>
Last name: <input type="text" name="lname" REQUIRED><br><p></p>
Email: <input type="text" name="email" REQUIRED><br><p></p>
<input type="submit" value="Show Password" name="Spass" align="center"><br><p></p>
</form>
</CENTER>

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
