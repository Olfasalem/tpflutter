# Utilisez une image de base avec Flutter pré-installé
FROM cirrusci/flutter:stable

WORKDIR /app

# Copiez les fichiers pubspec.yaml pour résoudre les dépendances Flutter
COPY pubspec.yaml .
COPY pubspec.lock .

# Exécutez flutter pub get pour obtenir les dépendances
RUN flutter pub get

# Copiez le reste des fichiers
COPY . .

# Exécutez la commande de build Flutter (pour Android)
RUN flutter build apk --release

# Définissez le point d'entrée pour l'exécution de l'application
ENTRYPOINT ["flutter", "run", "--release"]
