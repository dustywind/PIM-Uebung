-- SELECT      g.Name, z.Bezeichnung, z.IstVegetarisch
-- FROM        Rezept AS r JOIN Gericht AS g ON g.RefNum = r.GerichtId
            --JOIN Zutat AS z ON z.BestNum = r.ZutatId
--;


SELECT      RefNum, Name 
FROM        Gericht
WHERE       Gericht.RefNum NOT IN
            (
                SELECT  DISTINCT r.GerichtID
                FROM    Rezept r
                        LEFT OUTER JOIN 
                        (
                            SELECT  z.BestNum
                            FROM    Zutat AS z
                            WHERE   z.IstVegetarisch = 1
                        ) AS x
                        ON r.ZutatId = x.BestNum
                WHERE   x.BestNum IS NULL
            )
;

