const fs = require('fs')
const path = require('path')

// Search a file
let search = function (rootpath, needle, accumulator) {
  // Iterates the folder
  fs.readdirSync(rootpath).forEach(function (file) {
    // Concat path and filename
    let filepath = path.join(rootpath, file)
    // Chek is is a file
    if (fs.statSync(filepath).isFile()) {
      // Match de needle
      if (file.match(needle)) {
        accumulator.push(filepath)
      }
    // If is a directory, recurse
    } else if (fs.statSync(filepath).isDirectory()) {
      search(filepath, needle, accumulator)
    }
  })
  return accumulator
}

// Create an accumulator
let accumulator = []
// Perform the search
search('/users/bastien/Sites/POO2', /README.md/igm, accumulator)
// Display the search
console.log(accumulator)
