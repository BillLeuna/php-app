# PHP App Example

## Requirements To Run Test
1. Composer
2. PHP7
3. PHP Sockets Extensions Installed


## Video Processing and RabbitMQ
#### Overview
The services shows a basic example of how to create a service for processing videos with RabbitMQ.

#### How To Run
1. Ensure RabbitMQ is installed and running locally
3. Run `composer install` to install required packages
4. Open up two tabs in your console
5. In one tab, run `php server.php`
6. In the other tab, run `php client.php`

## Source
<https://github.com/ProdigyView-Toolkit/Microservices-Examples-PHP>


---
---
---

# Edit README


## DEV
This application use [vscode devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) for building dev environnement.   
Devcontainer will build and launch php & rabbitmq containers.  
It will map current source dir inside /workspace and src/ iniside /var/www/html.   
VsCode terminal is opened inside the php-app container.  
Application is available on <http://localhost:8080>  
Rabbitmq management UI is available on <http://localhost:15672> with guest/guest credentials. 

## "PROD"
```
git clone <...>
docker compose up -d 
```
Application is available on <http://localhost:8080>  
Rabbitmq management UI is available on <http://localhost:15672> with guest/guest credentials.    
:Warning: You MUST exit devcontainer before launching the "docker compose up" command.

## APP
On the first tab <http://localhost:8080/server.php>,    
On the second tab <http://localhost:8080/client.php>, 
Few seconds later, video.mov will be available inside /var/www/html (in src/ directory in dev mode)
You can download it on <http://localhost:8080/video.mov>
