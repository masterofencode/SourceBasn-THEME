-{if NOT $permission_rcon}-
Access Denied!
-{else}-
<div id="admin-page-content">
	<div id="0">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body">
						<h3>Konsola Serwera dla SourceBansa</h3>
						Zarządzaj Serwerem bez wchodzenia na niego!<br />
						Komendy jakie konsola obsługuje to RCON.
						<br /><br />
						<div align="center" width="90%">
							<div id="rcon" style="overflow:auto;
								background-color:#f1f7f9;
								color:white;
								border: 1px solid #999;
								padding: 3px;
								min-height: 250px;
								height:50vh;
								width: 90%;" align="left">
								<pre>
<div id="rcon_con" style="color:black;line-height: 18px;"><em style="color:darkgreen;">***********************************************************<br />**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**<br />*&nbsp;SourceBans - Konsola Serwera&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />*&nbsp;Wpisz swoje polecenie w polu poniżej i naciśnij klawisz Enter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />*&nbsp;Użyj 'clr' by wyczyścić konsolę&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**<br />***********************************************************</em>
</div>
</pre>
							</div>
							<br />
							<div class="input-group row col-12 col-xl-6">
								<input type="text" name="command" class="form-control" id="cmd" placeholder="Wprowadź komende:">
								<div class="input-group-append">
								<input type="button" onclick="SendRcon();" id="rcon_btn" value="Wyślij" class="btn btn-inverse-primary">
							</div>	
							</div>
						</div>
						Zaprogramował: <a href="https://steamcommunity.com/profiles/76561198131879425">cwaniak</a><br />
						Stworzone do użytkowania dla: <a href="https://headshotownia.pl">HeadShotownia.pl</a><br />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$E('html').onkeydown = function(event){
	    var event = new Event(event);
	    if (event.key == 'enter' ) SendRcon();
	};
	function SendRcon()
	{
		xajax_SendRcon('-{$id}-', $('cmd').value, true);
		 $('cmd').value='Trwa przetwarzanie, Prosze czekać...';
		 $('cmd').disabled='true';
		 $('rcon_btn').disabled='true';
	}
	var h = (parseInt(document.getElementById("rcon").clientHeight))/2;
	for(i=0;i<h;i+=18)
		document.getElementById("rcon_con").innerHTML+="<br>";
var scroll = new Fx.Scroll($('rcon'),{duration: 500, transition: Fx.Transitions.Cubic.easeInOut});
if(scroll)scroll.toBottom();
</script>
-{/if}-
