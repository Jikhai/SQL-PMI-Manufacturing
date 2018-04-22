/* gives a list of what must be produced, for who on a specific activity*/

SELECT ECCTNOM "Client", ECKTNUMERO "N°Commande",LCCTREFCDE "Ref.Commande",ECCJCRE "Date",LCCTCODART "Code Article", LCCTLIB01 "Libellé 1", LCCTLIB02 "Libellé 2",
LCCTCONDIT "Cond.",LCCNQTECDE "qte/unité stockage",ARCNPCECON "article/unité stockage", LCCSDELEXP "Délais", LCCNPDSCDE "poids total commandé"
FROM ECOMCLI 
LEFT JOIN LCOMCLI ON ECKTNUMERO=LCKTNUMERO
LEFT JOIN ARTICLE ON  LCCTCODART=ARKTCODART
WHERE ECKTSOC=/*society number*/ AND LCKTSOC=/*society number*/ AND ARKTSOC=/*society number*/ AND ARCTSECART=/*Activity*/ AND ARKTCODART NOT LIKE /*stuff to exclude*/;