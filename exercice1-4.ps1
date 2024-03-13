#=====================================================
#
#NAME: Exercice 1-2.ps1
#AUTHOR: Oeillard Alexandre
#DATE:13/03/2024
#
#VERSION 1.0
#COMMENTS: Afficher le processus choisi d'être affiché par l'utilisateur
#
#=====================================================
$proc=Read-Host "Quel processus désirez vous filtrer?" 
Get-Process -ProcessName $proc* | Format-Table Id,ProcessName, Description
