const fs = require('fs');
const { exec } = require('child_process');
const getlatestTime = require('./IncreMon'); 
const getFilename = require('./script');
// const latestTime = require('./IncreMon');

const getPosition = () => {
  return new Promise((resolve, reject) => {
    getFilename((err, filename) => {
      if (err) {
        console.error('Error getting filename:', err);
        reject(err);
        return;
      }

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

          const positionAndTimePattern = /end_log_pos (\d+).*?12:50/gs;
          let latestPosition = 0;
          let latestTime = '';

          let match;
          // Iterate over matches to find the latest position
          while ((match = positionAndTimePattern.exec(stdout)) !== null) {
            const position = parseInt(match[1], 10);
            if (position > latestPosition) {
              latestPosition = position;
              latestTime = '12:50'; 
            }
          }

          if (latestPosition === 0) {
            reject(new Error('Latest position not found'));
            return;
          }

          console.log(`Position: ${latestPosition}, Time: ${latestTime}`);
          resolve({ position: latestPosition, time: latestTime });
        });
      });
    });
  });
};

module.exports = getPosition;












