import fs from 'fs'
import path from 'path'

// Search a file
let search = (path, needle) => {
  let results = []
  fs.readdirSync(path).forEach((file) => {
    
  })
}

console.log(search('/users/bastien/Sites/POO2', /README.md/))