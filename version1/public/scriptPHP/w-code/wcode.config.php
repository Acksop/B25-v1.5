<?php
// Configuration du W-Code !

// D�finissez vos smileys
                        // Colonne 1 : Smiley
                        // Colonne 2 : Image du smiley
    $wcode_smileys = Array(
                        Array(":-D","scriptPHP/w-code/wcode_images/01.gif"),
                        Array(";-)","scriptPHP/w-code/wcode_images/02.gif"),
                        Array("?-)","scriptPHP/w-code/wcode_images/03.gif"),
                        Array(":-\$","scriptPHP/w-code/wcode_images/04.gif"),
                        Array("B-)","scriptPHP/w-code/wcode_images/05.gif"),
                        Array(":'(","scriptPHP/w-code/wcode_images/06.gif"),
                        Array("X-(","scriptPHP/w-code/wcode_images/07.gif"),
                        Array(":-*","scriptPHP/w-code/wcode_images/08.gif"),
                        Array("^^","scriptPHP/w-code/wcode_images/09.gif"),
                        Array(":-|","scriptPHP/w-code/wcode_images/10.gif"),
                        Array(":-)","scriptPHP/w-code/wcode_images/11.gif"),
                        Array("Z-)","scriptPHP/w-code/wcode_images/12.gif"),
                        Array(":-(","scriptPHP/w-code/wcode_images/13.gif"));

// D�finissez vos balises
                        // Colonne 1 : Nom du tag
                        // Colonne 2 : REGEX de la valeur
                        // Colonne 3 : Code correspondant, avec %VALEUR% et %CONTENU% ou %FONCTION%
                        // Colonne 4 : Faut-il fermer la balise ?
                        // Colonne 5 : Et sinon, faut-il remplacer les \n par des <br /> ?

 $var_temp = -1;

 $var_temp++;                           // Balise pour le texte gras
 $wcode_balises[$var_temp][0] = 'g';                    // Nom du Tag
 $wcode_balises[$var_temp][1] = '';                     // REGEX de la valeur
 $wcode_balises[$var_temp][2] = '<span class="gras">%CONTENU%</span>';     // Code correspondant
 $wcode_balises[$var_temp][3] = true;                   // Balise � fermer
 $wcode_balises[$var_temp][4] = true;                   // Faut-il remplacer les \n par des <br /> ?

 $var_temp++;                           // Balise pour le texte italique
 $wcode_balises[$var_temp][0] = 'i';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '<span class="italique">%CONTENU%</span>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour le texte soulign�
 $wcode_balises[$var_temp][0] = 's';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '<span class="souligne">%CONTENU%</span>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour le texte fluo
 $wcode_balises[$var_temp][0] = 'fluo';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '<span class="fluo">%CONTENU%</span>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour la taille du texte
 $wcode_balises[$var_temp][0] = 'taille';
 $wcode_balises[$var_temp][1] = '[0-9]{1,2}';
 $wcode_balises[$var_temp][2] = '<span style="font-size: %VALEUR%px;">%CONTENU%</span>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour la couleur du texte
 $wcode_balises[$var_temp][0] = 'couleur';
 $wcode_balises[$var_temp][1] = '#([0-9a-fA-F]){6}';
 $wcode_balises[$var_temp][2] = '<span style="color: %VALEUR%;">%CONTENU%</span>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour une image
 $wcode_balises[$var_temp][0] = 'img';
 $wcode_balises[$var_temp][1] = '(.*[^\\\\])';
 $wcode_balises[$var_temp][2] = '<img src="%VALEUR%" alt="" />';
 $wcode_balises[$var_temp][3] = false;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour un mp3
 $wcode_balises[$var_temp][0] = 'mp3';
 $wcode_balises[$var_temp][1] = '(.*[^\\\\])';
 $wcode_balises[$var_temp][2] = '<div><object type="application/x-shockwave-flash" id="mplayer476bf6c9c6489" data="lecteurMp3/mplayer.swf" wmode="transparent" height="24" width="290"><br><param name="movie" value="lecteurMp3/mplayer.swf"><param name="FlashVars" value="playerID=mplayer476bf6c9c6489&amp;bg=0xF8F8F8&amp;leftbg=0xebebeb&amp;lefticon=0x666666&amp;rightbg=0xd20560&amp;rightbghover=0x2c7d9c&amp;righticon=0xFFFFFF&amp;righticonhover=0xFFFFFF&amp;text=0x4f5458&amp;slider=0xd20560&amp;track=0xFFFFFF&amp;border=0x666666&amp;loader=0xebebeb&amp;soundFile=%VALEUR%"><param name="quality" value="high"><param name="menu" value="false"><param name="wmode" value="transparent"></object></div>';
 $wcode_balises[$var_temp][3] = false;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour un lien
 $wcode_balises[$var_temp][0] = 'lien';
 $wcode_balises[$var_temp][1] = '(.*[^\\\\])';
 $wcode_balises[$var_temp][2] = '<a href="%VALEUR%" target="_blank">%CONTENU%</a>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour une email
 $wcode_balises[$var_temp][0] = 'email';
 $wcode_balises[$var_temp][1] = '(.*[^\\\\])';
 $wcode_balises[$var_temp][2] = '<a href="mailto:%VALEUR%">%VALEUR%</a>';
 $wcode_balises[$var_temp][3] = false;
 $wcode_balises[$var_temp][4] = true;

 $var_temp++;                           // Balise pour une liste
 $wcode_balises[$var_temp][0] = 'liste';
 $wcode_balises[$var_temp][1] = '(a|1)?';
 $wcode_balises[$var_temp][2] = '%FONCTION%';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = false;

 $var_temp++;                           // Balise pour une puce
 $wcode_balises[$var_temp][0] = '*';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '[*]';
 $wcode_balises[$var_temp][3] = false;
 $wcode_balises[$var_temp][4] = false;

 $var_temp++;                           // Balise pour une ligne horizontale
 $wcode_balises[$var_temp][0] = 'hr';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '<hr />';
 $wcode_balises[$var_temp][3] = false;
 $wcode_balises[$var_temp][4] = false;

 $var_temp++;                           // Balise pour indice
 $wcode_balises[$var_temp][0] = 'indice';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '<sub>%CONTENU%</sub>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = false;

 $var_temp++;                           // Balise pour exposant
 $wcode_balises[$var_temp][0] = 'exposant';
 $wcode_balises[$var_temp][1] = '';
 $wcode_balises[$var_temp][2] = '<sup>%CONTENU%</sup>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = false;

 $var_temp++;                           // Balise pour aligner
 $wcode_balises[$var_temp][0] = 'aligner';
 $wcode_balises[$var_temp][1] = '(gauche|droite|centre|justifier)';
 $wcode_balises[$var_temp][2] = '<p class="%VALEUR%">%CONTENU%</p>';
 $wcode_balises[$var_temp][3] = true;
 $wcode_balises[$var_temp][4] = true;


  $wcode_smileys_status = TRUE; // Activer les smileys ?
  $wcode_balises_status = TRUE; // Activer les balises ?

// Si vous avez besoin d'utiliser une fonction
function wcode_liste($v,$c){
        $a = explode('[*]',$c);
        $temp = '';
        for ($i=1;$i<count($a);$i++) $temp .= '<li>'.$a[$i].'</li>';
        $c = $temp;
        if ($v=='a') return '<ul class="lettres">'.$c.'</ul>';
        elseif ($v=='1') return '<ul class="numeros">'.$c.'</ul>';
        else return '<ul class="normal">'.$c.'</ul>';
}

?>
