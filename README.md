This image is intened to be used to trigger a gcloud sql export, while supporting a date based expansion on the name of the resulting file.

It expects to be passed 3 values
DB_SERVER = the name of the server in google cloud where the database can be found
DB_NAME = the name of the database on that server
GS_BUCKET the name of the bucket that the resulting file will be saved to ie. gs://starchup-sql-exports
