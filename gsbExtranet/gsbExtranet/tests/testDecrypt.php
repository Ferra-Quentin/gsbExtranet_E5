<?php
require_once ("../include/class.pdogsb.inc.php");

$pdo= PdoGsb::getPdoGsb();


$mail = "CQ?q???1B+s?_H?O-?N+4?{i??hF";
$cle = $pdo->recupCleChiffrement();
$nonce = $pdo->recupNonce();

echo sodium_crypto_secretbox_open($mail, $nonce, $cle);