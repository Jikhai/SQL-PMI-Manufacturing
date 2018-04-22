/* gives a list of opportunities, won, lost and ongoing*/
SELECT  CLCTNOM, OPCTPRIOR "Priorité", CLCTSEGMAR "Secteur d'activité",  OPCNMT "CA Potentiel", OPCTDESIG "Remarque", OPCTSTATUT " Statut" 
FROM OPPORTUN o
LEFT JOIN CLIENT = ON CLKTCODE=OPCTCODE
WHERE OPKTSOC=/*society number*/ AND CLKTSOC=/*society number*/;