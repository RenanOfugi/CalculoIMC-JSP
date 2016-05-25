<!DOCTYPE HTML>
<html>
<body>

	<h1>Cálculo de IMC</h1>
	<hr>

	<%
		String op1 = request.getParameter("altura");
		String op2 = request.getParameter("peso");
		float altura = 0;
		float peso = 0;
		String results = "";

		if (op1 == null) {
			altura = 0;
		} else
			altura = Float.parseFloat(op1);

		if (op2 == null) {
			peso = 0;
		} else
			peso = Float.parseFloat(op2);

		float calculo = peso / (altura * altura);

		if (calculo < 17) {
			results = "Muito abaixo do peso";
		} else if (calculo >= 17 && calculo <= 18.49) {
			results = "Abaixo do peso";
		} else if (calculo >= 18.5 && calculo <= 24.99) {
			results = "Peso normal";
		} else if (calculo >= 25 && calculo <= 29.99) {
			results = "Acima do peso";
		} else if (calculo > 30) {
			results = "Obesidade";
		}
	%>
	<h2>
		Sua situação atual é :
		<%= results %>
	</h2>
</body>
</html>