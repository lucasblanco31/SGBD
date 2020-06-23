/*
b1) Elaborar una consulta SQL que genere un listado que contenga todos los autores de noticias 
con su nombre y apellido y que además muestre cual es la noticia propia (titulo) mas leida, 
de que fecha y cuantos "me gusta" tiene esa noticia. Si varias noticias tienen la misma 
cantidad maxima de lecturas poner una cualquiera de ellas

NOMBREAUTOR APELLIDOAUTOR TITULO FECHA MEGUSTA
*/
select prueba.nom as 'NOMBRE', prueba.ape as 'APELLIDO', prueba.ti as 'TITULO', prueba.fe as 'FECHA', prueba.mg as 'MEGUSTA'
from 
(select autnot.idusuario as ID, nombre as nom, apellido as ape, titulo as ti, autnot.Fecha as fe, count(*) as le, sum(if(megusta=1,1,0))as mg
from reg_navegacion 
join 
(
select nombre, apellido, titulo, usuario_mod.idusuario as idusuario, noticia_mod.fecha as Fecha, 
noticia_mod.idnoticia as idnot
from usuario_actual, usuario_mod, noticia_actual, noticia_mod
where usuario_actual.id_usuario = usuario_mod.id
and noticia_actual.id_noticia = noticia_mod.id
and noticia_mod.autor = usuario_actual.idusuario_actual
) autnot 
on reg_navegacion.id_noticia = autnot.idnot
group by reg_navegacion.id_noticia
#Al ordernar por cantidad de leidas luego al agrupar siempre se toma la primera
order by le desc ) prueba
group by prueba.ID

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

/*
b3) Emitir un listado con la historia de los usuarios que han superado las 20 lecturas de noticias
 y 10 además comentarios, se deberá listar nombre de usuario, cantidad de comentarios, 
 fecha última lectura.
USUARIO CANTCOM FECHAUTLECTURA

*/

select nickname, lista1.NL as 'Noticias Leidas', lista1.CC as 'Cantidad de Comentarios', 
lista1.FU as 'Fecha Ultima Leida'
from usuario_mod
join (select idusuario_actual, usuario_actual.id_usuario as 'L1U', lista.idUser, 
lista.NotLeidas as 'NL', lista.CantidadComentario as 'CC', lista.UltimaLeida as 'FU'
from usuario_actual
join (select reg_navegacion.id_usuario as 'idUser', count(*) as 'NotLeidas', 
mgcant.CantCom as 'CantidadComentario', max(reg_navegacion.fecha) as 'UltimaLeida' 
from reg_navegacion
join (select id_usuario, count(*) as 'CantCom'
from comentario 
group by id_usuario) mgcant 
on reg_navegacion.id_usuario = mgcant.id_usuario 
group by reg_navegacion.id_usuario
order by NotLeidas desc) lista
on usuario_actual.idusuario_actual = lista.idUser) lista1
on usuario_mod.id = lista1.L1U
having lista1.NL > 20 and lista1.CC > 10