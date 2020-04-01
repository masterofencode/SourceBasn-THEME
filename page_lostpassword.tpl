<div class="card" id="lostpassword">
	<div class="col-lg-5 mx-auto p-lg-4">
		<h4 class="card-title mb-4">
			Wpisz swój adres e-mail w polu poniżej, aby zresetować hasło. 
		</h4>
		<div class="auto-form-wrapper " id="login-content">
			<div id="msg-red" style="display:none;">
				<i>
				<img src="./images/warning.png" alt="Warning" />
				</i>
				<b>Błąd</b>
				<br />
				Podany adres e-mail nie jest zarejestrowany w systemie.</i>
			</div>
			<div id="msg-blue" style="display:none;">
				<i>
				<img src="./images/info.png" alt="Warning" />
				</i>
				<b>Informacja</b>
				<br />
				Sprawdź swoją skrzynkę odbiorczą (i spam), aby znaleźć link, który pomoże Ci zresetować hasło.</i>
			</div>
			<div class="form-group" id="loginPasswordDiv">
				<label class="label" for="email">Twój Adres E mail</label>
				<div class="input-group">
					<input type="text" class="form-control" id="email" name="password" value="">
				</div>
			</div>
			<div id="loginSubmit" class="form-group text-center">
				{sb_button text=Ok onclick="xajax_LostPassword($('email').value);" class="btn btn-primary submit-btn btn-block" id=alogin submit=false}
			</div>
		</div>
	</div>
</div>