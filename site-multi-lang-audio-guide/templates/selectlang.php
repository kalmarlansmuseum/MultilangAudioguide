<?php

$config->scripts->add($config->urls->templates . "scripts/selectlang.js");


foreach($languages as $language) {
	$flagPic = $language->images->first()->url;

  // if this page isn't viewable (active) for the language, skip it
  if(!$page->viewable($language)) continue;


  // determine the "local" URL for this language
  $url = $pages->get("/valkommen/")->localUrl($language);




  // output the option tag
  $langsOut .=  "<li class='uk-margin-large-bottom'><a class='langSelect' href='$url'><img class='uk-width-1-5' src='$flagPic'> $language->title</a></li>";
}


$out .= "
<div class='uk-width-1-2@m uk-margin-auto uk-margin-large-top'>
	<ul class='uk-list uk-text-large'>
		$langsOut
	</ul>
</div>
";