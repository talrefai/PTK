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
<br><br><a href="./index.jsp">Main Page</a><br>
 
 
</td>
<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top" bgcolor="#FFFFFF">
<BR>
<br><CENTER>

<H2>  </H2>
<H3>Sign up Form:</H3>
<form type="" ACTION="./signupCheck.jsp">
Username: <input type="text" name="userid" REQUIRED><br><p></p>
Password: <input type="password" name="password1" REQUIRED><br><p></p>
Verify Password: <input type="password" name="password2"REQUIRED><br><p></p>
********************<BR><p></p>
first name: <input type="text" name="fname" REQUIRED><br><p></p>
Last name: <input type="text" name="lname" REQUIRED><br><p></p>
Email: <input type="text" name="email" REQUIRED><br><p></p>
Description: <input type="text" name="Desc" REQUIRED><br><p></p>
Phone Number: <input type="number" name="phone" min="0" REQUIRED><br><p></p>
Address: <input type="text" name="address" REQUIRED><br><p></p>


&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p></p><input type="submit" value="Sign up" align="center">
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
