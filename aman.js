const fs = require('fs');
const { exec } = require('child_process');
const path = require('path');
const { DateTime } = require('luxon');
const getFilename = require('./script');

const mysqlDatabase = 'College';
const backupDir = '/home/aman/vats';
const binlogFilePath = '/var/log/mysql/${filename}';

const getLatestPositionAndPerformBackup = () => {
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

          const lastBackupDate = DateTime.now().minus({ days: 1 });
          const backupFileName = `${mysqlDatabase}_incremental_backup_${lastBackupDate.toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`;
          const backupFilePath = path.join(backupDir, backupFileName);

          exec(`mysqlbinlog --start-position=${latestPosition} ${binlogFilePath} > '${backupFilePath}'`, (error) => {
            if (error) {
              console.error(`Incremental backup failed: ${error}`);
              reject(error);
            } else {
              console.log(`Incremental backup created: ${backupFilePath}`);
              resolve(latestPosition);
            }
          });
        });
      });
    });
  });
};

getLatestPositionAndPerformBackup()

