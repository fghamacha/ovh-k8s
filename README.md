Ce code permet de créer un cluster K8S sur OV Cloud public : 

# A. Prerequisite :

1. Avoir un projet public sur ovh Public CLoud
2. Avoir un vRack attaché au projet 
3. Créer un réseau privé et attaché un gateway à ce réseau privé
4. Générer des identifiants depuis la page https://www.ovh.com/auth/api/createToken?GET=/*&POST=/*&PUT=/*&DELETE=/*
5. Crée un fichier terraform.tfvard pour stocker les varialbes suivantes :

```
OVH_APPLICATION_KEY   = "à renseigner"
OVH_APPLICATION_SECRET = "à renseigner"
OVH_CONSUMER_KEY       = "à renseigner"
```



# B. Commandes :  

Initier le projet terraform cluster k8s et télécharger le plugin ovh terraform avec : 

`terraform inti`


`terraform plan`

Appliquer le code terrform

`terraform apply`

extraire le fichier de config de k8s : 

```
terraform output -raw kubeconfig > /Users/<your-user>/.kube/my_kube_cluster.yml
 you can use it directly in the kubectl command with --kubeconfig option
```
