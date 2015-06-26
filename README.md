# docker-mm-aws-snapshot
Create an AWS snapshot based on the provided volume_id, description, and region

Run through the command:
docker run -e VOLUME_ID=$volume_id -e DESCRIPTION=$description -e REGION=$region rsmith/docker-mm-aws-snapshot