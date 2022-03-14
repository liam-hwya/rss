<?php
$link = $feed_url;
$feed="<?xml version='1.0' encoding='UTF-8' ?>";
// $feed.='<rss xmlns:atom="http://www.w3.org/2005/Atom" version="2.0">';
$feed.='<channel>';
$feed.='<title>My Website Feed</title>';
$feed.='<link>'.$link.'</link>';
$feed.='<description>My Website Feed Description</description>';
foreach($blogs->result() as $blog){
  $feed.='<item>';
  $feed.='<title>'.$blog->title.'</title>';
    $feed.='<blogContent>'.$blog->title.'</blogContent>';
  $feed.='</item>';
}
$feed.='</channel>';
var_dump(htmlspecialchars($feed));die();
// $feed.='</rss>';
echo $feed;