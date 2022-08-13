<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Currency converter</title>
		<style>
			h1{
				color:white;
				background-color:;
				text-align:center;
				font-size:60px;
				margin:10px 5px 5px 5px;
				padding:4px 0 8px 0;
				text-shadow:0px 0px 10px black;
			}
			
			h3{
				color:blue;
				background-color:white;
				text-shadow:0px 0px 10px yellow;
				text-align:center;
				font-size:20px;
				margin:25px 5px 5px 5px;
				padding-top:3px;
				padding-bottom:4px;
			}
			body{
				
				height:200%;
				display:flex;
				flex-direction:column;
				justify-content:center;
				background-image:url('/WebContent/chart2.jpg');
				background-repeat:no-repeat;
				background-position:center;
				background-size:cover;
			}
			.intxt{
				width:150px;
				height:30px;
				font-size:18px;
				color:#006fff;
				background-color:#ffffff;
				font-weight:600;
				text-align:center;
			}
			
			#sel1{
				background-color:#ffffff;
				color:#006fff;
				font-weight:600;
				font-family:TimesNewRoman;
				text-align:center;
				width:150px;
				height:30px;
				font-size:22px;
			}
			
			#sel2{
				background-color:#ffffff;
				color:#006fff;
				font-weight:600;
				font-family:TimesNewRoman;
				text-align:center;
				width:150px;
				height:30px;
				font-size:22px;
			}
			
			.box{
				text-align:right;
			}
			.inbox{
				text-align: left;
			}
			#cy1 {
				width:50px;
				height:30px;
			}
			#cy2 {
				width:50px;
				height:30px;
			}
			td{
				text-align:center;
				padding:5px 5px 5px 5px;
				font-weight:600;
				font-size:30px;
				color:yellow;
				text-shadow:0 0 10px black;
			}
			select{
				font-size:20px;
			}
			
			#sub{
				width:120px;
				height:35px;
				font-size:23px;
				font-weight:600;
				color:blue;
				background-color:white;
				border-radius:10px;
				text-shadow:0 0 5px yellow;
				border-color:yellow;
				font-family:TimesNewRoman;
			}
		</style>
		<script type="text/javaScript">
			
			function getC1Name()
			{
				var option = document.getElementById('sel1').value;
				
				document.getElementById("cy1").value=option;
			}
			
			function getC2Name()
			{
				var option = document.getElementById('sel2').value;
				
				document.getElementById("cy2").value=option;
			}
			
			function resetC2Val()
			{
				document.getElementById("cv2").value=0;
			}
		</script>
	</head>
	<body>
		<h1>Currency Converter</h1>
		<h3>This page will provide you the Realtime exchange rates of various currencies across the world.</h3>
		<br><br>
		<form:form method="post" action="/print" modelAttribute="input">
			<table align="center">
				<tr>
					<td>Select Country</td>
					<td><form:select id="sel1" path="country1" onchange="getC1Name(); resetC2Val()">
							<option disabled selected value>-Select-</option>
							<form:option value="INR">India</form:option>
							<form:option value="USD">USA</form:option>
							<form:option value="EUR">France</form:option>
							<form:option value="ILS">Israel</form:option>
							<form:option value="AUD">Autsralia</form:option>
							<form:option value="RUB">Russia</form:option>
							<form:option value="JPY">Japan</form:option>
							<form:option value="PKR">Pakistan</form:option>
							<form:option value="NPR">Nepal</form:option>
							<form:option value="LKR">Sri Lanka</form:option>
							<form:option value="BDT">Bangladesh</form:option>
							<form:option value="BTN">Bhutan</form:option>
							<form:option value="CNY">China</form:option>
							<form:option value="TWD">Taiwan</form:option>
							<form:option value="GBP">Britain</form:option>
							<form:option value="IRR">Iran</form:option>
							<form:option value="SAR">Saudi Arabia</form:option>
							<form:option value="KWD">Kuwait</form:option>
							<form:option value="QAR">Qatar</form:option>
							<form:option value="BHD">Bahrain</form:option>
							<form:option value="AED">UAE</form:option>
							<form:option value="CAD">Canada</form:option>
							<form:option value="AFN">Afghanistan</form:option>
							<form:option value="KRW">South Korea</form:option>
							<form:option value="KPW">North Korea</form:option>
							<form:option value="VND">Vietnam</form:option>
							<form:option value="PHP">Philippines</form:option>
							<form:option value="THB">Thailand</form:option>
							<form:option value="SGD">Singapore</form:option>
							<form:option value="CHF">Switzerland</form:option>
							<form:option value="MYR">Malaysia</form:option>
							<form:option value="KHR">Cambodia</form:option>
							<form:option value="MVR">Maldives</form:option>
						</form:select>
					</td>
					<td></td>
					<td>Select Country</td>
					<td><form:select id="sel2" path="country2" onchange="getC2Name(); resetC2Val()">
							<option disabled selected value>-Select-</option>
							<form:option value="INR">India</form:option>
							<form:option value="USD">USA</form:option>
							<form:option value="EUR">France</form:option>
							<form:option value="ILS">Israel</form:option>
							<form:option value="AUD">Autsralia</form:option>
							<form:option value="RUB">Russia</form:option>
							<form:option value="JPY">Japan</form:option>
							<form:option value="PKR">Pakistan</form:option>
							<form:option value="NPR">Nepal</form:option>
							<form:option value="LKR">Sri Lanka</form:option>
							<form:option value="BDT">Bangladesh</form:option>
							<form:option value="BTN">Bhutan</form:option>
							<form:option value="CNY">China</form:option>
							<form:option value="TWD">Taiwan</form:option>
							<form:option value="GBP">Britain</form:option>
							<form:option value="IRR">Iran</form:option>
							<form:option value="SAR">Saudi Arabia</form:option>
							<form:option value="KWD">Kuwait</form:option>
							<form:option value="QAR">Qatar</form:option>
							<form:option value="BHD">Bahrain</form:option>
							<form:option value="AED">UAE</form:option>
							<form:option value="CAD">Canada</form:option>
							<form:option value="AFN">Afghanistan</form:option>
							<form:option value="KRW">South Korea</form:option>
							<form:option value="KPW">North Korea</form:option>
							<form:option value="VND">Vietnam</form:option>
							<form:option value="PHP">Philippines</form:option>
							<form:option value="THB">Thailand</form:option>
							<form:option value="SGD">Singapore</form:option>
							<form:option value="CHF">Switzerland</form:option>
							<form:option value="MYR">Malaysia</form:option>
							<form:option value="KHR">Cambodia</form:option>
							<form:option value="MVR">Maldives</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td class="box"><form:input class="intxt" type="number" path="value1" step="0.001" min="0" required="true"/></td>
					<td class="inbox"><form:input id="cy1" class="intxt" path="c1Code" readonly="true"/></td>
					<td>To</td>
					<td class="box"><form:input id="cv2" class="intxt" type="text" path="value2" readonly="true" value="${input.getValue2()}"/></td>
					<td class="inbox"><form:input id="cy2" class="intxt" path="c2Code" readonly="true"/></td>
				</tr>
				<tr>
					<td colspan="5"><input id="sub" type="submit" value="Convert"/></td>
				</tr>
			</table>
		</form:form>
	</body>
</html>