{if NOT $permission_list}
Access Denied
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Serwery <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Serwerów: {$server_count}</i></h3>
				<br><br>
				<div id="banlist" class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th width="3%">ID</th>
								<th width="54%">Nazwa Serwera</th>
								<th width="6%">Graczy</th>
								<th width="5%">Mod</th>
								<th>Działania</th>
							</tr>
						</thead>
						{foreach from="$server_list" item="server"}
						<script>xajax_ServerHostPlayers({$server.sid});</script>
						<tr id="sid_{$server.sid}" {if $server.enabled==0}style="background-color:#eaeaea" title="Nieaktywny"{/if}>
						<td>{$server.sid}</td>
						<td id="host_{$server.sid}"><i>Wczytywanie danych serwera...</i></td>
						<td id="players_{$server.sid}">BRAK</td>
						<td><img style="width:16px !important;height:16px !important;" src="images/games/{$server.icon}"></td>
						<td>
							{if $server.rcon_access}
							<a href="index.php?p=admin&c=servers&o=rcon&id={$server.sid}">RCON</a> -
							{/if}
							<a href="index.php?p=admin&c=servers&o=admincheck&id={$server.sid}">Admini</a>
							{if $permission_editserver}
							- <a href="index.php?p=admin&c=servers&o=edit&id={$server.sid}">Edytuj</a>
							{/if}
							{if $pemission_delserver}
							- <a href="#" onclick="RemoveServer({$server.sid}, '{$server.ip}:{$server.port}');">Usuń</a>
							{/if}
						</td>
						</tr>
						{/foreach}
					</table>
				</div>
				{if $permission_addserver}
				<br />
				<div class="rowdesc">
					<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Kliknij tutaj, aby przesłać zrzut ekranu mapy. Użyj nazwy mapy jako nazwy pliku."></i>
					Wrzuć zdjęcie mapy
					{sb_button text="Wrzuć" onclick="childWindow=open('pages/admin.uploadmapimg.php','upload','resizable=yes,width=300,height=130');" class="btn-primary" id="upload"}
				</div>
				<div id="mapimg.msg" style="color:#CC0000;"></div>
				{/if}
			</div>
		</div>
	</div>
</div>
{/if}