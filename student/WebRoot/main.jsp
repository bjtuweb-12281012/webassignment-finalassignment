<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="org.hyh.biz.*"%>
<%@ page import="org.hyh.servlet.*"%>
<%@ page import="java.util.*"%>
<%
ConnCtrol dbctrol = new ConnCtrol();
RolBiz rolBiz = new RolBiz(); 
Role role = rolBiz.getRoleById(1);
String action = request.getParameter("action");
if(action!= null&&action.equals("edit")){
role.setAdmins(request.getParameter("admins"));
role.setPass(request.getParameter("pass"));
rolBiz.updataRoleByRole(role);
response.sendRedirect("mainlogin.jsp");
}
%>
<HTML>
<HEAD>
<TITLE>��̨��Ϣ����</TITLE>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<link href="css.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<div align="center"><img src="title.jpg"></div>
<TABLE align="center" width="75%" border="1" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
<TR>
<form method="post" action="main.jsp?action=edit">
	<TD class="css" height="27" bgcolor="#f7f7f7"colspan="2" 

align="center"><b>ϵͳ����</b></TD>

<TR>

	<TD class="css" align="center">����Ա���ƣ�</TD>
	<TD class="css"><input type="text" name="admins" 

class="inputt" value="<%=role.getAdmins()%>"></TD>
</TR>
<TR>
	<TD class="css" align="center">����Ա���룺</TD>
	<TD class="css"><input type="password" name="pass" class="inputt" 

value="<%=role.getPass()%>"></TD>
</TR>
<TR>
	<TD class="css" align="center" colspan="2"><input 

type="submit" value="�޸�" class="buttonn">&nbsp;&nbsp;<input 

type="reset" value="ȡ���޸�" class="buttonn"></TD>
</TR>


</form>
</TABLE>
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