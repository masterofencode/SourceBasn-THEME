<form action="" method="post">
	<div id="admin-page-content">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body" id="add-group">
						<h3>Szegóły admina</h3>
						<div class="table-responsive">
							<table id="group.details" class="table table-striped">
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="To jest nick Admina."></i>
										Login Admina
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="adminname" name="adminname" value="{$user}" />
										</div>
										<div id="adminname.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="To jest STEAM ID admina"></i>
										STEAM ID Admina
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="steam" name="steam" value="{$authid}" />
										</div>
										<div id="steam.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Tutaj znajduję się aktualny e mail admina"></i>
										E mail Admina
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="email" name="email" value="{$email}" />
										</div>
										<div id="email.msg" class="badentry"></div>
									</td>
								</tr>
								{if $change_pass}
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Tutaj ustawisz lub zmienisz hasło wybranego admina"></i>
										Hasło 
									</td>
									<td>
										<div align="left">
											<input type="password" class="form-control" id="password" name="password" />
										</div>
										<div id="password.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Powtórz hasło wybranego admina"></i>
										Hasło (Powtórz)
									</td>
									<td>
										<div align="left">
											<input type="password" class="form-control" id="password2" name="password2" />
										</div>
										<div id="password2.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" >
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Ustaw hasło serwerowe. Więcej dowiesz się klikając 'Czytaj'"></i>
										Hasło serwerowe <small>(<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank">Czytaj</a>)</small>
									</td>
									<td>
										<div class="row">
											<div class="form-group mt-2">
												<div class="form-check" id="loginRememberMeDiv">
													<label class="form-check-label">
													<input id="a_useserverpass" type="checkbox" name="a_useserverpass" vspace="5px" class="form-check-input" {if $a_spass} checked="checked"{/if} TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;"> &nbsp;
													<i class="input-helper"></i></label>
												</div>
											</div>
											<div class="col-sm-11">
												<input type="password" TABINDEX=7 class="form-control" name="a_serverpass" id="a_serverpass" {if !$a_spass} disabled="disabled"{/if} />
											</div>
											<div id="a_serverpass.msg" class="badentry"></div>
										</div>
										<div id="a_serverpass.msg" class="badentry"></div>
									</td>
								</tr>
								{/if}
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>
										{sb_button text="Zapisz Zmiany" class="ok" id="editmod" submit=true}
										&nbsp;
										{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="back" submit=false} 
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>