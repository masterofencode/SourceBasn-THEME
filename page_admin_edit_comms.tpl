<form action="" method="post">
	<div id="admin-page-content">
		<div id="0">
			<div id="msg-green" style="display:none;">
				<i><img src="./images/yay.png" alt="Warning" /></i>
				<b>Zaktualizowanie Blocka</b>
				<br />
				Szczegóły bloku zostały zaktualizowane.<br /><br />
				<i>Przekierowanie z powrotem do strony bloków</i>
			</div>
			<div id="add-group">
				<h3>Szczegóły Bloków</h3>
				Aby uzyskać więcej informacji lub pomocy dotyczących określonego tematu, przesuń kursor myszy nad znakiem zapytania.<br /><br />
				<input type="hidden" name="insert_type" value="add">
				<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								-{help_icon title="Nazwa gracza" message="To jest nazwa gracza, który został zablokowany."}-Nazwa Gracza
							</div>
						</td>
						<td>
							<div align="left">
								<input type="text" class="submit-fields" id="name" name="name" value="-{$ban_name}-" />
							</div>
							<div id="name.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<div class="rowdesc">
								-{help_icon title="Steam ID" message="To jest identyfikator Steam gracza, który został zablokowany. Możesz także wpisać identyfikator społeczności."}-Steam ID
							</div>
						</td>
						<td>
							<div align="left">
								<input value="-{$ban_authid}-" type="text" TABINDEX=2 class="submit-fields" id="steam" name="steam" />
							</div>
							<div id="steam.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								-{help_icon title="Typ Bloka" message="Wybierz, co zablokować - czat lub mikro"}-Typ Bloka
							</div>
						</td>
						<td>
							<div align="left">
								<select id="type" name="type" TABINDEX=2 class="submit-fields">
									<option value="1">Mikro</option>
									<option value="2">Czat</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								-{help_icon title="Powód Bloka" message="Wyjaśnij szczegółowo, dlaczego powstaje ten blok."}-Powód Bloka
							</div>
						</td>
						<td>
							<div align="left">
								<select id="listReason" name="listReason" TABINDEX=4 class="submit-fields" onChange="changeReason(this[this.selectedIndex].value);">
									<option value="" selected> -- Wybierz Powód -- </option>
									<optgroup label="Violation">
										<option value="Obscene language">Nie przyzwoity język</option>
										<option value="Insult players">Zniewaga graczy</option>
										<option value="Admin disrespect">Brak szacunki dla admina</option>
										<option value="Inappropriate Language">Nie właściwy język</option>
										<option value="Trading">Wymiaana</option>
										<option value="Spam in chat/voice">Spam</option>
										<option value="Advertisement">Reklamowanie</option>
									</optgroup>
									<option value="other">Inny powód</option>
								</select>
								<div id="dreason" style="display:none;">
									<textarea class="submit-fields" TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
								</div>
							</div>
							<div id="reason.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">-{help_icon title="Długość bloka" message="Wybierz, jak długo chcesz zablokować tę osobę."}-Długość bloka</div>
						</td>
						<td>
							<div align="left">
								<select id="banlength" name="banlength" TABINDEX=4 class="submit-fields">
									<option value="0">Na zawsze</option>
									<optgroup label="minut">
										<option value="1">1 minuta</option>
										<option value="5">5 minut</option>
										<option value="10">10 minut</option>
										<option value="15">15 minut</option>
										<option value="30">30 minut</option>
										<option value="45">45 minut</option>
									</optgroup>
									<optgroup label="godzin">
										<option value="60">1 godzina</option>
										<option value="120">2 godziny</option>
										<option value="180">3 godziny</option>
										<option value="240">4 godzny</option>
										<option value="480">8 godzin</option>
										<option value="720">12 godzin</option>
									</optgroup>
									<optgroup label="dni">
										<option value="1440">1 dzień</option>
										<option value="2880">2 dni</option>
										<option value="4320">3 dni</option>
										<option value="5760">4 dni</option>
										<option value="7200">5 dni</option>
										<option value="8640">6 dni</option>
									</optgroup>
									<optgroup label="tydzień">
										<option value="10080">1 tydzień</option>
										<option value="20160">2 tygodnie</option>
										<option value="30240">3 tygodnie</option>
									</optgroup>
									<optgroup label="miesiąc">
										<option value="43200">1 miesiąc</option>
										<option value="86400">2 miesiące</option>
										<option value="129600">3 miesiące</option>
										<option value="259200">6 miesięcy</option>
										<option value="518400">12 miesięcy</option>
									</optgroup>
								</select>
							</div>
							<div id="length.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<input type="hidden" name="did" id="did" value="" />
							<input type="hidden" name="dname" id="dname" value="" />
							-{sb_button text="Zapisz Zmiany" class="ok" id="editban" submit=true}-
							&nbsp;
							-{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="back" submit=false}-
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</form>