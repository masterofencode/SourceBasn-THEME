<form action="" method="post">
	<div id="admin-page-content">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body" id="add-group">
						<h3>Dostęp do serwera/h3>
						<p>Proszę wybrać serwer do którego admin ma mieć dostęp.</p>
						<br /><br />
						<div class="table-responsive">
							<table class="table">
								{if $row_count < 1}
								<tr>
									<td colspan="3" class=""><i>Musisz dodać serwer lub grupę serwerów, zanim będziesz mógł skonfigurować uprawnienia do serwera</i></td>
								</tr>
								{else}
								<thead>
									<tr>
										<th colspan="3">Grupy Serwera</th>
									</tr>
								</thead>
								{foreach from="$group_list" item="group"}
								<tr>
									<td colspan="2" class="tablerow1">{$group.name}</td>
									<td align="center" class="tablerow1">
										<div class="form-check">
											<label class="form-check-label">
											<input id="group_{$group.gid}" type="checkbox" name="group[]" value="g{$group.gid}" vspace="5px" class="form-check-input" > &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</td>
								</tr>
								{/foreach}
								<thead>
									<tr>
										<th colspan="3">Serwery</th>
									</tr>
								</thead>
								{foreach from="$server_list" item="server"}
								<tr class="tablerow1">
									<td colspan="2" class="tablerow1" id="host_{$server.sid}">Proszę czekać...</td>
									<td align="center" class="tablerow1">
										<div class="form-check">
											<label class="form-check-label">
											<input id="server_{$server.sid}" type="checkbox" name="servers[]" value="s{$server.sid}" vspace="5px" class="form-check-input" > &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</td>
								</tr>
								{/foreach}
								{/if}
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td align="center">
										{if $row_count > 0}
										{sb_button text="Zapisz Zmiany" class="ok" id="editadminserver" submit=true}
										&nbsp;
										{/if}
										{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="aback"}
									</td>
								</tr>
							</table>
						</div>
						<script>
							{foreach from="$assigned_servers" item="asrv"}
								if($('server_{$asrv.0}'))$('server_{$asrv.0}').checked = true;
								if($('group_{$asrv[1]}'))$('group_{$asrv[1]}').checked = true;
							{/foreach}
							{foreach from="$server_list" item="server"}
								xajax_ServerHostPlayers({$server.sid}, "id", "host_{$server.sid}");
							{/foreach}
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>