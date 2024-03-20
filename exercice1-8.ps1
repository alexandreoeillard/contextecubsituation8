#=====================================================
#
#NAME: Exercice 1-7.ps1
#AUTHOR: Oeillard Alexandre
#DATE:13/03/2024
#
#VERSION 1.0
#COMMENTS: Afficher les processus actifs ou éteinds aux démarrage
#COMMENTS: Et enregistrer le résultat dans un fichier (csv)
#=====================================================

function InfoService($serv)
{
Write-Host "Affichage du nom, de la description et du status des Services en état $serv du système."
$service = Get-Service | Where-Object {$_.Status -like "*$serv*"}
$service | Format-Table Name, Description, Status
}

$serv=Read-Host "Quel état de service désirez vous filtrer? Running/Stopped" 
InfoService($serv)