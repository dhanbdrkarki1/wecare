#!/bin/bash

folders=(
    "./assets"
    "./doctor"
    "./patient"
)

bucket="s3://web-app-dev-dhans3-test-bucket-0px4d783"

for folder in "${folders[@]}"; do
    aws s3 cp "$folder/" "$bucket/$(basename $folder)/" --recursive --profile cloudtech
done
