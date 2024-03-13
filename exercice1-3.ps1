#=====================================================
#
#NAME: Exercice 1-3.ps1
#AUTHOR: Oeillard Alexandre
#DATE:13/03/2024
#
#VERSION 1.0
#COMMENTS: Afficher les processus "svchost" en activité avec leur Id, ProcessName, Description
#
#=====================================================

Get-Process -ProcessName svchost* | Format-Table Id,ProcessName, Description
