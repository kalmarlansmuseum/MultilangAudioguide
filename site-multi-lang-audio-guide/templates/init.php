<?php

$pageTemp = $page->template;

$editarea = "";
if($user->isLoggedin()){
 $editarea = "<a title='redigera' uk-icon='icon: cog' class='uk-position-bottom-right uk-padding-small' href='{$config->urls->admin}page/edit/?id={$page->id}'></a>";
}

$options = array(
    'parent_class' => 'parent',
    'current_class' => 'uk-active',
    'has_children_class' => 'has_children',
    'levels' => true,
    'levels_prefix' => 'level-',
    'max_levels' => 1,
    'firstlast' => false,
    'collapsed' => true,
    'show_root' => true,
    'selector' => 'sort=sort',
    'selector_field' => 'nav_selector',
    'outer_tpl' => '<ul class="uk-nav uk-nav-default uk-margin-large-top">||</ul>',
    'inner_tpl' => '<ul>||</ul>',
    'list_tpl' => '<li%s>||</li>',
    'list_field_class' => '',
    'item_tpl' => '<a href="{url}">{title}</a>',
    'item_current_tpl' => '<a href="{url}">{title}</a>',
    'xtemplates' => '',
    'xitem_tpl' => '<a href="{url}">{title}</a>',
    'xitem_current_tpl' => '<span>{title}</span>',
    'date_format' => 'Y/m/d',
    'code_formatting' => false,
    'debug' => false
);
$sideNav = $modules->get("MarkupSimpleNavigation"); // load the module
$sideNav = $sideNav->render($options);

$parenter = $page->parents()->append($page);

$breadcrumbs .= "<ul class='uk-breadcrumb uk-padding-small'>";
foreach($parenter as $parent){
   $breadcrumbs .= ($parenter->last() === $parent) ? "<li class='uk-active'>{$parent->title}</li>" : "<li class='breadcrumb $bold'><a href='{$parent->url}'>{$parent->title}</a></li>" ;
}
$breadcrumbs .= "</ul>";


$selLang = $user->language->name;
switch ($selLang) {
    case 'default':
        $lang = "sv";
        break;
    case 'english':
        $lang = "en-gb";
        break;
    case 'deutsch':
        $lang = "de";
        break;

    default:
        $lang = "sv";
        break;
}

