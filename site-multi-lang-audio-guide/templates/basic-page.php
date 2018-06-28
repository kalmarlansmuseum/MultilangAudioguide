<?php

$orgPlayer ="<div class='uk-position-fixed uk-position-bottom'>
                <div id='single-song-player'>
                  <img amplitude-song-info='cover_art_url' amplitude-main-song-info='true'/>
                  <div class='bottom-container'>
                    <progress class='amplitude-song-played-progress' amplitude-main-song-played-progress='true' id='song-played-progress'></progress>

                    <div class='time-container'>
                      <span class='current-time'>
                        <span class='amplitude-current-minutes' amplitude-main-current-minutes='true'></span>:<span class='amplitude-current-seconds' amplitude-main-current-seconds='true'></span>
                      </span>
                      <span class='duration'>
                        <span class='amplitude-duration-minutes' amplitude-main-duration-minutes='true'></span>:<span class='amplitude-duration-seconds' amplitude-main-duration-seconds='true'></span>
                      </span>
                    </div>

                  <div id='player-bottom'>
                    <div class='control-container'>
                      <div class='amplitude-play-pause' amplitude-main-play-pause='true' id='play-pause'></div>
                      <div class='meta-container'>
                        <span amplitude-song-info='name' amplitude-main-song-info='true' class='song-name'></span>
                        <span amplitude-song-info='artist' amplitude-main-song-info='true'></span>
                      </div>
                       <div id='volume-container'>
                          <img src='/site/templates/styles/images/volume.svg'/>
                          <input type='range' class='amplitude-volume-slider' step='.25'/>
                      </div>
                    </div>
                   </div>
                </div>
                </div>
              </div>
";



$next = __('Nästa');

$toList = __("Tillbaka till utställningar");

if ($page->child->id) {
	$childTitle = $page->child->title;
	$nextOut .= "<hr><a class='uk-button uk-button-default' href='{$page->child->url}'>$next: <b>$childTitle</b></a>";
}


if ($page->next->id AND $page->parent->id != "1") {
	$nextTitle = $page->next->title;
	$nextOutBody .= "<hr><a class='uk-button uk-button-default' href='{$page->next->url}'>$next: <b>$nextTitle</b></a>";
}

$bar = "";
if ($page->next->id OR $page->prev->id AND $page->parent->id != "1") {
	$children = $page->parent->children();
	$total = $children->count();
	$pagePos = $children->getItemKey($page) + 1; // Assume the keys are zero based
	$bar = "<div class='uk-section uk-section-transparent'><progress id='js-progressbar' class='uk-progress' value='$pagePos' max='$total'><p></p></progress></div>";
}

$toc = $page->count() ? $page->children() : "" ;
$tocOut = "";
if (count($toc)) {
	$tooltip = __("Lyssna!");
	$tocOut = "<ol>";
	foreach ($toc as $co) {
		$listen = count($co->audiofiles) ? " <span uk-tooltip='$tooltip' uk-icon='icon: play-circle;'></span>" : "" ;
		$tocOut .= "<li><a href='$co->url'>$co->title</a>$listen</li>";
	}
	$tocOut .= "</ol>";
}

if ($page->prev->id) {
	$prevOut = $pagePos - 1;
	$prevOut = "<div class='uk-position-bottom-left uk-text-bold'><a class='uk-link-reset uk-button uk-button-default uk-margin-small-left uk-margin-small-bottom' href='{$page->prev->url}'><span uk-icon='icon:chevron-left'></span>  $prevOut</a></div>";
}

if ($page->next->id) {
	$nextOut = $pagePos + 1;
	$nextOut = "<div class='uk-position-bottom-right uk-text-bold'><a id='nextButton' class='uk-link-reset uk-button uk-button-default uk-margin-small-right uk-margin-small-bottom' href='{$page->next->url}'>$nextOut <span uk-icon='icon:chevron-right'></span></a></div>";
} else {
  $nextOut = "<div class='uk-position-bottom-right uk-text-bold'><a id='nextButton' class='uk-link-reset uk-button uk-button-default uk-margin-small-right uk-margin-small-bottom' href='{$pages->get('/')->url}'><span uk-icon='icon:home'></span></a></div>";
}

$audioFiles = $page->audiofiles;
$player = "";
if (count($audioFiles) > 0) {
	$player ="<div class='uk-position-fixed uk-position-bottom'>
                <div id='single-song-player'>
                  <div class='bottom-container'>
                    <progress class='amplitude-song-played-progress' amplitude-main-song-played-progress='true' id='song-played-progress'></progress>

                    <div class='time-container'>
                      <span class='current-time'>
                        <span class='amplitude-current-minutes' amplitude-main-current-minutes='true'></span>:<span class='amplitude-current-seconds' amplitude-main-current-seconds='true'></span>
                      </span>
                      <span class='duration'>
                        <span class='amplitude-duration-minutes' amplitude-main-duration-minutes='true'></span>:<span class='amplitude-duration-seconds' amplitude-main-duration-seconds='true'></span>
                      </span>
                    </div>

                  <div id='player-bottom'>

                    <div class='control-container'>
                    	<div class='uk-position-relative'>
                    	$prevOut
                      	<div class='amplitude-play-pause' amplitude-main-play-pause='true' id='play-pause'></div>
                      	$nextOut
                       	</div>


                   </div>
                </div>
                </div>
              </div>
";

}

$imgs = $page->images;
$imgsOut = "";
if (count($imgs)) {
  foreach ($imgs as $img) {
    $desc = $img->description;
    $imgDesc = $img->description ? "<p class='uk-text-center uk-dark uk-text-italic uk-text-small'>$img->description</p>" : "" ;
    $imgItem .= "<li><img src='{$img->size(900,500)->url}' alt='$desc'>$imgDesc</li>";
  }

  $imgsOut = "
  <div uk-slideshow class='uk-position-relative'>
    <ul class='uk-slideshow-items'>$imgItem</ul>
    <a class='uk-position-center-left uk-position-small uk-hidden-hover' href='#' uk-slidenav-previous uk-slideshow-item='previous'></a>
    <a class='uk-position-center-right uk-position-small uk-hidden-hover' href='#' uk-slidenav-next uk-slideshow-item='next'></a>
    <ul class='uk-slideshow-nav uk-dotnav uk-flex-center uk-margin'></ul>
  </div>";
}

$out .= "
<div class='uk-container uk-margin-small-top' style='padding-bottom: 170px;'>
	$tocOut
	<div class='uk-margin-auto uk-width-1-2@m'>
    <div uk-grid class='uk-grid-small uk-flex uk-flex-center'>
    <div class='uk-width-1-3'>
    <div style='background-image:url({$pages->get("/")->images->first()->url});background-repeat: no-repeat;
    background-size: 60%;
    background-position: 50%;
    background-color: #D10A40;
    width: 70px;
    height: 70px;
    line-height: 70px;
    text-align: center;
    font-weight: bold;
    margin-bottom: 16px;
    border-radius: 50%;'>
    $pagePos
    </div>
    </div>
    <div class='uk-width-2-3'><p class='uk-text-large uk-text-bold'>$page->title</p></div>
    </div>
	 <div class='uk-text-large'>
		$page->body
    $imgsOut
	 </div>
	</div>

</div>
$player
";


if (count($audioFiles) > 0) {
	$config->styles->add($config->urls->templates . "styles/player.css");
	$config->scripts->add($config->urls->templates . "scripts/amplitude.min.js");
	$config->scripts->add($config->urls->templates . "scripts/basicpage.js");

}