
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<link rel="stylesheet" type="text/css" href="mpq.css"/>
<title>��¼</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<center>
<h1><%=new java.util.Date()%></h1>
</center>
	<div id="main_special">
		<fieldset><legend>��¼</legend>
			<form action="" method="post">
				<label for="label1">��&nbsp; ��&nbsp; ����</label>
				<input type="text" name="name" id="username label1"/><font style="font-size:12px;color:#898983"> *�û������ó���16λ�ַ�</font><br>
				<label for="label2">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺</label>
				<input type="password" name="pw" id="password label2"/><font style="font-size:12px;color:#898983"> *���벻�ܳ���16λ�ַ�</font><br>
				<input type="submit" name="submit" class="submit" value="��¼"/>
				<input type="reset" name="reset" class="submit" value="����"/>
			</form>
		</fieldset>
	</div>
	<script type="text/javascript">
      $( ".submit" ).click(function(event) {
		    alert("��¼�ɹ�");
	        $.ajax({ 
	          url: "success.json"
	        }).done(function(data){
		        	if (console&&console.log){
						var account = $('#username').value;
						var password = $('#password').value;
						console.dir(data);
						alert(data.msg);	
		        	}
	        })
      });
    </script>
</body>
</html>