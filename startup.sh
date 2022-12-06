#!/bin/bash
export $(grep -v '^#' /opt/app/.env | xargs)
java -jar "/opt/app/fileshare.jar"
