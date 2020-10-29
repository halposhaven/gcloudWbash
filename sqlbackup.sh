#! /bin/sh
#When passed a DB_SERVER, GS_BUCKET, and DB_NAME generate a backup of DB_NAME on DB_SERVER and save it to GS_BUCKET
if  [ -z "$DB_NAME" ];then
	gcloud sql export sql $DB_SERVER $GS_BUCKET/sqldump-$DB_SERVER-$DB_NAME-`date +"%m%d%y"`.sql --database=$DB_NAME --offload
else
	gcloud sql export sql $DB_SERVER $GS_BUCKET/sqldump-$DB_SERVER-full-`date +"%m%d%y"`.sql  --offload
fi
