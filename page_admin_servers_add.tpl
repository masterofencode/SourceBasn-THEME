{if not $permission_addserver}
Access Denied
{else}
<div class="row" id="add-group">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Szczegóły Serwera</h3>
				<p>
					Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania.
				</p>
				<br /><br />
				<input type="hidden" name="insert_type" value="add">
				<div class="table-responsive">
					<table class="table table-striped" id="group.details" cellpadding="3">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="To jest adres IP twojego serwera. Możesz także wpisać domenę, jeśli masz jedną konfigurację."></i>
									IP/domena Serwera
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="address" name="address" value="{$ip}" />
								</div>
								<div id="address.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="To jest port, z którego działa serwer. <br /><br /><i>Domyslnie: 27015</i>"></i>
									Port Serwera
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=2 class="form-control" id="port" name="port" value="{if $port}{$port}{else}{27015}{/if}" />
								</div>
								<div id="port.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="To jest hasło RCON twojego serwera. Można to znaleźć w pliku server.cfg to <i>rcon_password</i>.<br /><br />Zostanie to wykorzystane, aby umożliwić administratorom administrowanie serwerem za pośrednictwem interfejsu internetowego."></i>
									Hasło RCON (Nie wymagane)
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=3 class="form-control" id="rcon" name="rcon" value="{$rcon}" />
								</div>
								<div id="rcon.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Wpisz ponownie hasło rcon"></i>
									Hasło RCON (Powtórz)
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=4 class="form-control" id="rcon2" name="rcon2" value="{$rcon}" />
								</div>
								<div id="rcon2.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Wybierz mod, który aktualnie działa twój serwer."></i>
									MOD Serwera
								</div>
							</td>
							<td>
								<div align="left" id="admingroup">
									<select name="mod" TABINDEX=5 onchange="" id="mod" class="form-control">
										{if !$edit_server}
										<option value="-2">Proszę Czekać...</option>
										{/if}
										{foreach from="$modlist" item="mod"}
										<option value='{$mod.mid}'>{$mod.name}</option>
										{/foreach}
									</select>
								</div>
								<div id="mod.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Umożliwia wyświetlanie serwera na liście serwerów publicznych."></i>
									Włącz
								</div>
							</td>
							<td>
								<div align="left">
									<div class="form-check" id="loginRememberMeDiv">
										<label class="form-check-label">
										<input id="enabled" type="checkbox" name="enabled" vspace="5px" checked="checked" class="form-check-input"> &nbsp;
										<i class="input-helper"></i></label>
									</div>
								</div>
								<div id="enabled.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Wybierz grupy, do których chcesz dodać ten serwer. Grupy serwerów służą do dodawania administratorów do określonych zestawów serwerów."></i>
									Grupy Serwera 
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
						{foreach from="$grouplist" item="group"}
						<tr>
							<td valign="middle">&nbsp;
							</td>
							<td>
								<div align="left">
									<div class="form-check" id="loginRememberMeDiv">
										<label class="form-check-label">
										<input id="g_{$group.gid}" type="checkbox" name="groups[]" value="{$group.gid}" vspace="5px" class="form-check-input"> {$group.name}
										<i class="input-helper"></i></label>
									</div>
								</div>
							</td>
						</tr>
						{/foreach}
						<tr id="nsgroup" valign="top" class="badentry"> 		
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{if $edit_server}
								{sb_button text=$submit_text onclick="process_edit_server();" class="ok" id="aserver" submit=false}
								{else}
								{sb_button text=$submit_text onclick="process_add_server();" class="ok" id="aserver" submit=false}
								{/if}
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
{/if}