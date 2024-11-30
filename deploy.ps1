Write-Host "Starting deployment of Mohammed Omer's application..."

Remove-Item -Recurse -Force build/*
Write-Host "Cleaned up old build files."

Write-Host "Building the project..."
Invoke-Expression "dotnet build --configuration Release"

Write-Host "Packaging application..."
Compress-Archive -Path build/* -DestinationPath MohammedOmerApp.zip

Write-Host "Deploying to production server..."
scp -i ~/.ssh/id_rsa MohammedOmerApp.zip user@server:/var/www/html

Write-Host "Deployment successful!"

