<form action="" method="post">
	<div class="row">
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>Szczegóły moda</h3>
					<p>
						Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania.
					</p>
					<div class="table-responsive">
						<input type="hidden" name="insert_type" value="add">
						<table class="table" id="group.details" cellpadding="3">
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the name of the mod you are adding."></i>
										Nazwa moda 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="hidden" id="icon_hid" name="icon_hid" value="{$mod_icon}">
										<input type="text" TABINDEX=1 class="form-control" id="name" name="name" value="{$name}" />
									</div>
									<div id="name.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz nazwę tego folderu modów. Na przykład folder mod Counter-Strike: Source to „cstrike”"></i>
										Folder Moda 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=2 class="form-control" id="folder" name="folder" value="{$folder}" />
									</div>
									<div id="folder.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="(STEAM_ <b> X </b>: Y: Z) Niektóre gry wyświetlają steamid inaczej niż inne. Wpisz pierwszą liczbę w SteamID (<b> X </b>) w zależności od tego, jak jest renderowany przez ten mod. (Domyślnie: 0)."></i>Unikalny numer steam</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=3 class="form-control" id="steam_universe" name="steam_universe" value="{$steam_universe}" />
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wybierz, jeśli ten mod jest włączony i można go przypisać do banów i serwerów."></i>Włącz
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-group d-flex justify-content-between">
											<div class="form-check form-check-flat mt-0" id="loginRememberMeDiv">
												<label class="form-check-label">
												<input id="loginRememberMe" type="checkbox" id="enabled" name="enabled" value="1" TABINDEX=4 vspace="5px" checked="checked" class="form-check-input" checked=""> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Kliknij tutaj, aby przesłać ikonę powiązaną z tym modem."></i>Wrzuć ikone
									</div>
								</td>
								<td>
									<div align="left">
										{sb_button text="Wrzuć ikone" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="save btn-secondary" id="upload" submit=false} 
									</div>
									<div id="icon.msg" class="badentry" style="display:block;">
										{if $mod_icon}
										Przesłano: <b>{$mod_icon}</b>
										{/if}
									</div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>      
									{sb_button text="Zapisz Zmiany" class="ok btn-success" id="editmod" submit=true}
									&nbsp;
									{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel btn-danger" id="back" submit=false} 
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>