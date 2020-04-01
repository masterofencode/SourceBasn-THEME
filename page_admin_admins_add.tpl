{if NOT $permission_addadmin}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Warning" /></i>
	<b>Dodanie Admina</b>
	<br />
	Nowy administrator został pomyślnie dodany do systemu.<br /><br />
	<i>Przekierowanie z powrotem na stronę administratorów.</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group">
				<h3>Szczegóły Admina</h3>
				<p>
					Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania.
				</p>
				<br /><br />
				<div id="banlist" class="table-responsive">
					<table class="table table-striped" id="group.details">
						<tr>
							<td valign="top" width="15%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Wprowadź nazwe admina, dzięki czemu będzie mógł on poruszać sie po systemie ale również logować się."></i> 
									Nazwa Admina (LOGIN)
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="adminname" name="adminname" />
								</div>
								<div id="name.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Wprowadź 'STEAM ID' admina aby mógł swobodnie korzystać z tego, przyokazji pomaga to w połączniu strony z serwerem."></i>
									STEAM ID
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=2 value="STEAM_0:" class="form-control" id="steam" name="steam" />
								</div>
								<div id="steam.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Wpisz adress e-mail admina."></i>
									E-mail 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control" id="email" name="email" />
								</div>
								<div id="email.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Hasło admina będzie potrzebne do logowania się. Rzecz oczywista :)"></i>
									Hasło 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=4 class="form-control" id="password" name="password" />
								</div>
								<div id="password.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Powtórz hasło admina"></i>
									Powtórz Hasło (wymaganae) 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=5 class="form-control" id="password2" name="password2" />
								</div>
								<div id="password2.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="Zaznacz checkbox aby umożliwić bezpośrednio wpisanie hasło na serwer co umożliwi dodanie również admina na serwer."></i>
									Hasło na Serwer <small>(<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank">Czytaj</a>)</small>
								</div>
							</td>
							<td>
								<div class="row">
									<div class="form-group mt-2">
										<div class="form-check" id="loginRememberMeDiv">
											<label class="form-check-label">
											<input id="a_useserverpass" type="checkbox" name="a_useserverpass" vspace="5px" class="form-check-input" TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;"> &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div class="col-sm-11">
										<input type="password" TABINDEX=7 class="form-control" name="a_serverpass" id="a_serverpass" disabled="disabled" />
									</div>
									<div id="a_serverpass.msg" class="badentry"></div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<hr>
				<h3>Zatwierdzenie Admina</h3>
				<div id="banlist" class="table-responsive">
					<table class="table table-striped" id="group.details">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="<b>Serwer: </b><br>Wybierz serwer na którym ma być dodane admin"></i>
									Spis Serwerów
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2">
								<table class="table table-sm">
									{foreach from="$group_list" item="group"}
									<tr>
										<td colspan="2" class="tablerow4">{$group.name}<b><i>(Grupa)</i></b></td>
										<td align="center" class="tablerow4">
											<div class="form-check">
												<label class="form-check-label">
												<input id="group[]" type="checkbox" name="group[]" vspace="5px" class="form-check-input" value="g{$group.gid}"> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</td>
									</tr>
									{/foreach}
									{foreach from="$server_list" item="server"}
									<tr class="tablerow1">
										<td colspan="2" class="tablerow1" style="background:#fff;" id="sa{$server.sid}"><i>Odświerzanie danych... {$server.ip}:{$server.port}</i></td>
										<td align="center" class="tablerow1" style="background:#fff;">
											<div class="form-check">
												<label class="form-check-label">
												<input id="servers[]" type="checkbox" name="servers[]" vspace="5px" class="form-check-input" value="s{$server.sid}"> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</td>
									</tr>
									{/foreach}
								</table>
							</td>
						</tr>
					</table>
				</div>
				<hr>
				<h3>Uprawnienia Admina</h3>
				<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="<b>Custom Permisions: </b><br>Select this to choose custom permissions for this admin.<br><br><b>New Group: </b><br>Select this to choose custom permissions and then save the permissions as a new group.<br><br><b>Groups: </b><br>Select a pre-made group to add the admin to."></i>
								Przydział do grupy
							</div>
						</td>
						<td>
							<div align="left" id="admingroup">
								<select TABINDEX=8 onchange="update_server()" name="serverg" id="serverg" class="form-control" style="width: 225px">
									<option value="-2">Proszę wybrać...</option>
									<option value="-3">Bez uprawnień</option>
									<option value="c">Niestandardowe Uprawnienia</option>
									<option value="n">Nowa grupa</option>
									<optgroup label="Groups" style="font-weight:bold;">
										{foreach from="$server_admin_group_list" item="server_wg"}
										<option value='{$server_wg.id}'>{$server_wg.name}</option>
										{/foreach}
									</optgroup>
								</select>
							</div>
							<div id="server.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td colspan="2" id="serverperm" valign="top" style="height:5px;overflow:hidden;"></td>
					</tr>
					<tr>
						<td valign="top">
							<div class="rowdesc">
								<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="<b>Custom Permisions: </b><br>Select this to choose custom permissions for this admin.<br><br><b>New Group: </b><br>Select this to choose custom permissions and then save the permissions as a new group.<br><br><b>Groups: </b><br>Select a pre-made group to add the admin to."></i>
								Grupy WEB
							</div>
						</td>
						<td>
							<div align="left" id="webgroup">
								<select TABINDEX=9 onchange="update_web()" name="webg" id="webg" class="form-control" style="width: 225px">
									<option value="-2">Proszę wybrać...</option>
									<option value="-3">Bez uprawnień</option>
									<option value="c">Niestandardowe Uprawnienia</option>
									<option value="n">Nowa Grupa</option>
									<optgroup label="Groups" style="font-weight:bold;">
										{foreach from="$server_group_list" item="server_g"}
										<option value='{$server_g.gid}'>{$server_g.name}</option>
										{/foreach}
									</optgroup>
								</select>
							</div>
							<div id="web.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td colspan="2" id="webperm" valign="top" style="height:5px;overflow:hidden;"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							{sb_button text="Dodaj Admina" onclick="ProcessAddAdmin();" class="ok" id="aadmin" submit=false}
							&nbsp;
							{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="aback"}
						</td>
					</tr>
				</table>
				{$server_script}
			</div>
		</div>
	</div>
</div>
{/if}