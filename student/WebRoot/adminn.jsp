<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="org.hyh.biz.*"%>
<%@ page import="org.hyh.servlet.*"%>
<%@ page import="java.util.*"%>
<HTML>
	<HEAD>
		<TITLE>��¼</TITLE>
		<meta http-equiv="content-type" content="text/html; charset=gb2312">
		<link href="css.css" rel="stylesheet" type="text/css">
	</HEAD>
	<BODY>
	<div align="center"><img src="title.jpg"></div>
		<%ConnCtrol dbctrol = new ConnCtrol();
			String action = request.getParameter("action");
			if ((action != null) && action.equals("login")) {
				String admins = request.getParameter("admins");
				String pass = request.getParameter("passs");
				boolean flag = dbctrol.checkRole(admins, pass);
				if (flag) {
					session.setAttribute("admins", "admin");
					response.sendRedirect("mainlogin.jsp");
				} else {
					out.print("<script>alert('��������û��������벻��ȷ������������!')</script>");
                    session.setAttribute("admins", null);
				}
			}
		%>
		<center>
			<TABLE align="center" border="1" width="75%" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
				<TR>
					<TD class="css" colspan="2" align="center" bgcolor="#f7f7f7">
						<b>������½</b>
					</TD>

				</TR>
				<TR>
					<form method="post" action="adminn.jsp?action=login">
					<TD class="css" align="center">
						�û���:
					</TD>
					<TD class="css">
						<input type="text" name="admins" class="inputt">
					</TD>
				<TR>
					<TD class="css" align="center">
						�� ��:
					</TD>
					<TD class="css">
						<input type="password" name="passs" class="inputt">
					</TD>
				</TR>
				<TR>
					<TD colspan="2" class="css" align="center">
						<input type="submit" value="��½" class="buttonn">
						&nbsp;&nbsp;
						<input type="reset" value="����" class="buttonn">
					</TD>
				</TR>
				</form>
			</TABLE>
		</center>
		<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<hr>
<div class="text" style="text-align:center;font-size:12px;">Copyright @ 2014 ������ͨ��ѧ ���������Ϣ����ѧԺ  ����ˬ All Rights Reserved</div>
	</BODY>
</HTML>
