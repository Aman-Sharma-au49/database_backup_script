
const { exec } = require('child_process');
const path = require('path');
const getPosition = require('./IncPos'); 
const getFilename = require('./script'); 
const { DateTime } = require('luxon');

const mysqlDatabase = 'College';
const backupDir = '/home/aman/vats';

const handleError = (errorMessage) => {
  console.error(errorMessage);
  process.exit(1); 
};

getFilename((err, filename) => {
  if (err) {
    handleError('Error getting filename: ' + err);
  }

  const filePath = path.join('/var/log/mysql/', filename);
  console.log('File path:', filePath);

  // Getting the latest position asynchronously
  getPosition().then(position => {
    console.log('Latest position:', position);
    incrementalBackup(position.position, filePath, filename); // Extracting 'position' property
  }).catch(err => {
    handleError('Error getting position: ' + err);
  });
});

const incrementalBackup = (position, filePath, filename) => { // Accepting 'position' instead of 'position.position'
  if (!position) {
    handleError('Latest position is not defined. Cannot perform incrementalBackup.');
  }

  const backupFileName = `${mysqlDatabase}_incremental_Backup_${filename}_${position}_${DateTime.now().toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`;
  const backupFilePath = path.join(backupDir, backupFileName);

  const command = `mysqlbinlog --start-position=${position} ${filePath} > "${backupFilePath}"`;

  console.log('Executing command:', command);

  // Execute the command
  exec(command, (error, stdout, stderr) => {
    if (error) {
      handleError(`Error executing command: ${error}\nstderr: ${stderr}`);
    }
    
    if (stderr) {
      handleError(`Command encountered stderr: ${stderr}`);
    }

    console.log(`Command output: ${stdout}`);
    console.log(`incremental Backup created: ${backupFilePath}`);
  });
};


