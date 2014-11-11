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
<%
			HttpSession session1 = request.getSession();
			String uss= session1.getAttribute("userID").toString();
			if(uss != null){
			 %>
			welcome, <%= session1.getAttribute("userID") %>
			<%	
			}
			else{
			pageContext.forward("index.jsp");
			}
%>
</td>
</tr>

<tr>
<!-- ============ LEFT COLUMN (MENU) ============== -->
<td width="15%" valign="top" align="center" bgcolor="#00BFFF">
<BR>
<a href ="home.jsp">Home</a><br>
<a href ="">Message</a><br>
<a href ="profile.jsp">Profile</a><br>
<a href ="">Request</a><br>
<hr>
<a href ="">Category<br>
<ul>
  <li><a href ="">General Items</a></li>
  <li><a href ="sale.jsp">Sale</a></li>
  <li><a href ="">Accomedation</a></li>
</ul>
<br>
<hr>
<a href ="./logout.jsp">Logout</a><br>
<a href ="">Privacy</a><br>
</td>
<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top" bgcolor="#FFFFFF">
<BR>
<br><CENTER>
<%
		ServletContext sc = this.getServletContext();
		String path = sc.getRealPath("/WEB-INF/userInfo.txt");
		List<String> lines = new ArrayList<String>();
		FileReader fr = new FileReader(path);
		BufferedReader bf = new BufferedReader(fr);
		try {
			String aLine;
			while ((aLine = bf.readLine()) != null) {
				if(aLine.contains(uss))
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
		//System.out.println(part[0]);
%>
<%
if(request.getParameter("Supdate") !=null)
{
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
	 <%
	 
	 }
	else
	{
		//try{
		// get a relative file name
		ServletContext s = this.getServletContext();
		String pa = s.getRealPath("/WEB-INF/userInfo.txt");

		File file = new File(pa);

		File tempFile = new File(file.getAbsolutePath() + ".tmp");

		BufferedReader brr = new BufferedReader(new FileReader(pa));
		PrintWriter pw = new PrintWriter(new FileWriter(tempFile));

		String lin = null;
		while ((lin = brr.readLine()) != null) 
		{
			
			if (!lin.contains(UserId)) 
			{
				pw.println(lin +"\n");
				
			}
		}
			pw.println(UserId + "," + Password1 + "," 
				+ Fname + "," + Lname + "," + Email + "," + Desc +
				"," + phone + "," + address + "\n");
			pw.flush();
			pw.close();
			brr.close();
		  %>
		   <H3 ALIGN="CENTER">your information is updated...</H3> 
		   <%
		  //Delete the original file
		  if (!file.delete()) 
		  {
			%><H3 ALIGN="CENTER">Could not delete file</H3>
			<%
			return;
		  }

		  //Rename the new file to the filename the original file had.
		  if (!tempFile.renameTo(file)){
			%>
			<H3 ALIGN="CENTER">Could not rename the file</H3>
			<%
			}
			
		//} catch (IOException e) {
		//	System.err.println("Caught IOException: " + e.getMessage());
		//}
	}
}
%>
<H3>Personal Profile</H3>
<p>Here you can update your profile and once you done you can click 
 on update to store the new value</p>
<form>
Username: <input type="text" name="userid" value="<%= part[0] %>" REQUIRED READONLY>
<br><p></p>
Password: <input type="password" name="password1" value="<%= part[1] %>" REQUIRED><br><p></p>
Verify Password: <input type="password" name="password2" value="<%= part[1] %>"  REQUIRED><br><p></p>
********************<BR><p></p>
first name: <input type="text" name="fname" value="<%= part[2] %>" REQUIRED><br><p></p>
Last name: <input type="text" name="lname" value="<%= part[3] %>" REQUIRED><br><p></p>
Email: <input type="text" name="email" value="<%= part[4] %>" REQUIRED><br><p></p>
Description: <input type="text" name="Desc" value="<%= part[5] %>" REQUIRED><br><p></p>
Phone Number: <input type="number" name="phone" value="<%= part[6] %>" min="0" REQUIRED><br><p></p>
Address: <input type="text" name="address" value="<%= part[7] %>" REQUIRED><br><p></p>
<input type="submit" value="update All" name="Supdate" align="center"><br><p></p>
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
