<div id="admin-page-content">
	<div class="row" id="0">
		<!-- div ID 0 is the first 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">u
					<h3>Twoje Uprawnienia</h3>
					<p>Poniżej znajduje się lista uprawnień, które masz w tym systemie.</p>
					<br /><br /> <br />
					<table width="100%" border="0">
						<tr>
							<td width="35%" valign="top">-{$web_permissions|replace:"&bull;":"<span style=\"color:#1b75d1;\">&bull;</span>"}-</td>
							<td valign="top">-{$server_permissions|replace:"&bull;":"<span style=\"color:#1b75d1;\">&bull;</span>"}-</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="row" id="1" style="display:none;">
		<!-- div ID 1 is the second 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>Zmień Hasło</h3>
					<div class="table-responsive">
						<table class="table" id="group.details">
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Musimy znać twoje aktualne hasło, aby je zweryfikować."></i>
										Aktualne Hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onblur="xajax_CheckPassword(-{$user_aid}-, $('current').value);" class="form-control" id="current" name="current" />
									</div>
									<div id="current.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Wpisz tutaj nowe hasło.<br /><br /><i>Minimalna długość: -{$min_pass_len}-</i>"></i>
										Nowa Hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="password" onkeyup="checkYourAcctPass();" id="pass1" value="" name="pass1" />
									</div>
									<div id="pass1.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz ponownie nowe hasło, aby uniknąć pomyłki"></i>
										Powtórz Nowe Hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onkeyup="checkYourAcctPass();" class="form-control" id="pass2" name="pass2" />
									</div>
									<div id="pass2.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="submit" onclick="xajax_CheckPassword(-{$user_aid}-, $('current').value);dispatch();" name="button" class="btn ok btn-success" id="button" value="Zapisz" />
									&nbsp; <input type="submit" onclick="history.go(-1)" name="button" class="btn cancel btn-danger" id="button" value="Anuluj" />	
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row" id="2" style="display:none;">
		<!-- div ID 2 is the third 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>Zmień hasło na serwerze</h3>
					<p>Musisz określić to hasło na serwerze gry, aby móc korzystać z admina.<br />Kliknij <a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank"><b>tutaj</b></a> i dowiedz się</p>
					<div class="table-responsive">
						<table class="table" id="group.details">
							-{if $srvpwset}-
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Musimy znać twoje aktualne hasło, aby je zweryfikować."></i>
										Aktualne hasło na serwerze
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onblur="xajax_CheckSrvPassword(-{$user_aid}-, $('scurrent').value);" class="form-control" id="scurrent" name="scurrent" />
									</div>
									<div id="scurrent.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							-{/if}-
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Wpisz tutaj nowe hasło do serwera. <br /><br /><i>Minimalna długość: -{$min_pass_len}-"></i>
										Nowe Hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="password" onkeyup="checkYourSrvPass();" id="spass1" value="" name="spass1" />
									</div>
									<div id="spass1.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz ponownie nowe hasło do serwera, aby uniknąć pomyłki."></i>
										Powtórz hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onkeyup="checkYourSrvPass();" class="form-control" id="spass2" name="spass2" />
									</div>
									<div id="spass2.msg" class="badentry"></div>
								</td>
							</tr>
							-{if $srvpwset}-
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz usunąć hasło do serwera"></i>
										Usuń hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input type="checkbox" id="delspass" name="delspass" />
									</div>
								</td>
							</tr>
							-{/if}-
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="submit" onclick="-{if $srvpwset}-xajax_CheckSrvPassword(-{$user_aid}-, $('scurrent').value);-{/if}-srvdispatch();" name="button" class="btn ok btn-success" id="button" value="Zapisz" />
									&nbsp; <input type="submit" onclick="history.go(-1)" name="button" class="btn cancel btn-danger" id="button" value="Anuluj" />	
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row" id="3" style="display:none;">
		<!-- div ID 3 is the fourth 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>Zmień adres e mail</h3>
					<div class="table-responsive">
						<table class="table" id="group.details">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Twój aktualnie zapisany adres e-mail."></i>
										Aktualny Adres E mail
									</div>
								</td>
								<td>
									<div align="left">-{$email}-</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz tutaj swoje hasło."></i>
										Hasło
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="password" id="emailpw" value="" name="emailpw" />
									</div>
									<div id="emailpw.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz swój nowy adres e-mail tutaj."></i>
										Nowy E mail
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="text" id="email1" value="" name="email1" />
									</div>
									<div id="email1.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz swój nowy adres e-mail ponownie, aby uniknąć pomyłki."></i>
										Powtórz E mail
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" class="form-control" id="email2" name="email2" />
									</div>
									<div id="email2.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="submit" onclick="checkmail();" name="button" class="btn ok btn-success" id="button" value="Zapisz" />
									&nbsp; <input type="submit" onclick="history.go(-1)" name="button" class="btn cancel btn-danger" id="button" value="Anuluj" />	
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var error = 0;
			function set_error(count)
			{
				error = count;
			}
		function checkYourAcctPass()
			{
				var err = 0;
				
				if($('pass1').value.length < -{$min_pass_len}-)
				{
					$('pass1.msg').setStyle('display', 'block');
					$('pass1.msg').setHTML('Twoje hasło musi mieć conajmniej -{$min_pass_len} - liter');
					err++;
				}
				else
				{
					$('pass1.msg').setStyle('display', 'none');
				}
				if($('pass2').value != "" && $('pass2').value != $('pass1').value)
				{	
					$('pass2.msg').setStyle('display', 'block');
					$('pass2.msg').setHTML('Twoje hasła nie pasują do siebie');
					err++;
				}else{
					$('pass2.msg').setStyle('display', 'none');
				}
				if(err > 0)
				{
					set_error(1);
					return false;
				}
				else
				{
					set_error(0);
					return true;
				}	
			}
			function dispatch()
			{
				if($('current.msg').innerHTML == "Niepoprawno Hasło")
				{
					alert("Incorrect Password");
					return false;
				}
				if(checkYourAcctPass() && error == 0)
				{
					xajax_ChangePassword(-{$user_aid}-, $('pass2').value);
				}
			}
			function checkYourSrvPass()
			{
				if(!$('delspass') || $('delspass').checked == false)
				{
					var err = 0;
					
					if($('spass1').value.length < -{$min_pass_len}-)
					{
						$('spass1.msg').setStyle('display', 'block');
						$('spass1.msg').setHTML('Twoje hasło musi mieć co najmniej -{$min_pass_len}- liter');
						err++;
					}
					else
					{
						$('spass1.msg').setStyle('display', 'none');
					}
					if($('spass2').value != "" && $('spass2').value != $('spass1').value)
					{	
						$('spass2.msg').setStyle('display', 'block');
						$('spass2.msg').setHTML('Twoje hasła nie pasują do siebie');
						err++;
					}else{
						$('spass2.msg').setStyle('display', 'none');
					}
					if(err > 0)
					{
						set_error(1);
						return false;
					}
					else
					{
						set_error(0);
						return true;
					}	
				}
				else
				{
					set_error(0);
					return true;
				}	
			}
			function srvdispatch()
			{
				-{if $srvpwset}-
				if($('scurrent.msg').innerHTML == "Niepoprawne hasło.")
				{
					alert("Incorrect Password");
					return false;
				}
				-{/if}-
				if(checkYourSrvPass() && error == 0 && (!$('delspass') || $('delspass').checked == false))
				{
					xajax_ChangeSrvPassword(-{$user_aid}-, $('spass2').value);
				}
				if($('delspass').checked == true)
				{
					xajax_ChangeSrvPassword(-{$user_aid}-, 'NULL');
				}
			}
			function checkmail()
			{
				var err = 0;
		        if($('email1').value == "")
		        {
		            $('email1.msg').setStyle('display', 'block');
					$('email1.msg').setHTML('Wpisz nowy adres e mail');
					err++;
				}else{
					$('email1.msg').setStyle('display', 'none');
				}
		        
		        if($('email2').value == "")
		        {
		            $('email2.msg').setStyle('display', 'block');
					$('email2.msg').setHTML('Wpisz ponowanie nowy adres e mail');
					err++;
				}else{
					$('email2.msg').setStyle('display', 'none');
				}
		         
				if(err == 0 && $('email2').value != $('email1').value)
				{	
					$('email2.msg').setStyle('display', 'block');
					$('email2.msg').setHTML('Wpisane wiadomośći e mail nie pasują do siebie.');
					err++;
				}
		        
		        if($('emailpw').value == "")
		        {
		            $('emailpw.msg').setStyle('display', 'block');
					$('emailpw.msg').setHTML('Wpisz swoje hasło.');
					err++;
				}else{
					$('emailpw.msg').setStyle('display', 'none');
				}
		        
				if(err > 0)
				{
					set_error(1);
					return false;
				}
				else
				{
					set_error(0);
				}
				if(error == 0)
				{
					xajax_ChangeEmail(-{$user_aid}-, $('email2').value, $('emailpw').value);
				}
			}
	</script>
</div>