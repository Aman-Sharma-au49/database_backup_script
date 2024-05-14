// const { exec } = require('child_process');
// const fs = require('fs');
// const path = require('path');
// const { DateTime } = require('luxon');
// const getFilename = require('./script');

// const mysqlUser = 'root';
// const mysqlPassword = 'Aman@123';
// const mysqlDatabase = 'College';

// const backupDir = '/home/aman/vats';

// // Function to pad number with leading zeros
// function padNumber(num, size) {
//     let padded = "000000" + num;
//     return padded.substr(-size);
// }

// // Calling getFilename function to get the filename asynchronously
// getFilename((err, filename) => {
//     if (err) {
//         console.error(err);
//         return;
//     }
    
//     let filePath = '';
//     if (filename.startsWith('mysql-bin.')) {
//         let fileNumber = parseInt(filename.split('.')[1]);
//         fileNumber++; // Incrementing file number
//         const paddedNumber = padNumber(fileNumber, 6); // Pad with leading zeros to ensure 6 digits
//         filePath = `/var/log/mysql/mysql-bin.${paddedNumber}`;
//     } else {
//         filePath = `/var/log/mysql/${filename}`;
//     }

//     const fullBackup = () => {
//         const backupFile = path.join(backupDir, `${mysqlDatabase}_full_backup_${DateTime.now().toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`);
//         exec(`mysqldump --flush-logs --delete-source-logs --single-transaction --all-databases -u${mysqlUser} -p${mysqlPassword} -hlocalhost > ${backupFile}`, (error) => {
//             if (error) {
//                 console.error(`Full backup failed: ${error}`);
//             } else {
//                 console.log(`Full backup created: ${backupFile}`);
//                 exec(`sudo chmod +r ${filePath}`, (error) => {
//                   if (error) {
//                       console.error(`Permission Failed: ${error}`);
//                   } else {
//                       console.log(`Permission Successfully: ${filePath}`);
                   
//                   }
//               });
     


//                 console.log(`File path: ${filePath}`);
//             }

//             const command1 = `sudo docker start minio`;
//         const command2 = `mc cp /home/aman/vats/${backupFile} myminio/test-bucket/${backupFile}`;
      
//         exec(command1, (error1, stdout1, stderr1) => {
//           if (error1) {
//             handleError(`Error executing command: ${error1}\nstderr: ${stderr1}`);
//           }
          
//           if (stderr1) {
//             handleError(`Command encountered stderr: ${stderr1}`);
//           }
//           console.log(`Command executed: ${command1}`);
//         });
//         exec(command2, (error2, stdout2, stderr2) => {
//           if (error2) {
//             handleError(`Error executing command: ${error2}\nstderr: ${stderr2}`);
//           }
          
//           if (stderr2) {
//             handleError(`Command encountered stderr: ${stderr2}`);
//           }
//           console.log(`Command executed: ${command2}`);
//         });
      
//         });

        





//     };
    
//     fullBackup();
// });



const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');
const { DateTime } = require('luxon');
const getFilename = require('./script');

const mysqlUser = 'root';
const mysqlPassword = 'Aman@123';
const mysqlDatabase = 'College';

const backupDir = '/home/aman/vats';

// Function to pad number with leading zeros
function padNumber(num, size) {
    let padded = "000000" + num;
    return padded.substr(-size);
}

// Calling getFilename function to get the filename asynchronously
getFilename((err, filename) => {
    if (err) {
        console.error(err);
        return;
    }
    
    let filePath = '';
    if (filename.startsWith('mysql-bin.')) {
        let fileNumber = parseInt(filename.split('.')[1]);
        fileNumber++; // Incrementing file number
        const paddedNumber = padNumber(fileNumber, 6); // Pad with leading zeros to ensure 6 digits
        filePath = `/var/log/mysql/mysql-bin.${paddedNumber}`;
    } else {
        filePath = `/var/log/mysql/${filename}`;
    }

    const fullBackup = () => {
        const backupFile = path.join(backupDir, `${mysqlDatabase}_full_backup_${DateTime.now().toFormat('yyyy-MM-dd_HH-mm-ss')}.sql`);
        exec(`mysqldump --flush-logs --delete-source-logs --single-transaction --all-databases -u${mysqlUser} -p${mysqlPassword} -hlocalhost > ${backupFile}`, (error) => {
            if (error) {
                console.error(`Full backup failed: ${error}`);
                return;
            } 
            
            console.log(`Full backup created: ${backupFile}`);
            exec(`sudo chmod +r ${filePath}`, (error) => {
                if (error) {
                    console.error(`Permission change failed: ${error}`);
                } else {
                    console.log(`Permission changed successfully: ${filePath}`);
                }

                const command1 = `sudo docker start minio`;
                const command2 = `mc cp ${backupFile} myminio/test-bucket/${path.basename(backupFile)}`;

                exec(command1, (error1, stdout1, stderr1) => {
                    if (error1 || stderr1) {
                        console.error(`Error executing command1: ${error1 || stderr1}`);
                        return;
                    }
                    
                    console.log(`Command executed: ${command1}`);
                    exec(command2, (error2, stdout2, stderr2) => {
                        if (error2 || stderr2) {
                            console.error(`Error executing command2: ${error2 || stderr2}`);
                            return;
                        }
                        
                        console.log(`Command executed: ${command2}`);
                    });
                });
            });
        });
    };
    
    fullBackup();
});


