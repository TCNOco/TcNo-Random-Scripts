// Needed to grab a few emails from a webpage.
// If the page has an element with pages, you can run the script multiple times and it will add each time.
// Also removes duplicates.
// Don't use this for spam :)
//
// Created by Wesley Pyburn (TechNobo)
// https://github.com/TcNobo/TcNo-Random-Scripts
// Based on: https://stackoverflow.com/questions/22997516/to-find-all-emails-on-a-page/22997761

var arrCur = document.body.innerHTML.toString().match(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9._-]+)/gi); // Collect emails on page
if (typeof arrEmails === 'undefined'){var arrEmails = arrCur;}else{arrEmails = arrEmails.concat(arrCur);} // Add current emails to array, or if not defined set as array.
arrEmails = arrEmails.filter((a, b) => arrEmails.indexOf(a) === b); // Remove duplicates from list
// OUTPUT:
var ostr = "";
arrEmails.forEach((e)=>{ostr +=e+'\n';});
console.log(ostr)
console.log("Total number of emails: " + arrEmails.length);
// To copy to clipboard, run the following command in your console, after using the script:
// ( You'll end up with "["email@email.com", "email2@email.com"...]" copied to your clipboard)
/*

copy(arrEmails);

*/