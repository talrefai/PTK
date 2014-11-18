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
		HttpSession ses = request.getSession(true);
		
		String userid = request.getParameter("userid");
		String pass = request.getParameter("password");
		
		ServletContext sc = this.getServletContext();
		String path = sc.getRealPath("/WEB-INF/userInfo.txt");
		List<String> lines = new ArrayList<String>();
		FileReader fr = new FileReader(path);
		BufferedReader bf = new BufferedReader(fr);
		if(fr.exists() && !fr.isDirectory())
		{
			try {
				String aLine;
				while ((aLine = bf.readLine()) != null) {
					if(aLine.contains(userid) && aLine.contains(pass))
					{
					lines.add(aLine);
					}				
				}
			} finally 
			{
				bf.close();
			}
			//System.out.println("Lines:" + lines + "\n");
			StringBuilder comma = new StringBuilder();
			for ( int i = 0; i< lines.size(); i++){
				comma.append(lines.get(i));

				if ( i != lines.size()-1){

				comma.append(",");

				}
			}
			//System.out.println(comma.toString());	
			String input = comma.toString();
			String part[] = input.split(",");
			if(userid.equals(part[0]) && pass.equals(part[1]))
			{
				ses.setAttribute("userID", userid);
				%>
				<H3>Login Success! </H3>
				click on <a href="./home.jsp">Home Page</a> to continue...
				<%
			
			}
			else
			{
				%> 
				<H3>Sorry entered either wrong username or password...</H3>
				click on <a href="./index.jsp">Index</a> to try again...
				<%
			}
		}
		else{
			%> 
				<H3>Sorry the file does not exists...</H3>
				click on <a href="./index.jsp">Index</a> and make sure about the file...
				<%
		}
%>
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

