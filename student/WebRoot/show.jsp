<%@ page contentType="text/html; charset=GBK"  import="java.util.*,org.hyh.biz.DataClass" %>
<html>
<head>
<title>
显示学生信息
</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#ffffff">
<div align="center"><img src="title.jpg"></div>

<table align="center" width="75%" border="1" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
  <TR>
	<TD class="css" colspan="6" align="center" bgcolor="#f7f7f7">
		<b>学生信息</b>
	</TD>

</TR>
  <tr>
    <td>学号</td>
    <td>姓名</td>
    <td>班级</td>
    <td>成绩</td>
    <td>修改</td>
    <td>删除</td>
  </tr>
  <%
        DataClass bean=new DataClass();
        ArrayList list=new ArrayList();
        list=bean.select();
        for(int i=0;i<list.size();i++){
        bean=(DataClass)list.get(i); %>
  <tr>
    <td><%=bean.getId() %></td>
    <td><%=bean.getName() %></td>
    <td><%=bean.getClassGrent() %></td>
    <td><%=bean.getResult() %></td>
    <td><a href="update?id=<%=bean.getId()%>">修改</a></td>
    <td><a href="delete?id=<%=bean.getId()%>">删除</a></td>
  </tr>
 <%}%>
 <TR>
	<TD colspan="6" class="css" align="center">
		<a href="Register.jsp">继续添加学生信息</a>
	</TD>
</TR>
</table>
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
<div class="text" style="text-align:center;font-size:12px;">Copyright @ 2014 北京交通大学 计算机与信息技术学院  刘竞爽 All Rights Reserved</div>
</body>
</html>
