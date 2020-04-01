<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">Lista Serwerów</h4>
				<div class="table-responsive" id="server_group">
					{if $IN_SERVERS_PAGE && $access_bans}
					<div style="text-align:right; width:100%;"><span class="text-muted" style="font-size:12px;">Pomoc: Kliknij gracza prawym przyciskiem myszy, aby otworzyć menu kontekstowe z opcjami kicka, banowania lub bezpośredniego kontaktu z graczem.</span></div>
					{/if}
					<table class="table table-bordered table-striped table-hover tbl-sm">
						<thead>
							<tr>
								<th width="2%" height="16" class="listtable_top">MOD</th>
								<th width="2%" height="16" class="listtable_top">System</th>
								<th width="2%" height="16" class="listtable_top">System VAC</th>
								<th height="16" class="listtable_top" align="center">Nazwa Serwera</th>
								<th width="10%" height="16" class="listtable_top">Gracze</th>
								<th width="10%" height="16" class="listtable_top">Mapa</th>
							</tr>
						</thead>
						<tbody>
							{foreach from=$server_list item=server key=index}
							<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_{$server.sid}" aria-expanded="{if $smarty.get.s==$index && isset($smarty.get.s)}true{else}false{/if}" aria-controls="collapseExample" {if !$IN_SERVERS_PAGE} onclick="{$server.evOnClick}"{/if}>
							<td height="16" align="center"><img src="themes/star/images/games/{$server.icon}" class="img-ss" /></td>
							<td height="16" align="center" id="os_{$server.sid}"></td>
							<td height="16" align="center" id="vac_{$server.sid}"></td>
							<td height="16" id="host_{$server.sid}"><i>Wczytywanie danych serwera...</i></td>
							<td height="16" id="players_{$server.sid}">BRAK</td>
							<td height="16" id="map_{$server.sid}">BRAK</td>
							</tr>
							{if $IN_SERVERS_PAGE}
							<tr>
								<td colspan="7" align="center" style="padding:0;">
									<div class="collapse {if $index == $smarty.get.s && isset($smarty.get.s)}show{/if}" id="expand_{$server.sid}" data-parent="#server_group">
										<div id="sinfo_{$server.sid}">
											<table width="100%" border="0" class="table table-bordered table-striped table-hover">
												<tr>
													<td class="listtable_1" valign="top">
														<table width="100%" border="0" class="table table-sm table-bordered table-striped table-hover" id="playerlist_{$server.sid}" name="playerlist_{$server.sid}">
														</table>
													</td>
													<td width="355px" class="listtable_2 opener" valign="top" style="padding-right: 0px; padding-left: 13px; padding-top: 12px;">
														<img id="mapimg_{$server.sid}" style="border-radius: 6px; padding-left: 1px;width:340px !important;" src='images/maps/nomap.jpg'>
														<br />
														<br />
														<div align='center'>
															<p style="font-size: 13px;">{$server.ip}:{$server.port}</p>
															<input type='submit' onclick="document.location = 'steam://connect/{$server.ip}:{$server.port}'" name='button' class='btn btn-success' style='margin:0px;' id='button' value='Połącz z serwerem' />
															<input type='button' onclick="ShowBox('Ładowanie..','<b>Odświerzanie danych serwera...</b><br><i>Please Wait!</i>', 'blue', '', false);document.getElementById('dialog-control').setStyle('display', 'none');xajax_RefreshServer({$server.sid});" name='button' class='btn btn-warning' style='margin:0;' id='button' value='Odświerz' />
														</div>
														<br />
													</td>
												</tr>
											</table>
										</div>
										<div id="noplayer_{$server.sid}" name="noplayer_{$server.sid}" style="display:none;">
											<br />
											<h2 style="color: #333;">Aktualnie brak graczy na serwerze</h2>
											<br />
											<div align='center'>
												<p style="font-size: 13px;">{$server.ip}:{$server.port}</p>
												<input type='submit' onclick="document.location = 'steam://connect/{$server.ip}:{$server.port}'" name='button' class='btn btn-success' style='margin:0;' id='button' value='Połącz z serwerem' />
												<input type='button' onclick="ShowBox('Wykonywanie akcji..','<b>Odświerzanie danych serwera..</b><br><i>Proszę czekać!</i>', 'blue', '', false);document.getElementById('dialog-control').setStyle('display', 'none');xajax_RefreshServer({$server.sid});" name='button' class='btn btn-warning' style='margin:0;' id='button' value='Odśwież' /><br /><br />
											</div>
										</div>
									</div>
								</td>
							</tr>
							{/if}
							{/foreach}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>