<%@ page contentType="text/html; charset=GBK"  import="java.util.*,org.hyh.biz.DataClass" %>
<html>
<head>
<title>
��ʾѧ����Ϣ
</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#ffffff">
<div align="center"><img src="title.jpg"></div>

<table align="center" width="75%" border="1" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
  <TR>
	<TD class="css" colspan="6" align="center" bgcolor="#f7f7f7">
		<b>ѧ����Ϣ</b>
	</TD>

</TR>
  <tr>
    <td>ѧ��</td>
    <td>����</td>
    <td>�༶</td>
    <td>�ɼ�</td>
    <td>�޸�</td>
    <td>ɾ��</td>
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
    <td><a href="update?id=<%=bean.getId()%>">�޸�</a></td>
    <td><a href="delete?id=<%=bean.getId()%>">ɾ��</a></td>
  </tr>
 <%}%>
 <TR>
	<TD colspan="6" class="css" align="center">
		<a href="Register.jsp">�������ѧ����Ϣ</a>
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
<div class="text" style="text-align:center;font-size:12px;">Copyright @ 2014 ������ͨ��ѧ ���������Ϣ����ѧԺ  ����ˬ All Rights Reserved</div>
</body>
</html>
