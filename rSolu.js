const fs = require('fs');
const replace = require('replace-in-file');
const readline = require('readline-sync');

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

let projectPath = 'C:\\Users\\maharjan\\OneDrive - ANAKON GmbH\\apdl\\';
let completePath = projectPath + project + '\\' + modelName + '.inp';
console.info(`Project Path: ${completePath}`);

const options = {
  files: completePath,
  from: /\/solu/g,
  to: '/eof'
};

replace(options, (err, changes) => {
  if (err) {
    return console.error('Error Occured: ', err);
  }
  console.log('Replaced Successfully: ', changes.join(', '));
});

setTimeout(() => console.log('exiting...'), 5000);
