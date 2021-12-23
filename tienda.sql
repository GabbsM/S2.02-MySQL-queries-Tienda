1.Llista el nom de tots els productos que hi ha en la taula producto.
 
    SELECT NOMBRE FROM PRODUCTO;

2.Llista els noms i els preus de tots els productos de la taula producto.

    SELECT NOMBRE,PRECIO FROM PRODUCTO;

3.Llista totes les columnes de la taula producto.

    SELECT * FROM PRODUCTO;

4.Llista el nom dels productos, el preu en euros i el preu en dòlars estatunidencs (USD).

    SELECT NOMBRE, PRECIO, PRECIO*1.13 AS 'PRECIO EN DÓLARES' FROM PRODUCTO;

5.Llista el nom dels productos, el preu en euros i el preu en dòlars estatunidencs (USD). 
  Utilitza els següents àlies per a les columnes: nom de producto, euros, dolars.

    SELECT NOMBRE, PRECIO AS 'EUROS', PRECIO*1.13 AS 'DÓLARES' FROM PRODUCTO;

6.Llista els noms i els preus de tots els productos de la taula producto, convertint els noms a majúscula.

    SELECT upper(NOMBRE) , PRECIO FROM PRODUCTO;

7.Llista els noms i els preus de tots els productos de la taula producto, convertint els noms a minúscula.

    SELECT LOWER(NOMBRE) , PRECIO FROM PRODUCTO;

8.Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui 
  en majúscules els dos primers caràcters del nom del fabricant.

    SELECT NOMBRE,UPPER(left(NOMBRE,2)) FROM FABRICANTE;

9.Llista els noms i els preus de tots els productos de la taula producto, arrodonint el valor del preu.

    SELECT NOMBRE, round(PRECIO) FROM PRODUCTO;

10. Llista els noms i els preus de tots els productos de la taula producto, truncant el valor del preu
    per a mostrar-lo sense cap xifra decimal.

    SELECT NOMBRE, round(PRECIO) FROM PRODUCTO;

11.lista el codi dels fabricants que tenen productos en la taula producto.

    SELECT CODIGO_FABRICANTE FROM PRODUCTO;

12.Llista el codi dels fabricants que tenen productos en la taula producto, eliminant els codis que apareixen
   repetits.

   SELECT DISTINCT CODIGO_FABRICANTE FROM PRODUCTO;

13.Llista els noms dels fabricants ordenats de manera ascendent.

    SELECT NOMBRE FROM FABRICANTE ORDER BY NOMBRE;
    
14.Llista els noms dels fabricants ordenats de manera descendent.

    SELECT NOMBRE FROM FABRICANTE ORDER BY NOMBRE desc;

15.Llista els noms dels productos ordenats en primer lloc pel nom de manera ascendent i en segon lloc 
   pel preu de manera descendent.

    SELECT nombre,precio from Producto order by nombre asc, precio desc;

16.Retorna una llista amb les 5 primeres files de la taula fabricante.

    SELECT * FROM fabricante LIMIT 0, 5;

17.Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.

    SELECT * FROM fabricante LIMIT 3,2;

18.Llista el nom i el preu del producto més barat. (Utilitzi solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY

    SELECT nombre,precio FROM PRODUCTO order by precio ASC LIMIT 0,1;

19.Llista el nom i el preu del producto més car. (Utilitzi solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.

    SELECT nombre,precio FROM PRODUCTO order by precio DESC LIMIT 0,1;

20.Llista el nom de tots els productos del fabricant el codi de fabricant del qual és igual a 2.

    select * from producto where codigo_fabricante = 2;

21.Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.

    SELECT * FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO

22.Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordeni el resultat pel nom del fabricador, per ordre alfabètic.

    select producto.nombre, producto.precio,fabricante.nombre from producto INNER JOIN fabricante on producto.codigo_fabricante = fabricante.codigo order by fabricante.nombre;

23.Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.

    select producto.nombre, producto.codigo,fabricante.codigo,fabricante.nombre from producto INNER JOIN fabricante on producto.codigo_fabricante = fabricante.nombre or producto.nombre = fabricante.codigo;

24.Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.

    select producto.nombre, producto.precio,fabricante.nombre from producto INNER JOIN fabricante on producto.codigo_fabricante = fabricante.codigo order by precio asc LIMIT 0,1;

25.Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.

    select producto.nombre, producto.precio,fabricante.nombre from producto INNER JOIN fabricante on producto.codigo_fabricante = fabricante.codigo order by precio desc LIMIT 0,1;

26.Retorna una llista de tots els productes del fabricador Lenovo.

    SELECT PRODUCTO.NOMBRE,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO WHERE FABRICANTE.NOMBRE = 'LENOVO';

27.Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200€.

    SELECT PRODUCTO.NOMBRE,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO WHERE FABRICANTE.NOMBRE = 'CRUCIAL' AND PRODUCTO.precio > 200;
    
28.Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar l'operador "IN".

    SELECT PRODUCTO.NOMBRE,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO GROUP BY FABRICANTE.NOMBRE having FABRICANTE.NOMBRE = 'ASUS' OR FABRICANTE.NOMBRE =  ' SEAGATE ' OR FABRICANTE.NOMBRE = 'Hewlett-Packard';

29.Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Utilitzant l'operador IN.

    SELECT PRODUCTO.NOMBRE,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE   ON CODIGO_FABRICANTE = FABRICANTE.CODIGO WHERE FABRICANTE.NOMBRE IN ('ASUS','SEAGATE','Hewlett-Packard');


30.Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.

  SELECT PRODUCTO.NOMBRE,PRODUCTO.PRECIO,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO  WHERE FABRICANTE.NOMBRE LIKE '%E';

31.Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.

    SELECT PRODUCTO.NOMBRE,PRODUCTO.PRECIO,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO WHERE FABRICANTE.NOMBRE LIKE '%W%';

32.Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180€. Ordeni el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom (en ordre ascendent)

    SELECT PRODUCTO.NOMBRE,PRODUCTO.PRECIO,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO WHERE PRECIO > 180 ORDER BY PRECIO desc,PRODUCTO.NOMBRE asc;


33.Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.

    SELECT PRODUCTO.NOMBRE,FABRICANTE.NOMBRE FROM PRODUCTO INNER JOIN FABRICANTE ON CODIGO_FABRICANTE = FABRICANTE.CODIGO;

34.Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.

    SELECT FABRICANTE.NOMBRE, PRODUCTO.NOMBRE FROM FABRICANTE INNER JOIN PRODUCTO ON FABRICANTE.CODIGO = PRODUCTO.CODIGO_FABRICANTE where PRODUCTO.NOMBRE IS NOT NULL OR PRODUCTO.NOMBRE IS NULL;

35.Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.

    SELECT * FROM tienda.fabricante where codigo = 8 or codigo = 9;

36.Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).

    select producto.nombre,fabricante.nombre from producto right JOIN fabricante on producto.codigo_fabricante = fabricante.codigo where FABRICANTE.NOMBRE = 'LENOVO';

37.Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricador Lenovo. (Sense utilitzar INNER JOIN).

    select producto.nombre,producto.precio,fabricante.nombre from producto right JOIN fabricante on producto.codigo_fabricante = fabricante.codigo where PRODUCTO.PRECIO> 559;

38.Llista el nom del producte més car del fabricador Lenovo.

    select producto.nombre,producto.precio,fabricante.nombre from producto right JOIN fabricante on producto.codigo_fabricante = fabricante.codigo where FABRICANTE.NOMBRE = 'LENOVO' order by producto.precio desc limit 0,1;

39.Llista el nom del producte més barat del fabricant Hewlett-Packard.

    select producto.nombre,producto.precio,fabricante.nombre from producto right JOIN fabricante on producto.codigo_fabricante = fabricante.codigo where FABRICANTE.NOMBRE = 'Hewlett-Packard' order by producto.precio asc limit 0,1;

40.Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricador Lenovo.

    select producto.nombre,producto.precio,fabricante.nombre from producto right JOIN fabricante on producto.codigo_fabricante = fabricante.codigo where PRODUCTO.PRECIO>= 559;

41.Llesta tots els productes del fabricador Asus que tenen un preu superior al preu mitjà de tots els seus productes.
    
    select producto.nombre,producto.precio,fabricante.nombre  from producto right JOIN fabricante on producto.codigo_fabricante = fabricante.codigo having FABRICANTE.NOMBRE = 'ASUS' or producto.precio > avg(producto.precio);

    
