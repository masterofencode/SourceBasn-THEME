<div id="admin-page-menu">
<div align="center">
	<ul class="nav nav-pills nav-pills-primary nav-pills-icons justify-content-center">
		<li class="nav-item">
			<a class="nav-link active doublefix" href="#" id="adminlinkfix">
				{$pane_image}
			</a>
		</li>
	</ul><br>
	<ul class="nav nav-pills nav-pills-primary nav-pills-icons justify-content-center">
	{foreach from=$tabs item=tab}
		{$tab.tab|replace:"<li":"<li class=\"nav-item\""|replace:"<a":"<a class=\"nav-link\""|replace:"tab-":"admin_tab-"|replace:"admin_tab_":"tab-"}
	{/foreach}
	</ul>
</div>
<br><br>
{literal}
<script type="text/javascript">
	var t="<i class=\"menu-icon mdi mdi-";
	var e =document.getElementById("adminlinkfix").getElementsByTagName("img")[0];
	
	if(e.src.indexOf("admins")!=-1)
	{
		t+="account\"></i>Ustawienia Adminów";
	}else if(e.src.indexOf("servers")!=-1)
	{
		t+="server\"></i>Ustawienia Serwera";
	}else if(e.src.indexOf("bans")!=-1)
	{
		t+="do-not-disturb\"></i>Bany";
	}else if(e.src.indexOf("comms")!=-1)
	{
		t+="microphone-off\"></i>Komunikacja";
	}else if(e.src.indexOf("groups")!=-1)
	{
		t+="account-multiple\"></i>Ustawienia Grup";
	}else if(e.src.indexOf("settings")!=-1)
	{
		t+="settings\"></i>Ustawienia strony";
	}else if(e.src.indexOf("mods")!=-1)
	{
		t+="tune\"></i>Mody";
	}else if(e.src.indexOf("your_account")!=-1)
	{
		t+="account-card-details\"></i>Twoje Konto";
	}
	e.parentNode.innerHTML=t;
	
	//unknown double link fix
	if(document.getElementsByClassName("doublefix").length>1)
		document.getElementsByClassName("doublefix")[1].remove();
	
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
{/literal}