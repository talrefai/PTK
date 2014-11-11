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

<br><br>
Please login or sign up
<form action="./checkLogin.jsp" type="POST">
Username: <input type="text" name="userid" REQUIRED><br>
Password: <input type="password" name="password" REQUIRED>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Login" align="center" name="submitbtn" id="submitbtn">
</form>
<a href="#" name="forgetPass">Forget Password</a><br>
<a href="./signup.jsp" name="signUp">Sign up</a>
</td>
<!-- End of Navigation -->

<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top" bgcolor="#FFFFFF">
<BR>
<Center>
<H3>Welcome to PTK social media</H3>
in order to enjoy the PTK website you need to be a member.

</center>
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
