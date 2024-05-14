
const fs = require('fs');
const { exec } = require('child_process');
const getFilename = require('./script');

const getPosition = () => {
  return new Promise((resolve, reject) => {
    getFilename((err, filename) => {
      if (err) {
        console.error('Error getting filename:', err);
        reject(err);
        return;
      }

      const filePath = `/var/log/mysql/${filename}`;

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

          const positionPattern = /end_log_pos (\d+)/g;
          let latestPosition;
          let match;
          while ((match = positionPattern.exec(stdout)) !== null) {
            latestPosition = match[1];
          }

          if (!latestPosition) {
            reject(new Error('Latest position not found'));
            return;
          }

          resolve(latestPosition);
        });
      });
    });
  });
};

module.exports = getPosition;



