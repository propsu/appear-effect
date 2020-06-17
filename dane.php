<?php

$db = new mysqli('localhost', 'root', '', 'japan');
$sql = "SELECT * from cities";
$result = $db->query($sql);

$data = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($data);


