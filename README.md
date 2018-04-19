# Recette de conditionnement (packaging)

Ce repo contient, dans chacun des 3 répertoires `./builds-*`, une recette de build d'une application java:

* Qui doit s'exécuter sur Windows, et:
  * [`builds-java-exec-windows`] Qui doit s'exécuter à la demande de l'utilisateur (par un clic sur un raccourci Windows dans barre des tâches)
  * [`builds-java-dotnet-windows-service`] Qui doit s'exécuter en tant que service du système d'exploitation
  * [`builds-jboss-eap-exec-windows`] Une Application Java Jee, conditionnée dans un service Windows .NET ([code source](https://github.com/Jean-Baptiste-Lasselle/java-windows-dot-net-service-packaging),  avec son serveur Jee Wildfly, qui s'exécute en tant que service du système d'exploitation Windows.
* Qui doit s'exécuter sur Windows, en logguant dans le système natif de log système Windows, prévu pour le log des services (L'architecture Windows peut évoluer, je ne fais donc référence à aucun composant Windows particulier, poru ne garder que l'intention du produit). Cela, qu'il s'agisse d'une exécution en tant que service, ou d'une exécution à la demande.


# Dépendances

Pour réaliser l'automatisation de ce build, cette recette fait usage d'un [composant .Net Service Windows](https://docs.microsoft.com/fr-fr/dotnet/framework/windows-services/walkthrough-creating-a-windows-service-application-in-the-component-designer) 
* le [code source](https://github.com/Jean-Baptiste-Lasselle/java-windows-dot-net-service-packaging) de ce composant est télchargé
* le code source est compilé en ligne de commande automatisé, pour produire ledit service Windows.
* On peut aussi partir du composant déjà compilé.
* Il suffit ensuite d'utiliser le composant en changeant les valeurs des paramètres passés à l'exécution (par exemple en les chargeant d'un fichier ini), pour changer:
  * le chemin absolu du fichier jar exécutable
  * le chemin absolu de l'exécutable java.exe (ou le `JRE_HOME`)
  * la liste des paramètres à passer en paramètre de l'exécution `java -jar mon-application-packagee.jar` : options système la JVM (Memory, CPU), propriétés java etc...
  
# CI/CD

Doit devenir un composant de ligne de production Kytes, périmètre builds.

Donc dans ce répertoire:
* `REGENERER_WILDFLY_EXECUTABLE.bat` : est un script MS-DOS qui permet de ré-générer un executable Windows. L'idée est que cet exécutable Windows permet d'exécuter l'application java que cosntitue le serveur Jee [Wildfly](http://wildfly.org/), alias "JBoss EAP". L'exécution est configurée par le fichier un fichier ini, et l'exécutable lui-même est construit à partir d'un fichier image jpg et un fichier icône,  respectivement pour icône windows de l'exécutable, et splash screen. L4idée est de packager [Wildfly](#) pour que son processus d'exécution apparaisse sous le nom d'une appliation Jee que je développe, comme l'application emlbarquait le serveur Jee entier. Ce pourrait être un mode de distribution de Wildfly, mais à priori en prod, dcoker est bien plsu indiqué, cela pourrait seuelemtn servir pour de l'éducatif/documentaire.
* `test-setup2.bat` : Un petit d'exmple simple d'utilisation de WinRun4J, pour conditionner (package) une appli java:
  * pour une cible de déploiement Windows
  * qui ne s'exécute pas en tant que service, mais à la demande, dans la cible de déploiement Windows.
  
