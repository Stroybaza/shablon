<?php
$s = $category['name'];
$pos = 20;
if (strlen($s) > $pos) {
    $sc = 1; //string count
    $ss = explode(" ", $s);
    $s = array();
    for ($i = 0; $i < count($ss); $i++) {
        $word = $ss[$i];
        $l = strlen($word);
        if ($l > $pos) {
            $s[$sc] = $s[$sc] . $word . '<br>';
            $sc++;
        } else $s[$sc] = $s[$sc] . $word;
    }
    for($i=0;$i<count($s);$i++)   echo $s[$i];
//s$ = $s . $ss[$i] . '<br>';

//  $s = substr($s,0,$pos).'<br>'. substr($s,$pos,strlen($s)-$pos).'</br>';
}
//echo $s;
?>
