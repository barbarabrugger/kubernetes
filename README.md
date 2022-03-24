# Kubernetes Tutorial (the native web)

## Link zum Tutorial

https://www.youtube.com/watch?v=1SaPfm96lY4&t=700s&ab_channel=thenativewebGmbH

## Anbieter von Kubernetes Cluster Lösungen

|   |Vorteile|Nachteile||
|---|---|---|---|
|AWS|Grösster Funktionsumfang|Preis, Firmenphilosophie|[Website](https://azure.microsoft.com/de-de/)|
|Azure|Nahtlose Integration mit weiteren MS Produkten|Preis(?)|[Website](https://aws.amazon.com)|
|Digital Ocean|Preis im Vergleich mit AWS/Azure|Keine Server in der Schweiz, Stabilität|[Website](https://www.digitalocean.com/)|
|Google Cloud Platform|Preis bei Pay-as-you-go Lösungen|Keine dedizierten Schweizer Server|[Website](https://cloud.google.com/)|

## Tools

### CLI

### kubectl

kubectl wird benötigt um den Cluster via Kommandozeile zu steuern | [Download](https://kubernetes.io/de/docs/tasks/tools/install-kubectl/)

Die Konfigurationsdatei für die Verbindung zur Cloud kann beim jeweiligen Cloudanbieter heruntergeladen und im Userverzeichnis /.kube hinterlegt werden.

### dotctl

CLI für Digital Ocean | [Download](https://docs.digitalocean.com/reference/doctl/)

### az

CLI für Microsoft Azure | [Download](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

### aws

CLI für Amazon Web Services | [Download](https://aws.amazon.com/de/cli/)

### gcloud

CLI für Google Cloud Platform | [Download](https://cloud.google.com/sdk/gcloud)

### VSCode Plugins

- Kubernetes (von Microsoft) unterstützt (ein wenig) beim Schreiben von Manifestdateien. | [Download](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools)
- TODO: Weitere Plugins rund um Kubernetes sind verfügbar, sollten mal angeschaut werden...

## Befehle

### kubectl get

#### Alle Ressourcen eines Typs anzeigen

`kubectl get [pods|namespaces|services|certificates|...]`

#### Mehr Informationen zu Ressourcen anzeigen

`kubectl get [RESSOURCENTYP] -o wide`

#### Alle Ressourcen aus einem bestimmten Namespace anzeigen

`kubectl get [RESSOURCENTYP]  --namespace [NAMESPACE]`

#### Informationen zu einer einzelnen Ressource anzeigen

`kubectl describe [RESSOURCETYPE] [RESSOURCENAME]`

### Konfiguration anpassen

`kubectl apply -f [PFAD ZU MANIFESTDATEI]`

## Cluster-Konfiguration

Kubernetes wird in der Regel deklarativ aufgesetzt, der Zielzustand wird in mehreren Manifesten in Form von .yaml-Files deklariert.

Es ist auch möglich via CLI die Konfiguration mit Befehlen anzupassen, z.B.:

`kubectl create namespace [NAMESPACE]` (erstellt einen Namespace mit dem angegebenen Namen)

Dies ist jedoch nicht empfehlenswert!

## Ingress/Nginx konfigurieren

```console
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/do/deploy.yaml`
```

Das Manifest ist spezifisch für Digital Ocean, es existieren aber vordefinierte Manifeste für alle grossen Plattformen.

## HTTPS einrichten

Zertifikats-Manager installieren

```console
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.1/cert-manager.yaml
```

## Weitere Themen

- Kubernetes und Persistenz (Persistent Volumes)
- Umgang mit Credentials/Config Maps/weitere Konfigurationsparameter
- Jobs (einmalig) und Cron Jobs (periodisch)
- Authentifizierung (RBAC)
- Monitoring (Prometheus, Grafana, ...)
