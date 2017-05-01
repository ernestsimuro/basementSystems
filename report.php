<?php
/**
 * Created by PhpStorm.
 * User: ernes
 * Date: 4/30/2017
 * Time: 4:38 PM
 */

require_once('includes/myFormClass.php');
require_once('includes/config.php');
require_once('newsitem_Class_mysql.php');

    $db = new newsItem();
    $results = $db->getListofItems();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Demo</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>

<h1>Treehouse Newsletter List </h1>

<table>
    <tr>
        <th>Email</th>
        <th>Name</th>
        <th>Date ADDED</th>
    </tr>


<?PHP   foreach ($results as $key=>$item) { ?>
            <tr>
            <td><?php echo $item['email']?> </td>
            <td><?php echo $item['name']?> </td>
            <td><?php echo $item['requestDate']?> </td>
            </tr>
        <?php    } ?>

    </table>
    </body>
    </html>
