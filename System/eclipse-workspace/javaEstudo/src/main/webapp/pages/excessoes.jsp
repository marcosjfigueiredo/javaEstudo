<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
	<h3>Capturando exceções com jquery</h3>
	<input type="text" value="valor informado" id="txtvalor">
	<input type="button" onclick="testarExcecao();" value="Testar Exceção">
	
</body>

<script type="text/javascript">
	 function testarExcecao(){
		 valorInformado =  $('#txtvalor').val();
		 
		 $.ajax({
			  method: "POST",
			  url: "excessao", // para qual servlet?
			  data: { valorParam: valorInformado }
			})
			.done(function(response) {// resposta ok - nenhum erro
			    alert("Sucesso: " + response);
			
			   // fazer algo
		   })
		   .fail(function(xhr, status, errorThrown) { // resposta erro - algum problema ocorreu
			   alert("Error: " + xhr.responseText); // mostra resposta do servidor
		   	    // fazer algo se der errado;
		   });
		 
	 }
</script>
</html>