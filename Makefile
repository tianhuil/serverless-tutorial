config:
	serverless config credentials \
		--provider aws \
		--key `cat secrets/access_key_id.txt` \
		--secret `cat secrets/secret_access_key.txt`

new-service:
	serverless create --template aws-nodejs --path my-service

deploy-service:
	cd my-service && serverless deploy -v

remove-service:
	cd my-service && serverless remove

