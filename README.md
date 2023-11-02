# Documentation d'Installation et de Contribution - Application CineBook

Bienvenue dans la documentation d'installation et de contribution pour l'application CineBook. Cette application Flutter utilise Firebase comme backend et offre une expérience fluide pour les utilisateurs. Cette documentation vous guidera à travers le processus d'installation, de configuration de Firebase et du déploiement de l'application sur les plateformes Android et iOS. De plus, elle explique le processus de contribution au projet.

## Installation

### Prérequis

- **Flutter et Dart :** Assurez-vous d'avoir Flutter et Dart installés sur votre système. Suivez les instructions sur le [site officiel de Flutter](https://flutter.dev/docs/get-started/install) pour l'installation.
  
- **Compte Firebase :** Vous devez avoir un compte Firebase. Créez un projet Firebase via la [console Firebase](https://console.firebase.google.com/) si vous n'en avez pas déjà un.

### Étapes d'Installation

1. **Clonage du Répertoire :** Clonez le répertoire de l'application depuis le dépôt GitHub :

    ```bash
    git clone https://github.com/Canal-Olympia-Project/mobile-app.git
    cd mobile-app
    ```

2. **Configuration de Firebase :**

    a. **Ajoutez votre projet Firebase :** Suivez les instructions Firebase pour ajouter votre projet à l'application Flutter. Vous pouvez trouver les instructions [ici](https://firebase.google.com/docs/flutter/setup?platform=flutter). (Vous pouvez ignorer les etapes à partir de l'etape 3 "Initialisez Firebase dans votre application")

    b. **Téléchargez les fichiers de configuration :** (Optionnel si vous bien suivi les instructions de l'étape a) 
    
    - Pour Android : Téléchargez le fichier `google-services.json` depuis votre console Firebase et placez-le dans le dossier `android/app`.
    
    - Pour iOS : Téléchargez le fichier `GoogleService-Info.plist` et placez-le dans le dossier `ios/Runner`.

3. **Récupération des Dépendances :** Exécutez la commande suivante dans le répertoire de votre projet pour récupérer les dépendances :

    ```bash
    flutter pub get
    ```

### Déploiement de la Version Release

#### Pour Android

1. **Génération de la Clé de Signature :** Exécutez la commande suivante pour générer la clé de signature pour Android :

    ```bash
    keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
    ```

    Suivez les instructions pour générer la clé. Une fois générée, placez le fichier `key.jks` dans le dossier `android/app`.

2. **Configuration du Fichier Gradle :** Modifiez le fichier `android/app/build.gradle` pour inclure les détails de votre clé de signature.

    ```gradle
    android {
        ...
        signingConfigs {
            release {
                storeFile file('key.jks')
                storePassword 'store-password'
                keyAlias 'key'
                keyPassword 'key-password'
            }
        }
        buildTypes {
            release {
                signingConfig signingConfigs.release
                ...
            }
        }
    }
    ```

3. **Génération de l'APK :** Exécutez la commande suivante pour générer l'APK de la version release :

    ```bash
    flutter build apk --release
    ```

    L'APK généré se trouvera dans le dossier `build/app/outputs/flutter-apk`.

#### Pour iOS

1. **Configuration du Profil de Distribution :** Dans Xcode, configurez le profil de distribution pour votre application.

2. **Génération du Package iOS :** Exécutez la commande suivante pour générer le package iOS de la version release :

    ```bash
    flutter build ios --release
    ```

    Le package iOS généré se trouvera dans le dossier `build/ios/archive/Runner.xcarchive`.

## Contribution au Projet

Nous accueillons toutes les contributions au projet CineBook. Voici comment vous pouvez contribuer :

1. **Fork :** Forkez ce repository vers votre compte GitHub.

2. **Clone :** Clonez le fork vers votre machine locale :

    ```bash
    git clone https://github.com/Canal-Olympia-Project/mobile-app.git
    cd mobile-app
    ```

3. **Créez une Branche :** Créez une branche pour votre contribution :

    ```bash
    git checkout -b nom-de-votre-branche
    ```

4. **Effectuez les Modifications :** Faites les modifications nécessaires et testez-les localement.

5. **Commit et Push :** Committez vos changements et poussez-les vers votre fork :

    ```bash
    git commit -m "Description de votre modification"
    git push origin nom-de-votre-branche
    ```

6. **Pull Request :** Créez une Pull Request sur le repository principal.

Notre équipe examinera votre contribution et la fusionnera si elle est conforme aux normes du projet.

---

Merci de contribuer à l'application CineBook! Si vous avez des questions ou des problèmes, n'hésitez pas à ouvrir un ticket dans la section des problèmes du repository.
