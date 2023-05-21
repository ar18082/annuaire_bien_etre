installation : 

1. Cloner le dépôt GitHub : Ouvrez un terminal ou une ligne de commande sur votre machine et utilisez la commande suivante pour cloner votre dépôt GitHub :

```
git clone https://github.com/ar18082/annuaire_bien_etre.git
```

Assurez-vous d'avoir Git installé sur votre machine.

2. Accéder au répertoire du projet : Utilisez la commande `cd` pour accéder au répertoire du projet nouvellement cloné :

```
cd annuaire_bien_etre
```

3. Installer les dépendances : 
```
composer install

```


4. Configurer l'environnement : 
    Pour configurer une base de données MySQL pour votre projet, vous pouvez suivre les étapes suivantes :

    4.1. Assurez-vous d'avoir MySQL installé sur votre machine. Si ce n'est pas le cas, installez MySQL en suivant les instructions spécifiques à votre système d'exploitation.

    4.2. Créez une nouvelle base de données : Ouvrez un client MySQL, tel que MySQL Workbench ou utilisez la ligne de commande `mysql`, et créez une nouvelle base de données pour votre projet. Vous pouvez utiliser la commande suivante :

    ```
    CREATE DATABASE nom_de_la_base_de_donnees;
    ```

    Assurez-vous de remplacer `nom_de_la_base_de_donnees` par le nom que vous souhaitez donner à votre base de données.

    4.3. Configurez les informations de connexion à la base de données dans votre projet : Généralement, les informations de connexion à la base de données se trouvent dans le fichier `.env` ou dans un fichier de configuration similaire. Ouvrez ce fichier dans votre projet et recherchez les paramètres de configuration liés à la base de données.

    Voici un exemple de configuration dans le fichier `.env` :

    ```
    DATABASE_URL=mysql://utilisateur:mot_de_passe@localhost:3306/nom_de_la_base_de_donnees
    ```

    Remplacez `utilisateur` par le nom d'utilisateur MySQL, `mot_de_passe` par le mot de passe associé à cet utilisateur, `localhost` par l'adresse du serveur MySQL (peut être différente si votre base de données est hébergée sur un autre serveur) et `nom_de_la_base_de_donnees` par le nom de la base de données que vous avez créée.

    4.4. Importez les datas :
        4.4.1. Dans la page de la base de données, recherchez l'onglet "Import" (ou "Importer" selon la langue de votre interface) dans la barre de navigation supérieure.

        4.4.2. Dans la section "Fichier à importer", cliquez sur le bouton "Parcourir" (ou "Choisir un fichier") et sélectionnez le fichier annuaire_bien_etre.sql contenant les données que  vous souhaitez importer dans votre base de données.

        4.4.3 Vérifiez que les autres paramètres d'importation sont corrects. Par défaut, phpMyAdmin détecte automatiquement les paramètres appropriés en fonction du fichier SQL. Vous pouvez également modifier les options d'importation selon vos besoins.

        4.4.4 Cliquez sur le bouton "Exécuter" (ou "Importer") pour commencer le processus d'importation. PhpMyAdmin traitera le fichier SQL et importera les données dans votre base de données.

        4.4.5 Une fois l'importation terminée, vous devriez voir un message de confirmation indiquant que l'importation a été réussie. Vous pouvez maintenant accéder à votre base de données et vérifier les données importées. 


5. Lancer l'application : 
    Assurez-vous d'avoir Symfony installé sur votre machine. Si ce n'est pas le cas, vous pouvez l'installer en suivant les instructions spécifiques à votre système d'exploitation depuis le site officiel de Symfony (https://symfony.com/download).

    Ouvrez un terminal ou une ligne de commande et accédez au répertoire de votre projet Symfony en utilisant la commande cd :

    cd /chemin/vers/votre/projet
    Assurez-vous de remplacer /chemin/vers/votre/projet par le chemin réel vers le répertoire de votre projet Symfony.

    Lancez le serveur web intégré de Symfony en exécutant la commande suivante :

    symfony server:start
    Cela démarrera le serveur web intégré et affichera les informations de connexion, y compris l'URL où votre application sera accessible 
    (par exemple, http://127.0.0.1:8000).

    Accédez à l'URL fournie dans votre navigateur pour voir votre application Symfony en cours d'exécution.

    Cela lancera un serveur PHP intégré et votre application sera accessible à l'adresse `http://localhost:8000`.
