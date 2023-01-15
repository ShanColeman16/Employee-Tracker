const inquirer = require('inquirer');
const mysql = require('mysql2');
const prompt = inquirer.createPromptModule();
require('console.table');

const db = mysql.createConnection({
  user: "root",
  database: 'employeelist_db'
});

const listOption = (type) => {
switch (type) {
  case 'VIEW ALL DEPARTMENTS': {
    db.query('SELECT * FROM department', (err, departments) => {
      console.table(departments);
      init();
    });
    break;
  }
  case 'VIEW ALL EMPLOYEES': {
    db.query('SELECT * FROM employee', (err, employees) => {
      console.table(employees);
      init();
    });
    break;
  }
  case 'VIEW ALL ROLES': {
    db.query('SELECT * FROM role', (err, roles) => {
      console.table(roles);
      init();
    });
    break;
  }
  }
};

const init = () => {
prompt({
  type: 'rawlist',
  message: 'Please select one of the following',
  choices: [
    'VIEW ALL DEPARTMENTS',
    'VIEW ALL EMPLOYEES',
    'VIEW ALL ROLES',
  ],
  name: 'type'
})
.then((answers) => {
  listOption(answers.type);
});
};
init();
