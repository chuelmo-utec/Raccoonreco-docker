CREATE OR REPLACE FUNCTION public.vec_sub(arr1 double precision[], arr2 double precision[])
 RETURNS double precision[]
 LANGUAGE sql
 STRICT
AS $fun01$	
SELECT array_agg (result)
    FROM (SELECT (tuple.val1 - tuple.val2) * (tuple.val1 - tuple.val2)
        AS result
        FROM (SELECT UNNEST ($1) AS val1
               , UNNEST ($2) AS val2
               , generate_subscripts ($1, 1) AS ix) tuple
    ORDER BY ix) inn;
	
	$fun01$


CREATE OR REPLACE FUNCTION public.euclidian(arr1 double precision[], arr2 double precision[])
 RETURNS double precision
 LANGUAGE sql
AS $fun02$
select sqrt (SUM (tab.v)) as euclidian from (SELECT
     UNNEST (vec_sub (arr1, arr2)) as v) as tab;
	 $fun02$


CREATE TABLE IF NOT EXISTS public.face_table
(
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    face_embedding double precision[] NOT NULL,
    PRIMARY KEY (id)
);

