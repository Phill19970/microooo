#!/bin/bash

# Function to run 'mvn clean package' in a given directory
function build_maven_project {
    echo "Building $1..."
    cd "$1" || return
    mvn package
    cd ..
    echo "Build for $1 complete!"
}

# List of project directories
projects=(
    "api-gateway"
    "appointment-service"
    "config-server"
    "expense-service"
    "medical-record-service"
    "registry-service"
    "user-service"
    "notification-service"
)


current_dir=$(pwd)


for project in "${projects[@]}"; do
    build_maven_project "$current_dir/$project"
done

echo "All projects have been built!"
