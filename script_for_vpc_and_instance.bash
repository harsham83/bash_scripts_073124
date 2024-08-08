#!/bin/bash

# create-aws-vpc

#variables used in script:
availabilityZone="ap-northeast-2"
name="vpc_created_with_script"
vpcName="$name VPC"
subnetName="$name Subnet"
gatewayName="$name Gateway"
routeTableName="$name Route Table"
securityGroupName="$name Security Group"
vpcCidrBlock="172.0.0.0/18"
subNetCidrBlock="172.0.0.0/27"
#port22CidrBlock="0.0.0.0/0"
#destinationCidrBlock="0.0.0.0/0"

echo "Creating VPC..."
#create vpc with cidr block /18
aws_response=$(aws ec2 create-vpc \
 --cidr-block "$vpcCidrBlock" \
 --output json)
vpcId=$(echo -e "$aws_response" |  /usr/bin/jq '.Vpc.VpcId' | tr -d '"')