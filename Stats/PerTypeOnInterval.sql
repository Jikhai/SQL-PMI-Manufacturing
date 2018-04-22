/* Give a list of aticles produced during a specific time period on a specific activity, those are then listed by familiy*/

SELECT ARCTCODFAM "familiy", SUM (LCCNQTECDE) as "quantity"
FROM LEXPCLI
LEFT JOIN ARTICLE ON ARKTCODART=LCCTCODART

WHERE LCKTSOC=/*Society Number*/ AND ARKTSOC=/*Society Number*/ AND ARCTSECART=/*Type of activity*/
AND LCCJDEREX BETWEEN /*DATE*/ and /*DATE*/

/* This structure was needed for the original database as it does not support many date related functions properly.
CAST(CONCAT(CONVERT(char(10),"YEAR-X"),'-MM-DD') AS DATE) AND CAST(CONCAT(CONVERT(char(10),"YEAR-Y"),'-MM-DD') AS DATE)*/
  
GROUP BY ARCTCODFAM;