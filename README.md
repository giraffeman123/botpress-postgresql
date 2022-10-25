# botpress-cicd-example

This repo showcases how you can build a Docker image running Botpress and use versioned files as bot definitions.

## How it works
All files in the `data/` folder are baked in the Docker image. 
Upon startup, the Docker container will launch Botpress and issue a `bp push` command to send contents of the `data/` folder to the Postgres database. 

## Building the Docker image
`docker build -t yourimage .`

## Running the Docker container
`docker run -d -e BPFS_STORAGE=database -e DATABASE_URL="postgres://pgusername:pgpassword@pghost:pgport/dbname" -e AUTO_MIGRATE=true -e CI_EMAIL=ci_email -e CI_PASSWORD=ci_password yourimage`

Note the "ci_email" account must be an administrator in Botpress.
