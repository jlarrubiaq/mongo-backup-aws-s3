today="$(date +%Y%m%d)"
echo $today
mongodump --db meteor --host "localhost:27017" --out "./db-backup-$today"
aws s3 cp "db-backup-$today" "s3://bucket-name/backups/db-backup-$today/" --recursive
rm -rf "./db-backup-$today"
