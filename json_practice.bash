#!/bin/bash

#json in bash always shall be represented in single quotes
sample='{
  "name": "John Doe",
  "age": 30,
  "email": "john.doe@example.com",
  "address": {
    "street": "123 Main St",
    "city": "New York",
    "state": "NY"
  }
}'

#jq library helps in parsing or understanding json for bash
name=$(echo "$sample" | jq -r '.name')
echo "priting any value of the key $name";

#printing nested json's key 
name_nested=$(echo "$sample" | jq -r '.address.city')
echo "printing nested json's key '.address''.city $name_nested"