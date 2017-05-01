<?php
/**
 * Created by PhpStorm.
 * User: ernes
 * Date: 4/30/2017
 * Time: 11:12 AM
 */
require_once('includes/myFormClass.php');
require_once('includes/config.php');
require_once('newsitem_Class_mysql.php');

    $db = new newsItem();
    $insertData = array('email' => $_POST['email_'], 'name' => $_POST['Name_']);
    $results = $db->addNewsletterItem($insertData);

?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Demo</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body>

    <h1>Treehouse Newsletter Signup </h1>
<?php    
    $frm = new myForm('index.php', 'post');

    // using $frmStr to concatenate long string of form elements
    // startForm arguments: id, optional attributes added in associative array
    if ($validate) {
    $frmStr = $frm->startForm('index.php', array('class' => 'newsletter', 'onsubmit' => 'return checkBeforeSubmit(this)')) . PHP_EOL;
    } else {
    $frmStr = $frm->startForm('index.php', array('class' => 'newsletter')) . PHP_EOL;
    }
    // fieldset and legend elements
    $frmStr .= $frm->startTag('fieldset') . PHP_EOL;
    $frmStr .= $frm->startTag('legend') . 'Newsletter Sighup' . $frm->endTag() . PHP_EOL;

    // wrap form elements in paragraphs
    $frmStr .= $frm->startTag('p');
    $frmStr .= $results;
    $frmStr .= $frm->endTag() . PHP_EOL;
    $frmStr .= $frm->startTag('p');
    
    $frmStr .= $frm->addInput('submit', 'submit', 'Submit');
    
    $frmStr .= $frm->endTag() . PHP_EOL;
    $frmStr .= $frm->endTag('fieldset') . PHP_EOL;
    
    $frmStr .= $frm->endForm();

    echo $frmStr;

