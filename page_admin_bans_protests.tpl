{if NOT $permission_protests}
Access Denied!
{else}
<div id="protests" class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>Odwołanie od bana <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Odwołań: {$protest_count}</i></h3>
				<p>Kliknij pseudonim gracza, aby wyświetlić informacje o jego zablokowaniu</p>
				<br /><br />
				<div class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$protest_nav}
						</div>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>Nick</th>
								<th>SteamID</th>
								<th>Działanie</th>
							</tr>
						</thead>
						{foreach from="$protest_list" item="protest"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_protest_{$protest.pid}" aria-expanded="false" aria-controls="collapseExample">
							<td><a href="./index.php?p=banlist&advSearch={$protest.authid}&advType=steamid" title="Show ban">{$protest.name}</a></td>
							<td>{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}</td>
							<td>
								{if $permission_editban}
								<a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '1');">Usuń</a> -
								{/if}
								<a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}">Kontakt</a>
							</td>
						</tr>
						<tr id="pid_{$protest.pid}a" >
							<td id="ban_details_{$protest.pid}" style="padding:0;" colspan="3">
								<div class="collapse" id="expand_protest_{$protest.pid}" data-parent="#protests">
									<table class="table tbl-sm" width="100%">
										<tr>
											<td height="16" align="left" class="listtable_top" colspan="3">
												<b>Szczegóły Bana</b>
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Gracz</td>
											<td height="16">{$protest.name}</td>
											<td width="30%" rowspan="11" class="listtable_2">
												<div class="ban-edit">
													{literal}
													<style>
														.list-arrow > li > a > img { width:16px; height:16px;}
													</style>
													{/literal}
													<ul class="list-arrow"  id="fix_banlinks">
														<li>{$protest.protaddcomment}</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">SteamID</td>
											<td height="16">
												{if $protest.authid == ""}
												<i><font color="#677882">no steamid present</font></i>
												{else}
												{$protest.authid}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Adres IP</td>
											<td height="16">
												{if $protest.ip == 'none' || $protest.ip == ''}
												<i><font color="#677882">no IP address present</font></i>
												{else}
												{$protest.ip}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Nadano w dniu</td>
											<td height="16">{$protest.date}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Kończy sie w dniu</td>
											<td height="16">
												{if $protest.ends == 'never'}
												<i><font color="#677882">Not applicable.</font></i>
												{else}
												{$protest.ends}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Powód</td>
											<td height="16">{$protest.ban_reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Zbanowany przez</td>
											<td height="16">{$protest.admin}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Ban z </td>
											<td height="16">{$protest.server}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">IP</td>
											<td height="16">{$protest.pip}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Odwołanie</td>
											<td height="16">{$protest.datesubmitted}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Wiadomość</td>
											<td height="16">{$protest.reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">Komunikat</td>
											<td height="60" colspan="3">
												{if $protest.commentdata != "None"}
												<table width="100%" border="0">
													{foreach from=$protest.commentdata item=commenta}
													{if $commenta.morecom}
													<tr>
														<td colspan="3">
															<hr />
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
														<td align="right"><b>{$commenta.added}</b>
														</td>
														{if $commenta.editcomlink != ""}
														<td align="right" class="imgfix linkfix">
															{$commenta.editcomlink} {$commenta.delcomlink}
														</td>
														{/if}
													</tr>
													<tr>
														<td colspan="2" style="word-break: break-all;word-wrap: break-word;">
															{$commenta.commenttxt}
														</td>
													</tr>
													{if !empty($commenta.edittime)}
													<tr>
														<td colspan="3">
															<span style="font-size:6pt;color:grey;">last edit {$commenta.edittime} by {if !empty($commenta.editname)}{$commenta.editname}{else}<i><font color="#677882">Admin usunięty</font></i>{/if}</span>
														</td>
													</tr>
													{/if}
													{/foreach}
												</table>
												{/if}
												{if $protest.commentdata == "None"}
												{$protest.commentdata}
												{/if}
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$protest_nav}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>InitAccordion('tr.opener2', 'div.opener2', 'protests');</script>
{/if}