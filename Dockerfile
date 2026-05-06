# 1. Utiliser une image Python officielle légère
FROM python:3.9-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier des dépendances
COPY requirements.txt .

# 4. Installer les dépendances dans le conteneur
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copier tout le reste du code source
COPY . .

# 6. Exposer le port sur lequel l'app va tourner
EXPOSE 8000

# 7. Commande pour démarrer l'API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]