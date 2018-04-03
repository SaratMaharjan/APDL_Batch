const fs = require('fs');
const readline = require('readline-sync');
const replaceStream = require('replacestream');


let project = 'test';
if (fs.existsSync('lastProject.txt')) {
  project = fs
    .readFileSync('lastProject.txt')
    .toString()
    .split('\n')[0];
}
let project1 = readline.question(
  `Enter Project Number (default: ${project}) - `
);
if (project1 && project1 != '') {
  project = project1;
  fs.writeFileSync('lastProject.txt', project);
}

let modelName = 'modell';
let modelName1 = readline.question('Enter Model Name (default: modell) - ');
if (modelName1 && modelName1 != '') {
  modelName = modelName1;
}

let projectPath = 'x:\\ins\\';
let completePath = projectPath + project + '\\' + modelName + '.inp';
let tempPath = projectPath + project + '\\temp.inp';
console.info(`Project Path: ${completePath}`);

fs.renameSync(completePath, tempPath);
let newFile = fs.createWriteStream(completePath);

// Replace all the instances of 'birthday' with 'earthday'
fs.createReadStream(tempPath)
  .pipe(replaceStream('/solu', '/eof'))
  .pipe(newFile)
  .on('finish', () => {
    fs.unlinkSync(tempPath);
    console.log('------ temporary file deleted -------');
    let exitCode = readline.question(`Enter to exit... `);
  });
