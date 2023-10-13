# Documentation du Projet

## Prérequis
Assurez-vous d'avoir les éléments suivants installés sur votre ordinateur avant de tester l'application :

- Docker : [Instructions d'installation Docker](https://docs.docker.com/get-docker/)

## Instructions d'utilisation

1. Clonez ce dépôt sur votre ordinateur en utilisant la commande suivante :
   ```bash
   git clone https://github.com/jredel/php-app.git

2. Accédez au répertoire du projet : 
    cd php-app 

3. Exécutez la commande suivante pour construire l'image Docker de l'application (assurez-vous que Docker est en cours d'exécution) :
    docker build -t image_leuna .

4. Une fois que l'image Docker est construite, utilisez Docker Compose pour lancer l'application et RabbitMQ avec la commande suivante :
    docker-compose up

5. Vous pouvez maintenant accéder à l'application dans votre navigateur en visitant l'adresse
    http://localhost:8080

6. Pour arrêter l'application, ouvrez un terminal et exécutez la commande suivante dans le répertoire du projet :
    docker-compose down


Notes supplémentaires
L'application utilise RabbitMQ pour la gestion des files d'attente. RabbitMQ est exécuté dans un conteneur Docker distinct, et l'application se connecte à RabbitMQ en utilisant le nom du service du conteneur (dans ce cas, "php-app-rabbitmq-1").

Les dépendances PHP sont gérées avec Composer. Le Dockerfile installe Composer et utilise Composer pour installer les dépendances de l'application.

Si vous rencontrez des problèmes lors de l'exécution de ces commandes, assurez-vous que Docker est correctement installé et en cours d'exécution.

Assurez-vous d'avoir une connexion Internet active, car l'application peut télécharger des dépendances pendant le processus de construction.