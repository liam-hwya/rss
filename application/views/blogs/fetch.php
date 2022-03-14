<?php

// echo "<pre>";
// die(var_dump($xml));
// echo "</pre>";

foreach($xml->channel->item as $blog){

    echo "<li>";
    echo $blog->title;
    echo $blog->blogContent;
    echo "</li>";

}