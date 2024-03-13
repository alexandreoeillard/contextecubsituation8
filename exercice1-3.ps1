#=====================================================
#
#NAME: Exercice 1-2.ps1
#AUTHOR: Oeillard Alexandre
#DATE:13/03/2024
#
#VERSION 1.0
#COMMENTS: Afficher les processus "svchost" en activité
#
#=====================================================

Get-Process -ProcessName svchost* | Format-Table Id,ProcessName, Description
