<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	单文件上传
	<br />
	<form action="oneUpload.do" method="post"
		enctype="multipart/form-data">

		<input type="file" name="imageFile"><br /> <input
			type="submit">
	</form>

	<form action="download.do" method="post">
		<input type="text" name="fileName" value="IMG_7520 拷贝_副本.jpg">
		<input type="submit" value="ok">
	</form>
</body>
</html>