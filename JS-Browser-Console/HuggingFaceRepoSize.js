// It's difficult to find the total size of a repo on HuggingFace when there are tons of files.
// This script calculates the total file size of all download links with the "title" attribute set to "Download file"
// on the current webpage, and logs the result to the console in a human-readable format.
//
// Created by Wesley Pyburn (TroubleChute)
// https://github.com/TcNobo/TcNo-Random-Scripts

// Initialize total size variable to 0
let totalSize = 0;

// Get all download links with the "title" attribute set to "Download file"
const downloadLinks = document.querySelectorAll('a[title="Download file"]');

// Loop through each download link and extract its size information
downloadLinks.forEach(link => {
  // Get the size text from the link's inner text
  const sizeText = link.innerText.trim();

  // Parse the size value from the size text and convert it to bytes
  const size = parseFloat(sizeText);
  const sizeUnit = sizeText.match(/[A-Za-z]+/)[0].toUpperCase();
  const sizeInBytes = convertToBytes(size, sizeUnit);

  // Add the size in bytes to the total size variable
  totalSize += sizeInBytes;
});

// Format the total size in a human-readable format and log it to the console
console.log(`Total file size: ${bytesToSize(totalSize)}`);

// Helper function to convert a size value and unit to bytes
function convertToBytes(size, unit) {
  // Convert the size to bytes based on its unit
  switch (unit) {
    case 'KB':
      return size * 1024;
    case 'MB':
      return size * 1024 * 1024;
    case 'GB':
      return size * 1024 * 1024 * 1024;
    default:
      return size;
  }
}

// Helper function to format a size value in a human-readable format
function bytesToSize(bytes) {
  // Determine the appropriate unit for the given size value
  const units = ['B', 'KB', 'MB', 'GB', 'TB'];
  let size = bytes;
  let unitIndex = 0;

  while (size > 1024 && unitIndex < units.length - 1) {
    size /= 1024;
    unitIndex++;
  }

  // Return the formatted size value with its appropriate unit
  return `${size.toFixed(2)} ${units[unitIndex]}`;
}
