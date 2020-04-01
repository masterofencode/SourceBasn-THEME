<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">Odowłanie od bana</h4>
				<p>
					Zanim przejdziesz dalej, najpierw sprawdź naszą listę banów i przeszukaj ją, klikając <a href="index.php?p=banlist">tutaj</a> jeśli jesteś na liście z jakiegoś powodu.<br />
					Jeśli znajdziesz się na liście banów i znajdziesz przyczynę nieprawdy, możesz napisać odwołanie.
				</p>
				{literal}
				<style>
					.form-group label{text-align:right;}
				</style>
				{/literal}
				<form action="index.php?p=protest" method="post">
					<p class="card-description">
						Twoje szczegóły
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Typ Bana</label>
								<div class="col-sm-9">
									<select class="form-control" name="Type" onChange="changeType(this[this.selectedIndex].value);">
										<option value="0">Steam ID</option>
										<option value="1">IP</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="steam.row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Twoje STEAMID</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SteamID" value="{$steam_id}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="ip.row" style="display:none;">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Twoje IP</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="IP" value="{$ip}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Nazwa</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="PlayerName" value="{$player_name}" />
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Powód, dla którego powinieneś zostać odbanowany <span class="text-danger">*</span>: <br>(Podaj jak najwięcej opisów) </td></label>
								<div class="col-sm-9">
									<textarea name="BanReason" cols="30" rows="5" class="form-control">{$reason}</textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Twój e mail</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="EmailAddr" value="{$player_email}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label"><span class="text-danger">*</span> = Pole Obowiązkowe</label>
								<div class="col-sm-9">
									<input type="submit" name="alogin" class="btn btn-success" value="Zatwierdź">
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="subprotest" value="1">
				</form>
				<p class="lead">Co dzieje się po napisanym odwołaniu?</p>
				<p>
					Administratorzy otrzymają powiadomienie o twoim odwołaniu. Następnie sprawdzą, każdą informacje.Po sprawdzeniu otrzymasz odpowiedź, w ciągu 24 godzin.<br /><br />
					<b>Notka:</b> Wysyłanie wiadomości e-mail z groźbami do naszych administratorów, besztanie lub krzyczenie nie spowoduje, że zostaniesz odbanowany, a tak naprawdę natychmiast usuniemy twoje odwołanie! 
				</p>
			</div>
		</div>
	</div>
</div>