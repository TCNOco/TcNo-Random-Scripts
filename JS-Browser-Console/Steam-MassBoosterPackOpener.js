// Runs the OpenBooster() function in your browser for the list of items off the webpage.
// Much faster than clicking each item, waiting, clicking Open Booster pack, Waiting, refreshing, and repeating.
//
// Simply find the start and end index of the booster packs you want to open, starting from 0 being the first item on page 0.
// To open item #5 to #10 on the list, you'd use startIndex=4 and endIndex=9.
// Obviously, this is not how Steam intended for the system to be used, so use at your own risk. It's mostly here to learn from if you wanted to do anything similar for any site or project.
//
// Created by Wesley Pyburn (TroubleChute)
// https://github.com/TcNoco/TcNo-Random-Scripts
// Based on: https://stackoverflow.com/questions/22997516/to-find-all-emails-on-a-page/22997761

var startIndex = 0;
var endIndex = 9;

Array.prototype.slice.call(document.getElementsByClassName("inventory_item_link")).slice(startIndex,endIndex).forEach((item, index) => {
  OpenBooster(0, item.href.split("#")[1].slice(6));
})