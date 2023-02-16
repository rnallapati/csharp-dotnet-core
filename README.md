This docker-compose.yml file will create a container for dotnet 7.0 sdk based web site.  This is strictly for development purposes ONLY.
  
Run this:  
```
docker compose up --build -d && docker exec -it csharp-web dotnet watch  
```
You can see Hello World! in http://localhost:8081/  
  
There's already a sample application in /app/ folder.  The sample application was generated as a place holder by typing this:  

docker exec -it csharp-web bash  
dotnet new web --name HelloWorld -o .  
dotnet new gitignore  

The app/Properties/launchSettings.json file has been updated to limit to only development over http.  
The listening port is set to 5000.  
Instead of setting host name to localhost, it's set to all ips (0.0.0.0):  

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