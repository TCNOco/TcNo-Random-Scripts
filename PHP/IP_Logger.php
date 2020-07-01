<?php
// Super simple IP grabber/logger.
// Was NEVER used for any other purpose than to collect info from MY browsers on MY computers.
// Use this ONLY for educational purposes.
// Created Feb 2018

// Created by Wesley Pyburn (TechNobo)
// https://github.com/TcNobo/TcNo-Random-Scripts

header("Location: https://google.com");
$handle = fopen("logged.txt", "a");

fwrite($handle, "Date: " . date("Y-m-d h:i:sa") . PHP_EOL);
fwrite($handle, "IP: " . $_SERVER['REMOTE_ADDR'] . PHP_EOL);
fwrite($handle, "Browser: " . $_SERVER['HTTP_USER_AGENT'] . PHP_EOL);
fwrite($handle, "Referrer: " . $_SERVER['HTTP_REFERER'] . PHP_EOL);
fwrite($handle, PHP_EOL);

fclose($handle);
exit;
