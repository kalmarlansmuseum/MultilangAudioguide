<!DOCTYPE html>
<html lang="<?= $lang ?>" class="uk-background-secondary">
    <head>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-7534596-7"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'UA-7534596-7');
        </script>
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
        <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
        <meta name="msapplication-TileColor" content="#b91d47">
        <meta name="theme-color" content="#222222">
        <title><?= $page->title ?></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="<?php echo AIOM::CSS('styles/less/uikit.theme.less'); ?>">
        <?php foreach($config->styles as $style) echo "<link rel='stylesheet' href='$style' type='text/css' media='all' >"; ?>

        <link rel="stylesheet" type="text/css" href="/site/templates/styles/main.css">
        <style type="text/css">
          ::-webkit-progress-bar {
            background-color: orange;}
          </style>
    </head>
    <body class="uk-background-secondary uk-height-1-1  ">
        <div class="uk-offcanvas-content uk-background-secondary uk-light">
                <?= $editarea ?>

            <?php if($pageTemp == 'home' OR $pageTemp == 'basic-page' OR $pageTemp == 'about') { ?>

            <nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
                 <div class="uk-navbar-left">
                    <?php if($page->template == "basic-page") { ?>
                    <a class="uk-navbar-toggle" href="#" uk-toggle="target: #guides">
                        <span uk-icon="icon: thumbnails"></span>
                    </a>
                    <?php } ?>
                </div>
                 <div class="uk-navbar-center">
                    <h1 class='uk-margin-remove uk-text-small uk-text-center'><?= $pages->get("/")->title ?> </h1>
                </div>
                <div class="uk-navbar-right">
                    <a class="uk-navbar-toggle" href="#" uk-toggle="target: #offcanvas-overlay">
                        <span uk-icon="icon: menu;"></span> <span class="uk-margin-small-left"><?= __("Meny"); ?></span>
                    </a>
                </div>
            </nav>
            <?php } ?>
            <div class="uk-container">

                <?= $out ?>
            </div>

            <div id="offcanvas-overlay" uk-offcanvas="overlay: true">
                <div class="uk-offcanvas-bar">
                    <button class="uk-offcanvas-close" type="button" uk-close></button>

                    <?= $sideNav ?>

                    <p class="uk-txt-small uk-margin-remove-bottom"> <?= __("Byt språk") ?> </p>
                     <select class="uk-select uk-margin uk-width-1-1"  onchange='window.location=this.value;'>
                    <?php
                    foreach($languages as $language) {
                      $selected = '';

                      // if this page isn't viewable (active) for the language, skip it
                      if(!$page->viewable($language)) continue;

                      // if language is current user's language, make it selected
                      if($user->language->id == $language->id) $selected = " selected=selected";

                      // determine the "local" URL for this language
                      $url = $page->localUrl($language);

                      // output the option tag
                      echo "<option$selected value='$url'>$language->title</option>";
                    }
                    ?>
                    </select>

                    <a href="<?= $pages->get("/om-audioguiden/")->url ?>"><?= $pages->get("/om-audioguiden/")->title ?></a>
                </div>
            </div>


        <div id="langBar" uk-modal>
            <div class="uk-modal-dialog uk-modal-body">
            <p class="uk-text-small"> <?= __("Välj språk") ?> </p>

             <select id="langSelector" class="uk-select uk-margin uk-width-1-1">
             <option <? echo  !$session->lang ? "selected" : "" ;  ?> ><?= __("Vänligen välj språk!") ?></option>
            <?php
            foreach($languages as $language) {
              $selected = '';

              // if this page isn't viewable (active) for the language, skip it
              if(!$page->viewable($language)) continue;

              // if language is current user's language, make it selected
              if($user->language->id == $language->id AND $session->lang) $selected = " selected=selected";

              // determine the "local" URL for this language
              $url = $page->localUrl($language);

              // output the option tag
              echo "<option$selected value='$url'>$language->title</option>";
            }
            ?>
            </select>
            </div>
        </div>

         <div id="guides" uk-modal class="uk-background-secondary">
            <div class="uk-modal-dialog uk-modal-body uk-background-secondary">
             <button class="uk-modal-close-default" type="button" uk-close></button>


              <?php
              $toc = $page->parent->count() ? $page->parent->children() : "" ;
              $tocOut = "";

              if (count($toc)) {
                $tooltip = __("Lyssna!");
                $tocOut = "<div uk-grid class='uk-child-width-1-2 uk-child-width-1-4@m uk-grid-small uk-margin-small-top'>";
                foreach ($toc as $co) {
                  $active = $page->id == $co->id ? "opacity: .25;" : "" ;
                  $pagePos = $toc->getItemKey($co) + 1; // Assume the keys are zero based
                  $listen = count($co->audiofiles) ? " <span uk-tooltip='$tooltip' uk-icon='icon: play-circle;'></span>" : "" ;
                  $tocOut .= "
                  <div><div class='uk-text-center uk-text-bold uk-light' style='background-image:url({$pages->get("/")->images->first()->url});background-repeat: no-repeat; background-size: 69%;background-position: 50%;background-color: #D10A40;height: 120px;line-height: 90px;{$active}'>
                  <a class='uk-link-reset uk-display-inline-block uk-padding-small' href='$co->url'><span class='uk-text-large'>$pagePos</span></a>
                  </div></div>";
                }
                $tocOut .= "</div>";
              }

              echo "$tocOut";

              ?>
            </div>
        </div>

            <?php

            if (count($page->audiofiles)) {
               $jsConfig = $config->js();

              $audio = $page->audiofiles->getTag($user->language->name);
              if($audio) {
                $jsConfig['audio']  = $audio->url;
              }

              $coverImage = $page->images->first();
              if ($coverImage) {
                $jsConfig['cover']  = $coverImage->url;

              }

              $jsConfig['title']  = $page->title;

            }

            ?>
            <script>
              var config = <?php echo json_encode($jsConfig); ?>;
            </script>

             <!-- Add scripts from templates -->
        <?php foreach($config->scripts as $url) echo "<script type='text/javascript' src='$url'></script>"; ?>

        <!-- UIkit JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.40/js/uikit.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.40/js/uikit-icons.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
        <?php if($page->template != "selectlang"){ ?>
        <script type="text/javascript">
          if (Cookies.get('lang') != "picked") {
              var langselector = document.getElementById("langSelector");
              var langsel = document.getElementById("langSel");
              var langbar = document.getElementById("langBar");
              UIkit.modal(langbar, {escClose: false, bgClose: false}).show();

              langbar.style.display = 'block';
              langselector.addEventListener('change', function () {
                  Cookies.set('lang', 'picked', { expires: 1 });
                  langbar.style.display = 'none';
                  window.location=this.value
              });
          }
        </script>
        <?php } ?>

    </body>
</html>