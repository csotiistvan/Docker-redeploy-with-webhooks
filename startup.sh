#!/bin/bash
export $(grep -v '^#' .env | xargs)
java -jar "/opt/app/fileshare.jar"
