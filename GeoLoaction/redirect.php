<?php

    $a = $_POST["ok"];

    $my_file = 'info.txt';
    $handle = fopen($my_file, 'a');
    fwrite($handle, $a);
    
?>