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
<%
			HttpSession session1 = request.getSession();
			//String uss= session1.getAttribute("userID").toString();
			try{
			
				if(session1.getAttribute("userID") != null){
				 %>
				welcome, <%= session1.getAttribute("userID") %><br>
				<%
					
				}
				else{
				pageContext.forward("index.jsp");
				}
			}catch (IndexOutOfBoundsException e) {
				System.err.println("IndexOutOfBoundsException: " + e.getMessage());
			} catch (IOException e) {
				System.err.println("Caught IOException: " + e.getMessage());
			}
%>
<br>Search Users : <input type="text" value = "Enter name" />
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
<!-- End of Navigation -->

<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top" bgcolor="#FFFFFF">
<BR>

<h2>
<form >
 <input type="text" name="status" value = "Enter you Status">
<button>Submit</button>
</form>
</h2>

<div style="background-color:black; color:white; margin:10px; padding:10px;">
Exams Over Time to go Home :)
<br>-Tessa
<!-- End of CONTENT-->
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
