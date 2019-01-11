# mongo-backup-aws-s3
Handy bash script to create daily backups of a Mongo DB and upload to a AWS S3 bucket

Can be used in a EC2 instance or any other machine with AWS CLI setup and permissions to upload to the S3 bucket.

## Notes
* If you want to create backups more often, you'll need to change the variable $today to include hours/minutes. Otherwise, just one backup per day will be stored (the last backup will override previous ones).

