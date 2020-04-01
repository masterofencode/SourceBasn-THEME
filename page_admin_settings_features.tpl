<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Funkcje Bana</h3>
				<p>Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania</p>
				<br /><br />
				<div class="table-responsive">
					<form action="" method="post">
						<input type="hidden" name="settingsGroup" value="features" />
						<table class="table table-striped" id="group.features">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby umożliwić publiczne pobieranie i udostępnianie całej listy banów."></i>
										Eksportuj Wszystkie bany
									</div>
								</td>
								<td width="20%">
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="export_public" type="checkbox" name="export_public" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby wykopać gracza, gdy zostanie nadany ban."></i>
										Włącz Kicklt
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_kickit" type="checkbox" name="enable_kickit" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz włączyć banowanie całych grup społeczności Steam."></i>
										Włącz banowanie grup
									</div>
								</td>
								<td>
									<div align="left">
										{if $steamapi}
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_groupbanning" type="checkbox" name="enable_groupbanning" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
										{else}
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_groupbanning" type="checkbox" name="enable_groupbanning" vspace="5px" class="form-check-input" disabled>&nbsp;
											<i class="input-helper"></i></label>
										</div>
										<br/>Nie ustawiłeś prawidłowego klucza Steamapi w konfiguracji
										{/if}
									</div>
									<div id="enable_groupbanning.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz włączyć banowanie wszystkich przyjaciół społeczności Steam gracza."></i>
										Włącz banowanie znajomych
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_friendsbanning" type="checkbox" name="enable_friendsbanning" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_friendsbanning.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz włączyć ponowne przeglądanie przez administratora przy każdej zmianie administratora / grupy."></i>
										Włącz ponowne administrowanie
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_adminrehashing" type="checkbox" name="enable_adminrehashing" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_adminrehashing.msg" class="badentry"></div>
								</td>
							</tr>
							<!-- added for steam login option mod -->
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz włączyć opcję Normalne logowanie w formularzu logowania."></i>
										Włącz normalne logowanie
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_steamlogin" type="checkbox" name="enable_steamlogin" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_steamlogin.msg" class="badentry"></div>
								</td>
							</tr>
							<!-- end steam login option mod -->
							<tr>
								<td colspan="2" align="center">
									{sb_button text="Zapisz Ustawienia" class="ok btn-success" id="fsettings" submit=true}
									&nbsp;
									{sb_button text="Wstecz" class="cancel btn-danger" id="fback"}
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="card-body">
				<h3>Szablon</h3>
				<p>Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania</p>
				<br /><br />
				<div class="table-responsive">
					<table class="table table-striped" id="group.features">
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz włączyć motyw czarny."></i>
									Włącz Czarny Motyw
								</div>
							</td>
							<td width="50px"></td>
							<td width="160px"></td>
							<td width="20%">
								<div align="left">
									<div class="form-check">
										<label class="form-check-label">
										<input id="enable_darktheme" type="checkbox" name="enable_darktheme" vspace="5px" class="form-check-input">&nbsp;
										<i class="input-helper"></i></label>
									</div>
								</div>
								<div id="enable_darktheme.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do kolorowania gradientu od lewej do prawej na pasku nawigacyjnym ..."></i>
									Kolor gradientu paska nawigacyjnego
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#00e4d0','gradLeft','--nav-grad-left');SyncInputs('#5983e8','gradRight','--nav-grad-right');"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_gradRight" id="i_gradRight" class="form-control text-center form-control-sm" style="float:right; width:80px;" onchange="SyncInputs(this.value,this.name,'--nav-grad-right')">
									<input type="text" name="i_gradLeft" id="i_gradLeft" class="form-control text-center form-control-sm"  style="float:right; width:80px;" onchange="SyncInputs(this.value,this.name,'--nav-grad-left')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="gradLeft" id="gradLeft" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--nav-grad-left')">
									<input type="color" name="gradRight" id="gradRight" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--nav-grad-right')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor jest do podstawowego zabarwienia"></i>
									Kolor Podstawowy
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#308ee0','colorPrimary','--primary')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorPrimary" id="i_colorPrimary" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--primary')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorPrimary" id="colorPrimary" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--primary')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do wtórnego kolorowania"></i>
									Dodatkowy kolor
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#e5e5e5','colorSecondary','--secondary')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorSecondary" id="i_colorSecondary" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--secondary')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorSecondary" id="colorSecondary" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--secondary')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do kolorwania success"></i>
									Kolor succes
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#00ce68','colorSuccess','--success')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorSuccess" id="i_colorSuccess" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--success')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorSuccess" id="colorSuccess" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--success')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do kolorowania informacji"></i>
									Kolor informacji
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#8862e0','colorInfo','--info')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorInfo" id="i_colorInfo" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--info')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorInfo" id="colorInfo" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--info')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do kolorowania ostrzegawczego"></i>
									Kolor Ostrzeżenia
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#ffaf00','colorWarning','--warning')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorWarning" id="i_colorWarning" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--warning')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorWarning" id="colorWarning" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--warning')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do zabarwienia błędu"></i>
									Kolor Błędu
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#e65251','colorDanger','--danger')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorDanger" id="i_colorDanger" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--danger')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorDanger" id="colorDanger" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--danger')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor służy do jasnego zabarwienia"></i>
									Jasny kolor
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#f3f5f6','colorLight','light')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorLight" id="i_colorLight" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--light')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorLight" id="colorLight" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--light')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="Ten kolor jest do ciemnego zabarwienia"></i>
									Ciemny Kolor
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#424964','colorDark','--dark')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorDark" id="i_colorDark" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--dark')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorDark" id="colorDark" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--dark')">
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								{php} include("./themes/star/customizeTheme.php");{/php}
								<button name="themeChanges" class="btn ok btn-success" onclick="SaveThemeChanges()">Zapisz ustawienia szablonu</button>
								&nbsp;
								{sb_button text="Wstecz" class="cancel btn-danger" id="fback"}
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<button class="btn btn-primary">Podstawowy</button>
								<button class="btn btn-secondary">Drugorzędny</button>
								<button class="btn btn-success">Success</button>
								<button class="btn btn-info">Informacja</button>
								<button class="btn btn-warning">Ostrzeżenie</button>
								<button class="btn btn-danger">Błąd</button>
								<button class="btn btn-light">Jasny</button>
								<button class="btn btn-dark">Ciemny</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>