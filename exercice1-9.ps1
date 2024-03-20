#=====================================================
#
#NAME: Exercice 1-9.ps1
#AUTHOR: Oeillard Alexandre
#DATE:20/03/2024
#
#VERSION 1.0
#COMMENTS: Parcourir le fichier "services.csv"
#COMMENTS: Et afficher en vert les services actifs
#=====================================================

$fichierservs = "C:\Users\Administrateur.LOCAL\contextecubsituation8\Services.csv"

# Vérifier si le fichier existe
if (-Not (Test-Path $fichierservs)) {
    Write-Host "Le fichier '$fichierservs' n'existe pas." -ForegroundColor Red
    exit
}

# Lire le fichier CSV
$services = Import-Csv -Path $fichierservs

# Parcourir chaque service
foreach ($serv in $services) {
    $nomService = $serv.Name
    $statusService = $serv.Status

    # Vérifier si le nom du service contient "system"
    if ($nomService -match "system") {
        # Changer la couleur du texte en vert pour les services contenant "system"
        Write-Host "$nomService - $statusService" -ForegroundColor Green
    }
}
