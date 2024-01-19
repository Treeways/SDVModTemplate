#!/bin/bash

#####
# Enter your project's current name here.
CURRENT_MOD_NAME="SDVModTemplate"

# Enter your new project name here.
MOD_NAME="YourProjectNameHere"
#####


dotnet sln remove $CURRENT_MOD_NAME
sed -i -e "s/${CURRENT_MOD_NAME}/${MOD_NAME}/g" ./${CURRENT_MOD_NAME}/ModEntry.cs
mv ${CURRENT_MOD_NAME}/${CURRENT_MOD_NAME}.csproj "${CURRENT_MOD_NAME}/${MOD_NAME}.csproj"
mv ${CURRENT_MOD_NAME} $MOD_NAME
mv ${CURRENT_MOD_NAME}.sln "${MOD_NAME}.sln"
dotnet sln add ./${MOD_NAME}

echo "Please edit the manifest.json!"
