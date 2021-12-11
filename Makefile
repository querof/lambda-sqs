
deploy:
	zip lambda-sqs.zip ./src/*
	aws s3 cp lambda-sqs.zip s3://querof-labmbda-bucket/
	sam deploy --guided --template-file cloudformation.yaml  --force-upload --config-file  samconfig.toml
   