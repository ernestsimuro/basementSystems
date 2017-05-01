<?php

require_once('includes/myFormClass.php');
require_once('includes/config.php');
require_once('newsitem_Class_mysql.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Demo</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />


<script type="text/javascript">
function checkBeforeSubmit(frm) {
    var x = frm["name"].value;
    if (x == "") {
        alert("Name  is required");
        return false;
    }
   var y = frm["email"].value;
   if (y == "") {
        alert("Email address is required");
        return false;
    } 
    return true; // to submit
}

</script>
</head>
<body>

<h1>Treehouse Newsletter Signup </h1>

<?php

    $frm = new myForm('addNewsletter.php', 'post');

    // using $frmStr to concatenate long string of form elements
    // startForm arguments: id, optional attributes added in associative array
    if ($validate) {
        $frmStr = $frm->startForm('addNewsletter',
            array('class' => 'newsletter', 'onsubmit'=>'return checkBeforeSubmit(this)') ) . PHP_EOL;
    }  else {
        $frmStr = $frm->startForm('addNewsletter', array('class' => 'newsletter')) . PHP_EOL;
    }
    // fieldset and legend elements
    $frmStr .= $frm->startTag('fieldset') . PHP_EOL;
    $frmStr .= $frm->startTag('legend') . 'Newsletter Sighup' . $frm->endTag() . PHP_EOL;

    // wrap form elements in paragraphs
    $frmStr .= $frm->startTag('p');

    // label and text input with optional attributes
    $frmStr .= $frm->addLabelFor('name', 'Your Name: ');
    // using html5 required attribute
    $frmStr .= $frm->addInput('text', 'Name', '', array('id'=>'name', 'size'=>25, ) );
    
    $frmStr .= $frm->endTag() . PHP_EOL;

    // wrap form elements in paragraphs
    $frmStr .= $frm->startTag('p');

    // label and text input with optional attributes
    $frmStr .= $frm->addLabelFor('email', 'Email Addr: ');
    // using html5 required attribute
    $frmStr .= $frm->addInput('email', 'email', '', array('id'=>'email', 'size'=>25, ) );

    // endTag remembers startTag (but you can pass tag if nesting or for clarity)
    $frmStr .= $frm->endTag() . PHP_EOL;
    $frmStr .= $frm->startTag('p');

    $frmStr .= $frm->addInput('submit', 'submit', 'Submit');

    $frmStr .= $frm->endTag() . PHP_EOL;
    $frmStr .= $frm->endTag('fieldset') . PHP_EOL;

    $frmStr .= $frm->endForm();

    echo $frmStr;