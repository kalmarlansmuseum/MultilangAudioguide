<?php

$toc = $page->count() ? $page->children() : "" ;
$tocOut = "";
if (count($toc)) {
	$tooltip = __("Lyssna!");
	$tocOut = "<div uk-grid class='uk-child-width-1-4 uk-grid-small'>";
	foreach ($toc as $co) {
		$pagePos = $toc->getItemKey($co) + 1; // Assume the keys are zero based
		$listen = count($co->audiofiles) ? " <span uk-tooltip='$tooltip' uk-icon='icon: play-circle;'></span>" : "" ;
		$tocOut .= "
		<div><div class='uk-text-center' style='background-image:url({$pages->get("/")->images->first()->url});background-repeat: no-repeat; background-size: 69%;background-position: 50%;background-color: #D10A40;width: 70px;height: 70px;'>
		<a class='uk-link-reset' href='$co->url'><span class='uk-text-large uk-text-center' style='line-height: 70px;'>$pagePos</span></a>
		</div></div>";
	}
	$tocOut .= "</div>";
}

$out .= "
<div class='uk-container uk-margin-medium-top uk-width-1-2@m uk-margin-auto'>
	<h2 class='uk-text-small'>$page->title</h2>
	$tocOut
	<div class='uk-child-width-1-2@s uk-grid-small' uk-grid>
		$player
		<div>
		$page->body
		$nextOutBody
		</div>
	</div>
	$bar

</div>
";