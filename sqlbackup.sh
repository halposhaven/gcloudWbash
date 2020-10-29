#! /bin/sh
#When passed a DB_SERVER, GS_BUCKET, and DB_NAME generate a backup of DB_NAME on DB_SERVER and save it to GS_BUCKET
gcloud sql export sql $DB_SERVER $GS_BUCKET/sqldump-`date +"%m%d%y"`.sql --database=$DB_NAME --offload
