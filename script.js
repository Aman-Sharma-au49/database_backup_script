
const fs = require('fs');
const path = require('path');

const directoryPath = '/var/log/mysql';

function getFilename(callback) {
  let mysqlBinFiles = [];

  fs.readdir(directoryPath, (err, files) => {
    if (err) {
      console.error('Error reading directory:', err);
      return callback(err);
    }

    files.forEach(file => {
      if (file.startsWith('mysql-bin.0')) {
        mysqlBinFiles.push(file);
      }
    });

    if (mysqlBinFiles.length === 0) {
      console.error('No matching files found');
      return callback(new Error('No matching files found'));
    }

    const filename = mysqlBinFiles[0];
    
    callback(null, filename);
    
  });
}

module.exports = getFilename;
