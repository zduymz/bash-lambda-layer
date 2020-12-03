#!/bin/bash -e

REGIONS=(
    "us-west-2"
)

LAYER_NAME="bash"

for region in ${REGIONS[@]}; do
    echo "Publishing layer to $region..."

    LAYER_ARN=$(aws lambda publish-layer-version --region $region --layer-name $LAYER_NAME --description "Bash in AWS Lambda" --compatible-runtimes provided.al2 --license MIT --zip-file fileb://export/layer.zip | jq -r .LayerVersionArn)
    
    echo $LAYER_ARN
    echo "$region complete"
    echo ""
done