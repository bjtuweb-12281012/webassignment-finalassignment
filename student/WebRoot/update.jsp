<%@ page contentType="text/html; charset=GBK" import="java.util.*,org.hyh.biz.DataClass" %>
<html>
<head>
<title>
�޸�ѧ����Ϣ
</title>
</head>
<body bgcolor="#ffffff">
  <form action="update2" method="POST">
<h1>

</h1>
<%
String classgrent=null;
String result=null;
ArrayList list=(ArrayList)request.getAttribute("list1");
for(int i=0;i<list.size();i++){
  DataClass bean=(DataClass)list.get(i);
  classgrent=bean.getClassGrent();
  result=bean.getResult();
}
%>
<table>
  <tr>
    <td>�༶:</td>
    <td><input type="text" name="grent" value="<%=classgrent%>"/></td>
  </tr>
  <tr>
    <td>�ɼ�:</td>
    <td><input type="text" name="result" value="<%=result%>"/></td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" value="�޸�"/></td>
  </tr>
</table>
  </form>

</body>
</html>
