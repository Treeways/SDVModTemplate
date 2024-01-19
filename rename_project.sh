#!/bin/bash

# This script only works the first time you use it with the template.
# You can still manually rename the project later.

MOD_NAME="YourModNameHere"

dotnet sln remove SDVModTemplate
sed -i -e "s/SDVModTemplate/${MOD_NAME}/g" ./SDVModTemplate/ModEntry.cs
mv SDVModTemplate/SDVModTemplate.csproj "SDVModTemplate/${MOD_NAME}.csproj"
mv SDVModTemplate $MOD_NAME
mv SDVModTemplate.sln "${MOD_NAME}.sln"
dotnet sln add ./${MOD_NAME}

echo "Please edit the manifest.json!"
