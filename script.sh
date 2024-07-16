#!/bin/bash

#Database credentials

DB_NAME='wp9843065'
DB_USER='wpuser75774'
DB_PASSWORD='Nrf8kI9AxNXLVIO'
DB_HOST='localhost'

#Backup file name with date

BACKUP_FILE="${DB_NAME}$(date +'%Y%m%d%H%M%S').sql"

#Perform the database dump

mysqldump --user=$DB_USER --password=$DB_PASSWORD --host=$DB_HOST  $DB_NAME > $BACKUP_FILE

#Check if the command was successful

if [ $? -eq 0 ]; then
  echo "Database backup successful: $BACKUP_FILE"
else
  echo "Error creating database backup"
fi
