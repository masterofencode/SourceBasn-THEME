<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">Zgłoś gracza</h4>
				<p>
					Tutaj możesz zgłosić gracza, który łamie zasady serwera gry. Zgłaszając, prosimy o wypełnienie wszystkich pól, aby były jak najbardziej opisowe. Dzięki temu zgłoszenie bana zostanie przetworzone znacznie szybciej.<br /><br />
					Aby uzyskać krótkie wyjaśnienie, jak utworzyć demo, click <a href="javascript:void(0)" onclick="ShowBox('Jak utworzyć demko?', 'Podczas obserwowania gracza, który jest podejrzany, naciśnij klawisz ` na klawiaturze. Następnie wpisz record [nick gracza] i wciśnij enter. Wpisz także sb_status, aby uzyskać dodatkowe informacje na serwerach SteamBans. Plik będzie w twoim folderze mod.', 'blue', '', true);">tutaj</a><br /><br />
				</p>
				{literal}
				<style>
					.form-group label{text-align:right;}
				</style>
				{/literal}
				<form action="index.php?p=submit" method="post" enctype="multipart/form-data">
					<input type="hidden" name="subban" value="1">
					<p class="card-description">
						Szczegóły Bana
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">STEAM ID Gracza:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SteamID" value="{$STEAMID}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">IP Gracza:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="BanIP" value="{$ban_ip}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Nick gracza<span class="text-danger">*</span>:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="PlayerName" value="{$player_name}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Komentarz<span class="text-danger">*</span>:<br/>
								(Napisz opisowy komentarz)</td></label>
								<div class="col-sm-9">
									<textarea name="BanReason" cols="30" rows="5" class="form-control">{$ban_reason}</textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Twoj Nick:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SubmitName" value="{$subplayer_name}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Twój E mail<span class="text-danger">*</span>:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="EmailAddr" value="{$player_email}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Serwer<span class="text-danger">*</span>:</label>
								<div class="col-sm-9">
									<select class="form-control" name="server">
									{foreach from="$server_list" item="server}
									<option value="{$server.sid}" {if $server_selected == $server.sid}selected{/if}>{$server.hostname}</option>
									{/foreach}
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Wrzuć demo:</label>
								<div class="col-sm-9">
									<input type="file" class="form-control" name="demo_file" value="{$player_email}"/>
									<p>Notka: Tylko format DEM, <a href="http://www.winzip.com" target="_blank">ZIP</a>, <a href="http://www.rarlab.com" target="_blank">RAR</a>, <a href="http://www.7-zip.org" target="_blank">7Z</a>, <a href="http://www.bzip.org" target="_blank">BZ2</a> oraz <a href="http://www.gzip.org" target="_blank">GZ</a>.	
									</td>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label"><span class="text-danger">*</span> = Pole obowiązkowe</label>
								<div class="col-sm-9">
									<input type="submit" name="save" class="btn btn-success" value="Zatwierdź">
								</div>
							</div>
						</div>
					</div>
				</form>
				<p class="lead">Co się stanie, jeśli ktoś zostanie zbanowany?</p>
				<p>
					Jeśli ktoś zostanie zbanowany, określony STEAMID lub adres IP będzie zawarty w tej bazie danych i za każdym razem, gdy ten gracz spróbuje połączyć się z jednym z naszych serwerów, zostanie zablokowany i otrzyma wiadomość, że jest zablokowany. 
				</p>
			</div>
		</div>
	</div>
</div>