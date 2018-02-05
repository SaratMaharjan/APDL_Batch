const fs = require('fs');
const path = require('path');
const readline = require('readline-sync');

console.log('____________________________________');

let project = 'test';
let project1 = readline.question('Enter Project Number (default: test) - ');
if (project1 && project1 != '') {
  project = project1;
}

let header = 'xxx xxxxxxx';
let header1 = readline.question(
  'Enter Project Header (default: xxx xxxxxxx) - '
);
if (header1 && header1 != '') {
  header = header1;
}
console.info('Header: ' + header);

let projectPath = 'x:\\ins\\';
let completePath = projectPath + project;
console.info(`Project Path: ${completePath}`);

console.log('____________________________________');

fs.readdir(completePath, (err, files) => {
  if (err) {
    console.error('could not read folder: ', err);
    process.exit(1);
  }

  files.forEach((file, index) => {
    if (
      path.join(file).indexOf('.in') >= 0 &&
      path.join(file)[path.join(file).length - 1] === 'n'
    ) {
      fs.readFile(completePath + '\\' + file, (err, data) => {
        if (err) {
          return console.log('Could not read file: ' + err);
        }
        // console.log(`File: ${file} with index ${index}`);

        let linesArray = data.toString().split('\n');
        linesArray[0] = '! <-- ' + project + ' --- ' + header + ' -->';

        // console.log(linesArray);

        fs.writeFile(completePath + '\\' + file, linesArray.join('\n'), err => {
          if (err) {
            return console.log('problem occured: ' + err);
          }
          console.log('File ' + file + ' modified!');
        });
      });
    }
  });
});

// let exitCode = readline.question(`Enter to exit... `);
// setTimeout(() => console.log('exiting...'), 5000);
