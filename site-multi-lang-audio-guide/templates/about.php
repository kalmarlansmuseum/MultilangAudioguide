<?php

$exhibits = $pages->find("template=exhibition");
$script = __("Manus");
$voice = __("Röst");

foreach ($exhibits as $ex) {
	$exOut .= "
	<h2 class='uk-text-small'>$ex->title</h2>
	<p><b>{$script}:</b> {$ex->script}</p>
	<p><b>{$voice}:</b> {$ex->voice}</p>
	";
}

$out .= "
<div class='uk-width-1-2@m uk-margin-auto uk-margin-large-top'>
	$page->body
	$exOut
</div>

";
