# Recette de conditionnement (packaging)

Donc dans ce répertoire:
* `REGENERER_WILDFLY_EXECUTABLE.bat` : est un script MS-DOS qui permet de ré-générer un executable Windows, à partir d'un jar exécutable (comprenant un `META-ONF/MANIFEST.MF`, avcec attribut `Main-class`). L'idée est que cet exécutable Windows permet d'exécuter l'application java que cosntitue le serveur Jee [Wildfly](http://wildfly.org/), alias "JBoss EAP". L'exécution est configurée par le fichier un fichier ini, et l'exécutable lui-même est construit à partir d'un fichier image jpg et un fichier icône,  respectivement pour icône windows de l'exécutable, et splash screen. L4idée est de packager [Wildfly](#) pour que son processus d'exécution apparaisse sous le nom d'une appliation Jee que je développe, comme l'application emlbarquait le serveur Jee entier. Ce pourrait être un mode de distribution de Wildfly, mais à priori en prod, dcoker est bien plsu indiqué, cela pourrait seuelemtn servir pour de l'éducatif/documentaire.
* `test-setup2.bat` : Un petit d'exmple simple d'utilisation de WinRun4J, pour conditionner (package) une appli java:
  * pour une cible de déploiement Windows
  * qui ne s'exécute pas en tant que service, mais à la demande, dans la cible de déploiement Windows.


# TODOs

## .NET C#

Pour faire le packaging, ré-écrire le code source complet de WinRun4J, pour pouvoir assurer son support sur les versions futures de la plateforme Windows.

## CI /CD

Ce packager devra ensuite être transformé en plugin maven , et en compsoant de ligne de production kytes,sur le périmèttre de conditionnement des applications pour leur cible de déploiement.

Sera donc utilisé pour automatiser la production d'artefact de provision pour les applications java s'exécutant sur plateforme Windows.  
Ce cas est relativement rare, et correspond en général aux applications Java utilisées par des "`utilisateurs non-IT`".

