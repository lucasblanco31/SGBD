/*
b1) Elaborar una consulta SQL que genere un listado que contenga todos los autores de noticias 
con su nombre y apellido y que además muestre cual es la noticia propia (titulo) mas leida, 
de que fecha y cuantos "me gusta" tiene esa noticia. Si varias noticias tienen la misma 
cantidad maxima de lecturas poner una cualquiera de ellas

NOMBREAUTOR APELLIDOAUTOR TITULO FECHA MEGUSTA
*/
select prueba.nom as 'NOMBRE', prueba.ape as 'APELLIDO', prueba.ti as 'TITULO', prueba.fe as 'FECHA', max(prueba.le) as 'LEIDAS', prueba.mg as 'MEGUSTA'
from 
(select autnot.idusuario as ID, nombre as nom, apellido as ape, titulo as ti, autnot.Fecha as fe, count(*) as le, sum(if(megusta=1,1,0))as mg
from reg_navegacion 
join 
(
select nombre, apellido, titulo, usuario_mod.idusuario as idusuario, noticia_mod.fecha as Fecha, 
noticia_mod.idnoticia
from usuario_actual, usuario_mod, noticia_actual, noticia_mod
where usuario_actual.id_usuario = usuario_mod.id
and noticia_actual.id_noticia = noticia_mod.id
and noticia_mod.autor = usuario_actual.idusuario_actual
) autnot 
on reg_navegacion.id_noticia = autnot.idnoticia
group by reg_navegacion.id_noticia) prueba
group by prueba.ID



