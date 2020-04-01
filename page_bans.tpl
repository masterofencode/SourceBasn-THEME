{if $comment}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3 class="lead">{$commenttype} Comment</h3>
				<table id="group.details" class="table">
					<tr>
						<td valign="top">
							<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Wpisz tekst, który chcesz powiedzieć."></i> Comment</div>
						</td>
					</tr>
					<tr>
						<td>
							<div align="left">
								<textarea rows="10" cols="60" class="submit-fields form-control" style="width:500px;" id="commenttext" name="commenttext">{$commenttext}</textarea>
							</div>
							<div id="commenttext.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td>
							<input type="hidden" name="bid" id="bid" value="{$comment}">
							<input type="hidden" name="ctype" id="ctype" value="{$ctype}">
							{if $cid != ""}
							<input type="hidden" name="cid" id="cid" value="{$cid}">
							{else}
							<input type="hidden" name="cid" id="cid" value="-1">
							{/if}
							<input type="hidden" name="page" id="page" value="{$page}">
							{sb_button text="$commenttype Comment" onclick="ProcessComment();" class="ok btn-success" id="acom" submit=false}&nbsp;
							{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel btn-danger" id="aback"}
						</td>
					</tr>
					{foreach from="$othercomments" item="com"}
					<tr>
						<td>
							<b>{$com.comname}</b>
						</td>
						<td align="right"><b>{$com.added}</b>
						</td>
					</tr>
					<tr>
						<td colspan='2'>
							{$com.commenttxt}
						</td>
					</tr>
					{if $com.editname != ''}
					<tr>
						<td colspan='3'>
							<span style='font-size:6pt;color:grey;'>ostatnia edycja {$com.edittime} przez {$com.editname}</span>
						</td>
					</tr>
					{/if}
					{/foreach}
				</table>
			</div>
		</div>
	</div>
</div>
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">Lista Banów <a class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;" href="index.php?p=banlist&hideinactive={if $hidetext == 'Hide'}true{else}false{/if}{$searchlink|htmlspecialchars}" title="{$hidetext} Inactive">{$hidetext} Inactive</a></h4>
				<p>Banów: {$total_bans}</p>
				{php} require (TEMPLATES_PATH . "/admin.bans.search.php");{/php}
				{php} $pageName="bans"; include("./themes/star/progressBansComms.php");{/php}
				<div id="banlist" class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$ban_nav|replace:'|':''}  {if $view_bans} 
							<button type="button" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px 10px; min-width:85px;" 
								onclick="TickSelectAll();return false;" title="Select All" name="tickswitchlink2" id="tickswitchlink2">Select All</button>
							{/if}
							{if $general_unban || $can_delete}
							<select name="bulk_action" id="bulk_action" onchange="BulkEdit(this,'{$admin_postkey}');" class="btn btn-outline-primary btn-rounded btn-fw"
								style="min-width: auto; height: 24px; padding: 0px 12px;">
								<option value="-1">Dzialanie</option>
								{if $general_unban}
								<option value="U">Odbanowany</option>
								{/if}
								{if $can_delete}
								<option value="D">Usuń</option>
								{/if}
							</select>
							{/if}
						</div>
					</div>
					<table class="table table-hover tbl-sm">
						<thead>
							<tr>
								{if $view_bans}
								<th>
									<div class="ok" style="display:none;height:16px;width:16px;cursor:pointer;" title="Select All" name="tickswitch" id="tickswitch" onclick="TickSelectAll()"></div>
									<button type="button" class="btn btn-icons btn-outline-primary" onclick="TickSelectAll()" style="width:20px;height:20px;padding:0px;">
									<i class="mdi mdi-select-all"></i>
									</button>
								</th>
								{/if}
								<th width="12%" class="text-center">MOD/Kraj</th>
								<th width="14%" class="text-center">Data</th>
								<th>Gracz</th>
								{if !$hideadminname}
								<th width="15%">Admin</th>
								{/if}
								{if $list_progress}
								<th width="10%" class="text-right">Długość</th>
								<th width="200px" class="text-center">Pozostały postęp</th>
								{else}
								<th width="10%" class="text-center">Długość</th>
								{/if}
							</tr>
						</thead>
						{foreach from=$ban_list item=ban name=banlist key=index}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_{$ban.ban_id}" aria-expanded="false" aria-controls="collapseExample"
						{if $ban.server_id != 0}
						onclick="xajax_ServerHostPlayers({$ban.server_id}, 'id', 'host_{$ban.ban_id}');"
						{/if}
						>
						{if $view_bans}
						<td width="20px">
							<div class="form-check" onclick="PreventClose(event);">
								<label class="form-check-label pl-0">
								<input id="chkb_{$smarty.foreach.banlist.index}" type="checkbox" name="chkb_{$smarty.foreach.banlist.index}" value="{$ban.ban_id}" vspace="5px" class="form-check-input"> &nbsp;
								<i class="input-helper"></i></label>
							</div>

						</td>
						{/if}
						<td align="center" class="img-ss">{$ban.mod_icon|replace:'images':'themes/star/images'|replace:'jpg':'png'}</td>
						<td align="center">{$ban.ban_date}</td>
						<td>
							<div style="float:left;">
								{if empty($ban.player)}
								<i><font color="#677882">nie znaleziono nicku</font></i>
								{else}
								{$ban.player|escape:'html'|stripslashes}
								{/if}
							</div>
							{if $ban.demo_available}
							<div style="float:right;">
								<i class="icon-sm mdi mdi-lambda"></i>
							</div>
							{/if}
							{if $view_comments && $ban.commentdata != "None" && $ban.commentdata|@count > 0}
							<div style="float:right;">
								{$ban.commentdata|@count} <i class="mdi mdi-comment-text"></i>
							</div>
							{/if}
						</td>
						{if !$hideadminname}
						<td>
							{if !empty($ban.admin)}
							{$ban.admin|escape:'html'}
							{else}
							<i><font color="#677882">Admin usunięty</font></i>
							{/if}
						</td>
						{/if}

						<td {if $list_progress} align="right" {else} align="center" {/if} class="{$ban.class}">
							{if $ban.banlength|strpos:"Unbanned" !== false}
								<label class="badge badge-primary">
							{elseif $ban.banlength|strpos:"Expired" !== false || $ban.banlength|strpos:"Deleted" !== false || $ban.banlength|strpos:"Expired" !== false}
								<label class="badge badge-success">
							{elseif $ban.banlength|strpos:"Permanent" !== false}
								<label class="badge badge-danger">
							{else}
								<label class="badge badge-warning">
							{/if}
							{$ban.banlength}</label>
						</td>
						{if $list_progress}
						<td class="text-danger">

							<div class="progress">
								{if $ban.banlength|strpos:"Unbanned" !== false}
									<div class="progress-bar bg-primary progress-bar-striped progress-bar-animated" role="progressbar" aria-width="100"></div>
								{elseif $ban.banlength|strpos:"Expired" !== false || $ban.banlength|strpos:"Deleted" !== false || $ban.banlength|strpos:"Expired" !== false}
									<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" aria-width="100"></div>
								{elseif $ban.banlength|strpos:"Permanent" !== false}
									<div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" aria-width="100"></div>
								{else}
									<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" aria-width="{math equation="( n - c ) / ( ( e - c ) / 100 )" e=$ban_times[$index].e c=$ban_times[$index].c n=$smarty.now}">
								{/if}
									</div>
							</div>
						</td>
						{/if}
						</tr>
						<!-- ###############[ Start Sliding Panel ]################## -->
						<tr>
							<td colspan="7" align="center" style="padding:0;">
								<div class="collapse" id="expand_{$ban.ban_id}" data-parent="#banlist">
									<table class="table tbl-sm" width="100%">
										<tr>
											<td align="left" class="listtable_top" colspan="3">
												<b>Szczegóły Bana</b>
											</td>
										</tr>
										<tr align="left">
											<td width="30%" >Gracz</td>
											<td >
												{if empty($ban.player)}
												<i><font color="#677882">no nickname present</font></i>
												{else}
												{$ban.player|escape:'html'|stripslashes}
												{/if}
											</td>
											<!-- ###############[ Start Admin Controls ]################## -->
											{if $view_bans}
											<td width="30%" rowspan="{if $ban.unbanned}15{else}13{/if}" class="listtable_2 opener">
												<div class="ban-edit">
													{literal}
													<style>
														.list-arrow > li > a > img { width:16px; height:16px;}
														.imgfix > a > img { width:16px; height:16px;}
													</style>
													{/literal}
													<ul class="list-arrow" id="fix_banlinks">
														{if $ban.unbanned && $ban.reban_link != false}
														<li>{$ban.reban_link}</li>
														{/if}
														<li>{$ban.blockcomm_link}</li>
														<li>{$ban.demo_link}</li>
														<li>{$ban.addcomment}</li>
														{if $ban.type == 0}
														{if $groupban}
														<li>{$ban.groups_link}</li>
														{/if}
														{if $friendsban}
														<li>{$ban.friend_ban_link}</li>
														{/if}
														{/if}
														{if ($ban.view_edit && !$ban.unbanned)}
														<li>{$ban.edit_link}</li>
														{/if}
														{if ($ban.unbanned == false && $ban.view_unban)}
														<li>{$ban.unban_link}</li>
														{/if}
														{if $ban.view_delete}
														<li>{$ban.delete_link}</li>
														{/if}
													</ul>
												</div>
											</td>
											{else}
											<td width="30%" rowspan="{if $ban.unbanned}13{else}11{/if}" class="listtable_2 opener">
												<div class="ban-edit">
													<ul>
														<li>{$ban.demo_link}</li>
													</ul>
												</div>
											</td>
											{/if}
											<!-- ###############[ End Admin Controls ]##################### -->
										</tr>
										<tr align="left">
											<td width="20%" >Steam ID</td>
											<td >
												{if empty($ban.steamid)}
												<i><font color="#677882">Nie znaleziono STEAMID</font></i>
												{else}
												{$ban.steamid}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" >Steam3 ID</td>
											<td >
												{if empty($ban.steamid)}
												<i><font color="#677882">No Steam3 ID present</font></i>
												{else}
												<a href="http://steamcommunity.com/profiles/{$ban.steamid3}" target="_blank">{$ban.steamid3}</a>
												{/if}
											</td>
										</tr>
										{if $ban.type == 0}
										<tr align="left">
											<td width="20%" >Steam Community</td>
											<td ><a href="http://steamcommunity.com/profiles/{$ban.communityid}" target="_blank">{$ban.communityid}</a></td>
										</tr>
										{/if}
										{if !$hideplayerips}
										<tr align="left">
											<td width="20%" >Adres IP</td>
											<td >
												{if $ban.ip == "none"}
												<i><font color="#677882">nie znaleziono takiego adresu</font></i>
												{else}
												{$ban.ip|replace:'images':'themes/star/images'|replace:'jpg':'png'|replace:'alt=':'class="img-ss" alt='}
												{/if}
											</td>
										</tr>
										{/if}
										<tr align="left">
											<td width="20%" >Zrobiono </td>
											<td >{$ban.ban_date}</td>
										</tr>
										<tr align="left">
											<td width="20%" >Długość bana</td>
											<td >{$ban.banlength}</td>
										</tr>
										{if $ban.unbanned}
										<tr align="left">
											<td width="20%" >Powód Odbanowania</td>
											<td >
												{if $ban.ureason == ""}
												<i><font color="#677882">nie znaleziono powodu</font></i>
												{else}
												{$ban.ureason}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" >Unbanned by Admin</td>
											<td >
												{if !empty($ban.removedby)}
												{$ban.removedby|escape:'html'}
												{else}
												<i><font color="#677882">Admin usunięty.</font></i>
												{/if}
											</td>
										</tr>
										{/if}
										<tr align="left">
											<td width="20%" >Upływa w dniu</td>
											<td >
												{if $ban.expires == "never"}
												<i><font color="#677882">Nigdy.</font></i>
												{else}
												{$ban.expires}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" >Powód</td>
											<td >{$ban.reason|escape:'html'}</td>
										</tr>
										{if !$hideadminname}
										<tr align="left">
											<td width="20%" >Zbanowany przez</td>
											<td >
												{if !empty($ban.admin)}
												{$ban.admin|escape:'html'}
												{else}
												<i><font color="#677882">Admin usunięty</font></i>
												{/if}
											</td>
										</tr>
										{/if}
										<tr align="left">
											<td width="20%" >Zbanowany na</td>
											<td  {if $ban.server_id != 0} id="host_{$ban.ban_id}"{/if}>
											{if $ban.server_id == 0}
											Web Ban
											{else}
											Please Wait...
											{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" >Wszystkich banów</td>
											<td >{$ban.prevoff_link}</td>
										</tr>
										<tr align="left">
											<td width="20%" >Blokada ({$ban.blockcount})</td>
											<td >
												{if $ban.banlog == ""}
												<i><font color="#677882">never</font></i>
												{else}
												{$ban.banlog}
												{/if}
											</td>
										</tr>
										{if $view_comments}
										<tr align="left">
											<td width="20%" >Block</td>
											<td  colspan="2">
												{if $ban.commentdata != "None"}
												<table width="100%" border="0">
													{foreach from=$ban.commentdata item=commenta}
													{if $commenta.morecom}
													<tr>
														<td colspan='3'>
															<hr>
														</td>
													</tr>
													{/if}
													<tr>
														<td>
															{if !empty($commenta.comname)}
															<b>{$commenta.comname|escape:'html'}</b>
															{else}
															<i><font color="#677882">Admin usunięty</font></i>
															{/if}
														</td>
														<td align="right">
															<b>{$commenta.added}</b>
														</td>
														{if $commenta.editcomlink != ""}
														<td align="right" class="imgfix linkfix">
															{$commenta.editcomlink} {$commenta.delcomlink}
														</td>
														{/if}
													</tr>
													<tr>
														<td colspan='3'>
															{$commenta.commenttxt}
														</td>
													</tr>
													{if !empty($commenta.edittime)}
													<tr>
														<td colspan='3'>
															<span style="font-size:6pt;color:grey;">ostatnia edycja {$commenta.edittime} przez {if !empty($commenta.editname)}{$commenta.editname}{else}<i><font color="#677882">Admin deleted</font></i>{/if}</span>
														</td>
													</tr>
													{/if}
													{/foreach}
												</table>
												{/if}
												{if $ban.commentdata == "None"}
												{$ban.commentdata}
												{/if}
											</td>
										</tr>
										{/if}
									</table>
								</div>
							</td>
						</tr>
						<!-- ###############[ End Sliding Panel ]################## -->
						{/foreach}
					</table>
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$ban_nav}  {if $view_bans} | 
							<button type="button" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px 10px; min-width:85px;" 
								onclick="TickSelectAll();return false;" title="Select All" name="tickswitchlink" id="tickswitchlink">Wybierz wszystko</button>
							{/if}
							{if $general_unban || $can_delete}
							<select name="bulk_action" id="bulk_action" onchange="BulkEdit(this,'{$admin_postkey}');" class="btn btn-outline-primary btn-rounded btn-fw"
								style="min-width: auto; height: 24px; padding: 0px 12px;">
								<option value="-1">Działanie</option>
								{if $general_unban}
								<option value="U">Odbanowanie</option>
								{/if}
								{if $can_delete}
								<option value="D">Usuń</option>
								{/if}
							</select>
							{/if}
						</div>
					</div>
					{if $can_export }
					<div class="col-12 py-2 text-center no-wrap">
						<a href="./exportbans.php?type=steam" title="Eksportuj bany permantentne nadane na steamid" class="btn btn-inverse-primary btn-rounded btn-fw">Eksportuj bany permantentne nadane na steamid</a>&nbsp;&nbsp;|&nbsp;
						<a href="./exportbans.php?type=ip" title="Eksportuj bany permanentne na IP"class="btn btn-inverse-primary btn-rounded btn-fw">Eksportuj bany permanentne na IP</a>
					</div>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>
{literal}
<script type="text/javascript">
	window.addEvent('domready', function(){
		InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
		{/literal}
		{if $view_bans}
		$('tickswitch').value=0;
		{/if}
		{literal}
		});
		
</script>
{/literal}
{/if}