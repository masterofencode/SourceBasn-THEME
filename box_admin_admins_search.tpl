<div class="row">
	<div class="col-lg-6 mx-auto pt-3">
	
		<p class="text-center">
			<button class="btn btn-inverse-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			<i class="mdi mdi-magnify"></i>Zaawansowane Szukanie
			</button>
		</p>
		<div class="collapse box-shadow-delayed" id="collapseExample">
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="name_" value="name"> Nick
					</label>
				</div>
				<div class="col-sm-9">
					<input class="form-control" type="text" id="nick" value="" onmouseup="$('name_').checked = true">
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="steam_" value="radiobutton"> STEAM ID
					</label>
				</div>
				<div class="col-sm-9 row">
					<div class="col-sm-5">
						<input class="form-control" type="text" id="steamid" value="" onmouseup="$('steam_').checked = true">
					</div>
					<div class="col-sm-7">
						<select class="form-control" id="steam_match" onmouseup="$('steam_').checked = true">
							<option value="0" selected>Dok³adne dopasowanie</option>
							<option value="1">Czêœciowe dopasowanie</option>
						</select>
					</div>
				</div>
			</div> 
			{if $can_editadmin}
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="admemail_" value="radiobutton"> E-Mail
					</label>
				</div>
				<div class="col-sm-9">
					<input class="form-control" type="text" id="admemail" value="" onmouseup="$('admemail_').checked = true">
				</div>
			</div>
			{/if}
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="webgroup_" value="radiobutton"> Grupa
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="webgroup" onmouseup="$('webgroup_').checked = true">
						{foreach from="$webgroup_list" item="webgrp"}
							<option label="{$webgrp.name}" value="{$webgrp.gid}">{$webgrp.name}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="srvadmgroup_" value="radiobutton"> Grupa Serwerowa
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="srvadmgroup" onmouseup="$('srvadmgroup_').checked = true">
						{foreach from="$srvadmgroup_list" item="srvadmgrp"}
							<option label="{$srvadmgrp.name}" value="{$srvadmgrp.name}">{$srvadmgrp.name}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="srvgroup_" value="radiobutton"> Server Group
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="srvgroup" onmouseup="$('srvgroup_').checked = true">
						{foreach from="$srvgroup_list" item="srvgrp"}
							<option label="{$srvgrp.name}" value="{$srvgrp.gid}">{$srvgrp.name}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="admwebflags_" value="radiobutton"> Uprawnienia na stronie
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control mb-2" id="admwebflag" name="admwebflag" onblur="getMultiple(this, 1);" size="5" multiple onmouseup="$('admwebflags_').checked = true">
						{foreach from="$admwebflag_list" item="admwebflag"}
							<option label="{$admwebflag.name}" value="{$admwebflag.flag}">{$admwebflag.name}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="admsrvflags_" value="radiobutton"> Uprawnienia Serwerowe
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control mb-2" id="admwebflag" name="admsrvflag" onblur="getMultiple(this, 2);" size="5" multiple onmouseup="$('admsrvflags_').checked = true">
						{foreach from="$admsrvflag_list" item="admsrvflag"}
							<option label="{$admsrvflag.name}" value="{$admsrvflag.flag}">{$admsrvflag.name}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="admin_on_" value="radiobutton"> Serwer
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="server" onmouseup="$('admin_on_').checked = true">
						<option label="Web Ban" value="0">Web Ban</option>
						{foreach from="$server_list" item="server}
						<option value="{$server.sid}" id="ss{$server.sid}">Szukanie nazwy... ({$server.ip}:{$server.port})</option>
						{/foreach}
					</select>
				</div>
			</div>
			
			<div class="row mx-5 pb-3">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-9">
					{sb_button text="Search" onclick="search_admins();" class="ok searchbtn btn-success" id="searchbtn" submit=false}
				</div>
			</div>
		</div>
	</div>
</div>
{$server_script}
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>
