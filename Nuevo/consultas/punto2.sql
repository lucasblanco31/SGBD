/*
b2) Elaborar una consulta SQL que genere un listado que contenga todas las combinaciones 
autor-tema indicando cuantas publicaciones tiene el autor sobre ese tema, si no tiene ninguna 
poner 0 (cero) ordenar por autor y cantidad de publicaciones.
NOMBREAUTOR APELLIDOAUTOR TEMA CANTIDAD
*/
select sel.nombre , sel.apellido, sel.tema, sel.CantTema
from
(select nombre, apellido, tema, count(*) as 'CantTema'
from noticia_mod, usuario_mod, usuario_actual
where autor = usuario_actual.idusuario_actual
and usuario_actual.id_usuario = usuario_mod.id
group by nombre, apellido, tema
union
select distinct nombre, apellido, tema, 0 as 'CantTema'
from noticia_mod, usuario_mod, usuario_actual
where usuario_actual.id_usuario = usuario_mod.id
and usuario_mod.rango = 2) sel
group by sel.nombre, sel.apellido, sel.tema
order by sel.nombre, sel.apellido, sel.CantTema desc