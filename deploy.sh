#/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color




REGION="eu-central-1"
BUCKET_NAME="becomingabetterprogrammerin20easysteps"

echo -e "${GREEN}Deploying frontend to $BUCKET_NAME in $REGION${NC}"

aws s3 sync ./site/ "s3://$BUCKET_NAME" --region="$REGION" --profile javabin --delete