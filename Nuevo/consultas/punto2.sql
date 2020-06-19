/*
b2) Elaborar una consulta SQL que genere un listado que contenga todas las combinaciones 
autor-tema indicando cuantas publicaciones tiene el autor sobre ese tema, si no tiene ninguna 
poner 0 (cero) ordenar por autor y cantidad de publicaciones.
NOMBREAUTOR APELLIDOAUTOR TEMA CANTIDAD
*/

select nombre, apellido, tema, count(*) as 'CantTema', autor 
from noticia_mod, usuario_mod, usuario_actual
where autor = usuario_actual.idusuario_actual
and usuario_actual.id_usuario = usuario_mod.id
group by nombre, apellido, tema
order by nombre, apellido, CantTema desc