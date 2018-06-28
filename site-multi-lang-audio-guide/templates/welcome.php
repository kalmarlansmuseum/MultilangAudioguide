<?php

$messages = $page->messages;

$messPic = "";
foreach ($messages as $mess) {
	$picLang = $mess->images->getTag($user->language->name);



	if ($picLang) {
		$messPic =  "<img class='uk-width-1-2@l' src='{$picLang->url}'>";
	}elseif (count($mess->images) AND !$picLang ) {
		$messPic =  "<img class='uk-width-1-2@l' src='{$mess->images->first()->url}'>";
	}else{
		$messPic = "";
	}

	$messOut .= $mess->id == $messages->last()->id ? "<li><div><a href='{$pages->get("/")->url}'>$messPic$mess->body</a></div></li>" : "<li><div>$messPic$mess->body</div></li>" ;


}

$startNow = __('Börja nu!');

$out .= "
<div class='uk-width-1-2@m uk-margin-auto uk-margin-large-top'>
	<div uk-slider='finite: true;'>
		<ul class='uk-slider-items uk-child-width-1-1 uk-grid uk-text-center uk-text-large'>
			$messOut
		</ul>
		<ul class='uk-slider-nav uk-dotnav uk-flex-center uk-margin'></ul>
		<p class='uk-text-center'><a href='{$pages->get('/')->url}'>$startNow</a></p>
	</div>
</div>

";