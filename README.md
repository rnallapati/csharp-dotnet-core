This docker-compose.yml file and Dockerfile will create a container for dotnet 7.0 sdk based web site.  
  
You should be able to see Hello World! in http://localhost:8081/
  
There's already a sample application in /app/ folder.  The sample application was generated as a place holder by typing this:  

docker exec -it csharp-web bash  
dotnet new web --name HelloWorld -o .  
dotnet new gitignore  

The app/Properties/launchSettings.json file has been updated to limit to only development with specific port listening to all ips (and not just localhost):

```javascript
{
  "profiles": {
    "http": {
      "commandName": "Project",
      "dotnetRunMessages": true,
      "launchBrowser": true,
      "applicationUrl": "http://0.0.0.0:5000",
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development"
      }
    }
  }
}
```