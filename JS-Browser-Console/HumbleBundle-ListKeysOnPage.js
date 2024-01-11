// Want to grab all the keys on a given page, and list them so you can either save them, send them or use them in a program like SteamBulkActivator?
// This project collects all keys from the page (with the CSS class ".keyfield-value") and lists them, for you to copy from your console.
//
// Created by Wesley Pyburn (TroubleChute)
// https://github.com/TcNobo/TcNo-Random-Scripts
// Based on: https://stackoverflow.com/questions/22997516/to-find-all-emails-on-a-page/22997761
var ikws = true;  // IgnoreKeysWithSpaces?
var list = ""; var tot = 0;
Array.prototype.slice.call(document.getElementsByClassName("keyfield-value")).forEach((item, index) => {
  if (!ikws || !item.innerHTML.includes(" ")){list += item.innerHTML + "\n"; tot++;}
});
console.log(list);
console.log("Total number of keys on page: " + tot);