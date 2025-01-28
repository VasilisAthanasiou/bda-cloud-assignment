# Εργασία Μαθήματος "Προγραμματισμός και Υποδομές Μεγάλων Δεδομένων: Python και Νεφοϋπολογιστική"

## Μέρος Υπολογιστικών Νεφών

Η παρούσα εργασία αποτελείται απο 2 αρχεία:
- Dockerfile
- docker-compose.yaml

### Dockerfile και εφαρμογή
Αυτό το `Dockerfile` εξυπηρετεί στη δημιουργία ενός image μιας εφαρμογής Next.js την οποία μπορείτε να δείτε στο [repository](https://github.com/VasilisAthanasiou/appwrite-workshop/tree/self-hosted) μου κάτω απο το branch `self-hosted`.

Αυτή η εφαρμογή συνδέεται με το [Appwrite](https://appwrite.io/), το οποίο χρησιμοποιείται για το authentication της εφαρμογής (register, login). Η εφαρμογή έχει και λειτουργία για upload εικόνων στο storage του `appwrite`, αλλα αυτή η λειτουργία δεν δουλεύει στο container, και δεν μπόρεσα να την διορθώσω.

Εκτελώντας την εντολή: `docker build -t vasath/msc-bda-cloud-assignment:latest .` στο ίδιο directory που βρίσκεται το `Dockerfile` και το `Next.js app`, γίνεται build το image της εφαρμογής. Στη συνέχεια εκτελώ `docker push vasath/msc-bda-cloud-assignment:latest` για να κάνω push το image στο [dockerhub](https://hub.docker.com/repository/docker/vasath).

### docker-compose.yaml
Αφού ανέβει το image στο dockerhub, αρκεί να τρέξετε την εντολή `docker compose up` για να γίνει pull το image απο το dockerhub και να τρέξει η εφαρμογή στο [http//localhost:3000](https://hub.docker.com/repository/docker/vasath).