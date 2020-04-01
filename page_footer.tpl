			</div>
		</div>
		<footer class="footer">
			<div class="container-fluid clearfix">
				<span class="d-block text-center text-sm-left d-sm-inline-block">
				<a href="https://sbpp.github.io/" target="_blank">SourceBans++</a> {$SB_REV}
				Napędzany przez <a href="http://www.sourcemod.net" target="_blank">SourceMod</a>
				</span><br>
				<span class="d-block text-center text-sm-left d-sm-inline-block">Szablon wykonany przez <a href="https://steamcommunity.com/profiles/76561198131879425">cwaniak</a> zrobiony dla <a href="https://headshotownia.pl" target="_blank">HeadShotownia.pl</a><br> Zakaz kopiowania i Udostępniania<br> &copy; HeadShotownia.pl 2020</span>
				</span>
			</div>
		</footer>
	</div>
</div>
<script src="themes/{php}echo SB_THEME;{/php}/js/off-canvas.js"></script>
<script src="themes/{php}echo SB_THEME;{/php}/js/misc.js"></script>
<script src="themes/{php}echo SB_THEME;{/php}/js/countTo.js"></script>
{literal}
<script>
	document.getElementById("content_title").remove();
	function fixToolTip() {
		setTimeout(
		function() {
			var tooltips = document.getElementsByClassName("tool-tip");
			for(i=0;i<tooltips.length;i++)
			{
				tooltips[i].className+="tool-tip badge badge-primary";
			}
		}, 2000);
	}
	fixToolTip();
	var bc=document.getElementById("breadcrumb");
	var bc_explode = bc.innerHTML.split("»");
	var newbc="";
	for(i=1;i<bc_explode.length;i++)
	{
		newbc+="<li class=\"breadcrumb-item\">";
		newbc+=bc_explode[i]
		newbc+="</li>";
		newbc = newbc.replace("<b>", "");
		newbc = newbc.replace("</b>", "");
	}
	bc.innerHTML = newbc;
	//document.getElementById("breadcrumb").remove();
</script>
<script>
	AOS.init();
</script>
{/literal}
{*/body*}
{*/html*}