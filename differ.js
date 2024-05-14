
const { exec } = require('child_process');
const path = require('path');
const getPosition = require('./pos'); 
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
    differentialBackup(position, filePath, filename);
  }).catch(err => {
    handleError('Error getting position: ' + err);
  });
});

const differentialBackup = (position, filePath, filename) => {
  if (!position) {
    handleError('Latest position is not defined. Cannot perform differential backup.');
  }

  const backupFileName = `${mysqlDatabase}_differential_backup_${filename}_${position}__${DateTime.now().toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`;
  const backupFilePath = path.join(backupDir, backupFileName);

  const command = `mysqlbinlog --start-position=157 ${filePath} > "${backupFilePath}"`;
  const command1 = `sudo docker start minio`;

  const command2 = `mc cp ${backupFilePath} myminio/test-bucket/${backupFileName}`;


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
    console.log(`Differential backup created: ${backupFilePath}`);
  });


  
  exec(command1, (error1, stdout1, stderr1) => {
    if (error1) {
      handleError(`Error executing command: ${error1}\nstderr: ${stderr1}`);
    }
    
    if (stderr1) {
      handleError(`Command encountered stderr: ${stderr1}`);
    }
    console.log(`Command executed: ${command1}`);
  });
  exec(command2, (error2, stdout2, stderr2) => {
    if (error2) {
      handleError(`Error executing command: ${error2}\nstderr: ${stderr2}`);
    }
    
    if (stderr2) {
      handleError(`Command encountered stderr: ${stderr2}`);
    }
    console.log(`Command executed: ${command2}`);
  });






};



