<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/teste.css" />
</head>
<body>

	<form class="form-horizontal">
		<fieldset>
			<div class="panel panel-primary">
				<div class="panel-heading">Cadastro de Cliente</div>

				<div class="panel-body">
					<div class="form-group">
						<!--
<div class="form-group">   
<div class="col-md-4 control-label">
    <img id="logo" src="http://blogdoporao.com.br/wp-content/uploads/2016/12/Faculdade-pitagoras.png"/>
</div>
<div class="col-md-4 control-label">
    <h1>Cadastro de Cliente</h1>
    
</div>
</div>
    -->
						<div class="col-md-11 control-label">
							<p class="help-block">
								<h11>*</h11>
								Campo Obrigat�rio
							</p>
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-2 control-label" for="Nome">Nome <h11>*</h11></label>
						<div class="col-md-8">
							<input id="Nome" name="Nome" placeholder=""
								class="form-control input-md" required="" type="text">
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-2 control-label" for="Nome">CPF <h11>*</h11></label>
						<div class="col-md-2">
							<input id="cpf" name="cpf" placeholder="Apenas n�meros"
								class="form-control input-md" required="" type="text"
								maxlength="11" pattern="[0-9]+$">
						</div>

						<label class="col-md-1 control-label" for="Nome">Nascimento<h11>*</h11></label>
						<div class="col-md-2">
							<input id="dtnasc" name="dtnasc" placeholder="DD/MM/AAAA"
								class="form-control input-md" required="" type="text"
								maxlength="10" OnKeyPress="formatar('##/##/####', this)"
								onBlur="showhide()">
						</div>

						<!-- Multiple Radios (inline) -->

						<label class="col-md-1 control-label" for="radios">Sexo <h11>*</h11></label>
						<div class="col-md-4">
							<label required="" class="radio-inline" for="radios-0"> <input
								name="sexo" id="sexo" value="feminino" type="radio" required>
								Feminino
							</label> <label class="radio-inline" for="radios-1"> <input
								name="sexo" id="sexo" value="masculino" type="radio">
								Masculino
							</label>
						</div>
					</div>

					<!-- Prepended text-->
					<div class="form-group">
						<label class="col-md-2 control-label" for="prependedtext">Telefone
							<h11>*</h11>
						</label>
						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-earphone"></i></span> <input
									id="prependedtext" name="prependedtext" class="form-control"
									placeholder="XX XXXXX-XXXX" required="" type="text"
									maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
									OnKeyPress="formatar('## #####-####', this)">
							</div>
						</div>

						<label class="col-md-1 control-label" for="prependedtext">Telefone</label>
						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-earphone"></i></span> <input
									id="prependedtext" name="prependedtext" class="form-control"
									placeholder="XX XXXXX-XXXX" type="text" maxlength="13"
									pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
									OnKeyPress="formatar('## #####-####', this)">
							</div>
						</div>
					</div>

					<!-- Prepended text-->
					<div class="form-group">
						<label class="col-md-2 control-label" for="prependedtext">Email
							<h11>*</h11>
						</label>
						<div class="col-md-5">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input
									id="prependedtext" name="prependedtext" class="form-control"
									placeholder="email@email.com" required="" type="text"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
							</div>
						</div>
					</div>


					<!-- Search input-->
					<div class="form-group">
						<label class="col-md-2 control-label" for="CEP">CEP <h11>*</h11></label>
						<div class="col-md-2">
							<input id="cep" name="cep" placeholder="Apenas n�meros"
								class="form-control input-md" required="" value="" type="search"
								maxlength="8" pattern="[0-9]+$">
						</div>
						<div class="col-md-2">
							<button type="button" class="btn btn-primary"
								onclick="pesquisacep(cep.value)">Pesquisar</button>
						</div>
					</div>

					<!-- Prepended text-->
					<div class="form-group">
						<label class="col-md-2 control-label" for="prependedtext">Endere�o</label>
						<div class="col-md-4">
							<div class="input-group">
								<span class="input-group-addon">Rua</span> <input id="rua"
									name="rua" class="form-control" placeholder="" required=""
									readonly="readonly" type="text">
							</div>

						</div>
						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon">N� <h11>*</h11></span> <input
									id="numero" name="numero" class="form-control" placeholder=""
									required="" type="text">
							</div>

						</div>

						<div class="col-md-3">
							<div class="input-group">
								<span class="input-group-addon">Bairro</span> <input id="bairro"
									name="bairro" class="form-control" placeholder="" required=""
									readonly="readonly" type="text">
							</div>

						</div>
					</div>

					<div class="form-group">
						<label class="col-md-2 control-label" for="prependedtext"></label>
						<div class="col-md-4">
							<div class="input-group">
								<span class="input-group-addon">Cidade</span> <input id="cidade"
									name="cidade" class="form-control" placeholder="" required=""
									readonly="readonly" type="text">
							</div>

						</div>

						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon">Estado</span> <input id="estado"
									name="estado" class="form-control" placeholder="" required=""
									readonly="readonly" type="text">
							</div>

						</div>
					</div>

					<div class="form-group">

						<label class="col-md-2 control-label" for="selectbasic">Escolaridade
							<h11>*</h11>
						</label>

						<div class="col-md-3">
							<select required id="escolaridade" name="escolaridade"
								class="form-control">
								<option value=""></option>
								<option value="Analfabeto">Analfabeto</option>
								<option value="Fundamental Incompleto">Fundamental
									Incompleto</option>
								<option value="Fundamental Completo">Fundamental
									Completo</option>
								<option value="M�dio Incompleto">M�dio Incompleto</option>
								<option value="M�dio Completo">M�dio Completo</option>
								<option value="Superior Incompleto">Superior Incompleto</option>
								<option value="Superior Completo">Superior Completo</option>
							</select>
						</div>


						<!-- Text input-->

						<label class="col-md-1 control-label" for="profissao">Profiss�o<h11>*</h11></label>
						<div class="col-md-4">
							<input id="profissao" name="profissao" type="text" placeholder=""
								class="form-control input-md" required="">

						</div>
					</div>

					<div class="form-group">
						<label class="col-md-2 control-label" for="prependedtext">Telefone
							<h11>*</h11>
						</label>
						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-earphone"></i></span> <input
									id="prependedtext" name="prependedtext" class="form-control"
									placeholder="XX XXXXX-XXXX" required="" type="text"
									maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
									OnKeyPress="formatar('## #####-####', this)">
							</div>
						</div>

						<label class="col-md-1 control-label" for="prependedtext">Telefone</label>
						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-earphone"></i></span> <input
									id="prependedtext" name="prependedtext" class="form-control"
									placeholder="XX XXXXX-XXXX" type="text" maxlength="13"
									pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
									OnKeyPress="formatar('## #####-####', this)">
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-2 control-label" for="Cadastrar"></label>
				<div class="col-md-8">
					<button id="Cadastrar" name="Cadastrar" class="btn btn-success"
						type="Submit">Cadastrar</button>
					<button id="Cancelar" name="Cancelar" class="btn btn-danger"
						type="Reset">Cancelar</button>
				</div>
			</div>
			</div>
			</div>
		</fieldset>
	</form>
	<script>
		function limpa_formulario_cep() {
			//Limpa valores do formul�rio de cep.
			document.getElementById('rua').value = ("");
			document.getElementById('bairro').value = ("");
			document.getElementById('cidade').value = ("");
			document.getElementById('estado').value = ("");

		}

		function meu_callback(conteudo) {
			if (!("erro" in conteudo)) {
				//Atualiza os campos com os valores.
				document.getElementById('rua').value = (conteudo.logradouro);
				document.getElementById('bairro').value = (conteudo.bairro);
				document.getElementById('cidade').value = (conteudo.localidade);
				document.getElementById('estado').value = (conteudo.uf);
			} //end if.
			else {
				//CEP n�o Encontrado.
				limpa_formulario_cep();
				alert("CEP n�o encontrado.");
				document.getElementById('cep').value = ("");
			}
		}

		function pesquisacep(valor) {

			//Nova vari�vel "cep" somente com d�gitos.
			var cep = valor.replace(/\D/g, '');

			//Verifica se campo cep possui valor informado.
			if (cep !== "") {

				//Express�o regular para validar o CEP.
				var validacep = /^[0-9]{8}$/;

				//Valida o formato do CEP.
				if (validacep.test(cep)) {

					//Preenche os campos com "..." enquanto consulta webservice.
					document.getElementById('rua').value = "...";
					document.getElementById('bairro').value = "...";
					document.getElementById('cidade').value = "...";
					document.getElementById('estado').value = "...";

					//Cria um elemento javascript.
					var script = document.createElement('script');

					//Sincroniza com o callback.
					script.src = '//viacep.com.br/ws/' + cep
							+ '/json/?callback=meu_callback';

					//Insere script no documento e carrega o conte�do.
					document.body.appendChild(script);

				} //end if.
				else {
					//cep � inv�lido.
					limpa_formulario_cep();
					alert("Formato de CEP inv�lido.");
				}
			} //end if.
			else {
				//cep sem valor, limpa formul�rio.
				limpa_formulario_cep();
			}
		}

		function formatar(mascara, documento) {
			var i = documento.value.length;
			var saida = mascara.substring(0, 1);
			var texto = mascara.substring(i);

			if (texto.substring(0, 1) != saida) {
				documento.value += texto.substring(0, 1);
			}

		}

		function idade() {
			var data = document.getElementById("dtnasc").value;
			var dia = data.substr(0, 2);
			var mes = data.substr(3, 2);
			var ano = data.substr(6, 4);
			var d = new Date();
			var ano_atual = d.getFullYear(), mes_atual = d.getMonth() + 1, dia_atual = d
					.getDate();

			ano = +ano, mes = +mes, dia = +dia;

			var idade = ano_atual - ano;

			if (mes_atual < mes || mes_atual == mes_aniversario
					&& dia_atual < dia) {
				idade--;
			}
			return idade;
		}

		function exibe(i) {

			document.getElementById(i).readOnly = true;

		}

		function desabilita(i) {

			document.getElementById(i).disabled = true;
		}
		function habilita(i) {
			document.getElementById(i).disabled = false;
		}

		function showhide() {
			var div = document.getElementById("newpost");

			if (idade() >= 18) {

				div.style.display = "none";
			} else if (idade() < 18) {
				div.style.display = "inline";
			}

		}
	</script>
</body>
</html>