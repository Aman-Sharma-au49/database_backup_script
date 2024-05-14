const { exec } = require('child_process');

const command = 'mysql -u root -pAman@123 -e "CREATE DATABASE A; DROP DATABASE A;"';

// Execute the command
exec(command, (error, stdout, stderr) => {
  if (error) {
    console.error(`Error: ${error.message}`);
    return;
  }
  if (stderr) {
    console.error(`stderr: ${stderr}`);
    return;
  }
  console.log(`stdout: ${stdout}`);
});
