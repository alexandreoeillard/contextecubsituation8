#=====================================================
#
#NAME: Exercice 1-5.ps1
#AUTHOR: Oeillard Alexandre
#DATE:13/03/2024
#
#VERSION 1.0
#COMMENTS: Afficher le processus choisi d'être affiché par l'utilisateur à l'aide d'une fonction
#
#=====================================================

function InfoProcessus($pro)
{
Write-Host "Affichage de l'Id, ProcessName et Description des processus contenant: $pro"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$pro*"}
$processus | Format-Table Id, Name, Description
}
$pro=Read-Host "Quel processus désirez vous filtrer?" 
InfoProcessus($pro)