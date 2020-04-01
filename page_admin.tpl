<h3 class="title text-center">Wybierz jedną z opcji administracyjnej którą chcesz zrobić.</h3>
<ul class="nav nav-pills nav-pills-primary nav-pills-icons justify-content-center">
	{if $access_admins}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=admins">
			<i class="menu-icon mdi mdi-account"></i> Ustawienia Adminów
		</a>
	</li>
	{/if}
	{if $access_servers}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=servers">
			<i class="menu-icon mdi mdi-server"></i> Ustawienia Serwerów
		</a>
	</li>
	{/if}
	{if $access_bans}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=bans">
			<i class="menu-icon mdi mdi-do-not-disturb"></i> Bany
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=comms">
			<i class="menu-icon mdi mdi-microphone-off"></i> Komunikacja
		</a>
	</li>
	{/if}
	{if $access_groups}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=groups">
			<i class="menu-icon mdi mdi-account-multiple"></i> Ustawienia Grup
		</a>
	</li>
	{/if}
	{if $access_settings}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=settings">
			<i class="menu-icon mdi mdi-settings"></i> Ustawienia Strony
		</a>
	</li>
	{/if}
	{if $access_mods}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=mods">
			<i class="menu-icon mdi mdi-tune"></i> Ustawienia Moda
		</a>
	</li>
	{/if}
</ul>
<br>
<div class="row">
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-3 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-success"></div>
				<p class="text-muted mb-2">Informacje o wersji</p>
				<div class="d-flex align-items-center">
					<h1 class="font-weight-medium mb-2" id='relver'>Proszę czekać...</h1>
					<h5 class="font-weight-medium text-success ml-2">Najnowsza wersja {if $dev} i Najnowsze wydanie: <span id='svnrev'>Proszę czekać...</span>{/if}</h5>
				</div>
				<div class="d-flex align-items-center">
					<div class="bg-success dot-indicator"></div>
					<p class="text-muted mb-0 ml-2">Posiadasz aktualną wersje</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-3 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-primary"></div>
				<p class="text-muted mb-2">Informacje o adminach</p>
				<div class="d-flex align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_admins}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-primary ml-2">Admin/ów</h5>
				</div>
				<div class="d-flex align-items-center">
					<i class="menu-icon mdi mdi-marker-check text-primary"></i>
					<p class="text-muted mb-0 ml-2">Praca zespołowa sprawia że <span class="text-primary">zawsze dojdziesz do zwycięstwa</span>!</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-3 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-warning"></div>
				<p class="text-muted mb-2">Informacje o serwerach</p>
				<div class="d-flex align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_servers}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-warning ml-2">Serwer/ów</h5>
				</div>
				<div class="d-flex align-items-center">
					<i class="menu-icon mdi mdi-marker-check text-warning"></i>
					<p class="text-muted mb-0 ml-2">Jeśli postanowiłeś <span class="text-warning">zrezygnować</span> to zastanów się dlaczego postanowiłeś <span class="text-warning">zacząć</span>!</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-0 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-danger"></div>
				<p class="text-muted mb-2 pl-0 pt-0 pl-lg-3 pt-lg-3 pl-xl-0 pt-xl-0">Informacje o Banach</p>
				<div class="d-none d-md-flex align-items-top">
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number mb-0" data-to="{$total_bans}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-danger">Banów</h5>
					</div>
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number ml-sm-0 mb-0" data-to="{$total_blocks}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-danger">Zablokowanych</h5>
					</div>
				</div>
				<div class="d-flex d-md-none align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_bans}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-danger ml-2">Banów</h5>
					<h5 class="font-weight-medium mb-2 mx-1 d-none d-sm-flex"> and </h5>
					<h1 class="font-weight-medium mb-2 timer count-number ml-2 ml-sm-0" data-to="{$total_blocks}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-danger ml-2">Zablokowanych</h5>
				</div>
				<div class="d-flex align-items-center">
					<div class="bg-success dot-indicator"></div>
					<p class="text-muted mb-2 pl-0 pb-0 pl-lg-3 pb-lg-3 pl-xl-0 pb-xl-0">Całkowity rozmiar wrzuconych demek: <span class="text-danger">{$demosize}</span></p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-0 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-info"></div>
				<p class="text-muted mb-2 pl-0 pt-0 pl-lg-3 pt-lg-3 pl-xl-0 pt-xl-0">Informacje odwołań</p>
				<div class="d-none d-md-flex align-items-top">
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number mb-0" data-to="{$total_protests}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-info">Odwołanie/ań</h5>
					</div>
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number ml-sm-0 mb-0" data-to="{$archived_protests}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-info">Zarchiwizoane odwołania</h5>
					</div>
				</div>
				<div class="d-flex d-md-none align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_protests}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-info ml-2">Rozpatrzonych</h5>
					<h5 class="font-weight-medium mb-2 mx-1 d-none d-sm-flex"> and </h5>
					<h1 class="font-weight-medium mb-2 timer count-number ml-2 ml-sm-0" data-to="{$archived_protests}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-info ml-2">Zarchiwizowanych</h5>
				</div>
			</div>
		</div>
	</div>
	
	
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
xajax_CheckVersion();
</script>