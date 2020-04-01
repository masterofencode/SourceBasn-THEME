<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<form action="" method="post">
					<input type="hidden" name="settingsGroup" value="mainsettings" />
					<h3>Główne Ustawienia</h3>
					<p>Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania.</p>
					<br /><br />
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zdefiniuj tytuł wyświetlany w tytule przeglądarki."></i>
										Tytuł
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=1 class="form-control" id="template_title" name="template_title" value="{$config_title}" />
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Tutaj możesz zdefiniować nową lokalizację logo, abyś mógł użyć własnego obrazu."></i>
										Logo
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=2 class="form-control" id="template_logo" name="template_logo" value="{$config_logo}" />
										<p class="mt-1 mb-0">For mini logo, add &quot;-mini&quot; at the end of the file name. <code>sb-logo.png &gt; sb-logo-mini.png</code></p>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Określ najkrótszą długość hasła."></i>
										Długość najkrótszego hasła
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=3 class="form-control" id="config_password_minlength" name="config_password_minlength" value="{$config_min_password}" />
									</div>
									<div id="minpasslength.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Tutaj możesz zmienić format daty wyświetlany na liście banów i innych stronach."></i>
										Format Daty
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=4 class="form-control" id="config_dateformat" name="config_dateformat" value="{$config_dateformat}" />
										<a href="http://www.php.net/date" target="_blank">Zobacz: PHP date()</a>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby trwale włączyć tryb debugowania."></i>
										Debugmode (Nie zalecane)
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="config_debug" type="checkbox" TABINDEX=6 name="config_debug" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>Ustawienia Dashboard</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Ustaw tytuł wprowadzenia do pulpitu nawigacyjnego."></i>
										Tytuł nawigacyjne
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=7 class="form-control" id="dash_intro_title" name="dash_intro_title" value="{$config_dash_title}" />
									</div>
									<div id="dash.intro.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Ustaw tekst wprowadzenia do pulpitu nawigacyjnego."></i>
										Tekst wprowadzania 
									</div>
								</td>
								<td>
									<div align="left">  </div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2"> <textarea TABINDEX=6 cols="80" rows="20" id="dash_intro_text" name="dash_intro_text">{$config_dash_text}</textarea>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby wyłączyć wyskakujące okno informacji o logach i użyć bezpośredniego łącza."></i>
										Włącz wyskaujące okienko logów
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="dash_nopopup" type="checkbox" TABINDEX=8 name="dash_nopopup" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>Ustawienia Strony</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby włączyć stronę odwoływania banów."></i>
										Włącz odwoływanie od banów
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_protest" type="checkbox" TABINDEX=9 name="enable_protest" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby włączyć stronę blokowania przesyłania."></i>
										Włącz blokowanie przesyłania
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_submit" type="checkbox" TABINDEX=10 name="enable_submit" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby włączyć stronę commslist."></i>
										Włącz Commslist
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_commslist" type="checkbox" TABINDEX=10 name="enable_commslist" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, aby wysłać wiadomość e-mail z powiadomieniem o odwołaniu tylko do administratora, który zbanował odwołującego się gracza."></i>
										Włącz otrzymywania e maila od odwołania
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="protest_emailonlyinvolved" type="checkbox" TABINDEX=9 name="protest_emailonlyinvolved" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wybierz stronę, która będzie pierwszą stroną, którą zobaczą ludzie."></i>
										Default Page
									</div>
								</td>
								<td>
									<div align="left">
										<select class="form-control" TABINDEX=11 name="default_page" id="default_page">
											<option value="0">Głowna Strona</option>
											<option value="1">Lista Banów</option>
											<option value="2">Lista Serwerów</option>
											<option value="3">Bany</option>
											<option value="4">Odwołania od banów</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Kliknij ten przycisk, aby wyczyścić folder themes_c."></i>
										Wyczyść Cache
									</div>
								</td>
								<td>
									<div align="left">
										{sb_button text="Clear Cache" onclick="xajax_ClearCache();" class="cancel" id="clearcache" submit=false}
									</div>
									<div id="clearcache.msg"></div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>Ustawienia Listy Banów</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wybierz, ile elementów ma być wyświetlanych na każdej stronie."></i>
										Ile elemntów
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=12 class="form-control" id="banlist_bansperpage" name="banlist_bansperpage" value="{$config_bans_per_page}" />
									</div>
									<div id="bansperpage.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz ukryć nazwę administratora podczas bana."></i>
										Ukryj nick admina
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_hideadmname" type="checkbox" TABINDEX=13 name="banlist_hideadmname" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_hideadmname.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli nie chcesz wyświetlać kraju z adresu IP na liście banów. Użyj, jeśli napotkasz problemy z wyświetlaniem."></i>
										Nie widzieć nazwy kraju
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_nocountryfetch" type="checkbox" TABINDEX=14 name="banlist_nocountryfetch" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_nocountryfetch.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Zaznacz to pole, jeśli chcesz ukryć adres IP odtwarzacza przed publicznością."></i>
										Ukryj Adres IP gracza
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_hideplayerips" type="checkbox" TABINDEX=15 name="banlist_hideplayerips" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_hideplayerips.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz niestandardowe powody banów, które mają się pojawiać w menu rozwijanym."></i>
										Niestadardowe powody banów
									</div>
								</td>
								<td>
									<div align="left">
										<table width="100%" border="0" style="border-collapse:collapse;" id="custom.reasons" name="custom.reasons">
											{foreach from="$bans_customreason" item="creason"}
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]" value="{$creason}"/></td>
											</tr>
											{/foreach}
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]"/></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]"/></td>
											</tr>
										</table>
										<table>
											<tr>
												<td>
													<a href="javascript:void(0)" onclick="MoreFieldsNewCss();" title="Dodaj kolejne pole" class="btn btn-primary"> Dodaj pole</a>
												</td>
											</tr>
										</table>
									</div>
									<div id="bans_customreason.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									{sb_button text="Zapisz Ustawienia" class="ok btn-success" id="asettings" submit=true}
									&nbsp;
									{sb_button text="Wstecz" class="cancel btn-danger" id="aback"}
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>$('sel_timezoneoffset').value = "{$config_time}";</script>
{literal}
<script type="text/javascript">
	function MoreFieldsNewCss()
	{
		var t = document.getElementById("custom.reasons");
		var tr = t.insertRow("-1");
		var td = tr.insertCell("-1");
		var inp = document.createElement("input");
		inp.setAttribute("type","text");
		inp.className = "submit-fields form-control";
		inp.setAttribute("name","bans_customreason[]");
		inp.setAttribute("id","bans_customreason[]");
		td.appendChild(inp);
	}
</script>
{/literal}