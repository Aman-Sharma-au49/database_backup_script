const fs = require('fs');
const { exec } = require('child_process');
const path = require('path'); // Import the path module
const { DateTime } = require('luxon');
const getFilename = require('./script');


const dayOfWeek = DateTime.now().toFormat('EEEE').toLowerCase(); // Get the current day of the week in lowercase
const getPosition = () => {
  return new Promise((resolve, reject) => {
    getFilename((err, filename) => {
      if (err) {
        console.error('Error getting filename:', err);
        reject(err);
        return;
      }

      const mysqlDatabase = 'College';    
        const backupDir = '/home/aman/vats';
      const position = 'your_position_value'; // Define your position value

      const backupFileName = `${mysqlDatabase}_incremental_backup_${filename}_${position}__${DateTime.now().toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`;
      const backupFilePath = path.join(backupDir, backupFileName);
      const filePath = `/var/log/mysql/${filename}`;

      // Check if file exists
      if (!fs.existsSync(filePath)) {
        reject(new Error(`File ${filePath} does not exist`));
        return;
      }

      fs.readFile(filePath, (err, data) => {
        if (err) {
          console.error('Error reading file:', err);
          reject(err);
          return;
        }

        exec(`mysqlbinlog ${filePath}`, (err, stdout, stderr) => {
          if (err) {
            console.error('Error executing mysqlbinlog:', err);
            reject(err);
            return;
          }

          const positionAndTimePattern = /end_log_pos (\d+).*?(\d+:\d+)/gs;
          let closestPosition = 0;
          let closestTime = '';
          const targetTime = '11:02'; // Target time

          let match;
          // Iterate over matches to find the closest position to the target time
          while ((match = positionAndTimePattern.exec(stdout)) !== null) {
            const position = parseInt(match[1], 10);
            const time = match[2]; // Extracting time from the log entry
            
            // Check if the current time is before or equal to the target time
            if (time <= targetTime) {
              // Update closest position and time if it's closer to the target time
              if (closestTime === '' || time > closestTime) {
                closestPosition = position;
                closestTime = time;
              }
            }
          }

          if (closestPosition === 0) {
            reject(new Error('No position found before 10:48'));
            return;
          }

        //   console.log(`Closest Position before ${targetTime}: ${closestPosition}, Time: ${closestTime}`);
          resolve({ position: closestPosition, time: closestTime });

          const backupFileName = `${mysqlDatabase}_incremental_backup_${filename}_${position}__${DateTime.now().toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`;
          const backupFilePath = path.join(backupDir, backupFileName);

          const command = `mysqlbinlog --start-position=${closestPosition} ${filePath} > "${backupFilePath}"`;

          console.log('Executing command:', command);

          exec(command, (error, stdout, stderr) => {
            if (error) {
              console.error(`Error executing command: ${error}`);
              reject(error);
              return;
            }
            
            if (stderr) {
              console.error(`Command encountered stderr: ${stderr}`);
              reject(stderr);
              return;
            }
        

  const command1 = `sudo docker start minio`;
  const command2 = `mc cp ${backupFilePath} myminio/test-bucket/${backupFileName}`;

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
          
            console.log(`Incremental Backup_(${dayOfWeek} created: ${backupFilePath}`);
           
          });

        });
      });
    });
  });





};

module.exports = getPosition;



