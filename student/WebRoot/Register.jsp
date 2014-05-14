<%@ page contentType="text/html; charset=GBK"%>
<html>
	<head>
		<title>录入学生信息</title>
	</head>
	<body bgcolor="#ffffff">
	<div align="center"><img src="title.jpg"></div>
		<p align="center">
			添加学生信息
		</p>
		<form method="post" action="login">
			<table align="center">
				<tr>
					<td>
						学号:
					</td>
					<td>
						<input type="text" name="id" size="20" />
					</td>
				</tr>
								<tr>
					<td>
						姓名:
					</td>
					<td>
						<input type="text" name="name" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						班级:
					</td>
					<td>
						<input type="text" name="ClassGrent" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						成绩:
					</td>
					<td>
						<input type="text" name="result" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="添加" />
						&nbsp;&nbsp;
						<input type="reset" value="取消" />
					</td>
				</tr>
			</table>
		</form>
		<br>
<br>
<br>
<br>
<br>
<hr>
<div class="text" style="text-align:center;font-size:12px;">Copyright @ 2014 北京交通大学 计算机与信息技术学院  刘竞爽 All Rights Reserved</div>
	</body>
</html>
