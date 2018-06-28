<?php

$exhibitions = $page->children("sort=sort");
$level = __("Plan");

foreach ($exhibitions as $ch) {
	$exhibitionsOut .= "<div uk-grid><div class='uk-width-3-4'><a href='$ch->url'>{$ch->title}</a></div><div class='uk-width-1-4 uk-text-right'>{$level}: $ch->floor</div></div><hr>";
}


//slider
foreach ($exhibitions as $sl) {
	$slides .= "
	<li>
		<div class='uk-card uk-card-secondary'>
		    <div class='uk-card-media-top'>
		        <img src='{$sl->images->first()->size(500,300)->url}' alt='$sl->title'>
		    </div>
		    <div class='uk-card-body'>
		        <h3 class='uk-card-title'><a  class='uk-link-reset' href='$sl->url'>$sl->title</a></h3>
		        <p>$level: $sl->floor</p>
		    </div>
		</div>
	</li>
	";
}


$sliderOut = "
<div uk-slider='center: true'>
	<ul class='uk-slider-items uk-child-width-1-2@s uk-grid uk-grid-match'>
		$slides
	</ul>
</div>
";

$out .= "
<div class='uk-margin-auto uk-width-1-2@m'>
$exhibitionsOut

</div>
";

