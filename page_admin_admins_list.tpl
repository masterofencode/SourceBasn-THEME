{if not $permission_listadmin}
Access Denied
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Admini <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Dostępnych: {$admin_count}</i></h3>
				<p>
					Kliknij na administratora, aby wyświetlić bardziej szczegółowe informacje i działania, które należy wykonać na nim.
				</p>
				<br /><br />
				{php} require (TEMPLATES_PATH . "/admin.admins.search.php");{/php}
				<div id="banlist" class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$admin_nav}
						</div>
					</div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th width="34%">Nazwa</th>
								<th width="33%">Grupy Serwerowe</th>
								<th width="33%">Grupy WEBowe</th>
							</tr>
						</thead>
						{foreach from="$admins" item="admin"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_{$admin.aid}" aria-expanded="false" aria-controls="collapseExample">
							<td>{$admin.user} (<a href="./index.php?p=banlist&advSearch={$admin.aid}&advType=admin" title="Pokaż bany">{$admin.bancount} bany</a> | <a href="./index.php?p=banlist&advSearch={$admin.aid}&advType=nodemo" title="Pokaz zakazy">{$admin.nodemocount} w.d.</a>)</td>
							<td>{$admin.server_group}</td>
							<td>{$admin.web_group}</td>
						</tr>
						<tr>
							<td colspan="3">
								<div class="collapse" id="expand_{$admin.aid}" data-parent="#banlist">
									<b>Szczegóły admina  {$admin.user}</b>
									<table class="table table-sm">
										<tr align="left">
											<td width="35%">Uprawnienia grup serwerowych</td>
											<td width="35%">Uprawnienia grup webowych</td>
											<td width="30%">Działania</td>
										</tr>
										<tr align="left">
											<td style="vertical-align:top !important;">{$admin.server_flag_string|replace:"&bull;":"<span style=\"color:var(--primary);\">&bull;</span>"|replace:"#1b75d1":"var(--primary)"}</td>
											<td style="vertical-align:top !important;">{$admin.web_flag_string|replace:"&bull;":"<span style=\"color:var(--primary);\">&bull;</span>"|replace:"#1b75d1":"var(--primary)"}</td>
											<td width="30%" style="vertical-align:top !important;">
												<div class="ban-edit">
													{literal}
													<style>
														.list-arrow > li > a > img { width:16px; height:16px;}
														.imgfix > a > img { width:16px; height:16px;}
													</style>
													{/literal}
													<ul class="list-arrow">
														{if $permission_editadmin}
														<li>
															<a href="index.php?p=admin&c=admins&o=editdetails&id={$admin.aid}"><i class="menu-icon mdi mdi-account-edit"></i> Edytuj szczegóły</a>
														</li>
														<li>
															<a href="index.php?p=admin&c=admins&o=editpermissions&id={$admin.aid}"><i class="menu-icon mdi mdi-key-variant"></i> Edytuj uprawnienia</a>
														</li>
														<li>
															<a href="index.php?p=admin&c=admins&o=editservers&id={$admin.aid}"><i class="menu-icon mdi mdi-server-network"></i> Edytuj dostep do serwera</a>
														</li>
														<li>
															<a href="index.php?p=admin&c=admins&o=editgroup&id={$admin.aid}"><i class="menu-icon mdi mdi-account-multiple"></i> Edytuj Grupy</a>
														</li>
														{/if}
														{if $permission_deleteadmin}
														<li>
															<a href="#" onclick="RemoveAdmin({$admin.aid}, '{$admin.user}');"><i class="menu-icon mdi mdi-delete"></i> Usuń admina</a>
														</li>
														{/if}
													</ul>
												</div>
												<div>Poziom Imunitetu: {$admin.immunity}</div>
												<div>Ostatnie wizyty: <small>{$admin.lastvisit}</small></div>
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
							{$admin_nav}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">InitAccordion('tr.opener', 'div.opener', 'mainwrapper');</script>
{/if}