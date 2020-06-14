(select nombre, apellido, titulo, count(*) as 'Leidas', sum(if(megusta=1,1,0))as 'Me gusta' from reg_navegacion join
(select nombre, apellido, titulo, noticia_mod.fecha, noticia_mod.idnoticia
from usuario_actual, usuario_mod, noticia_actual, noticia_mod
where usuario_actual.id_usuario = usuario_mod.id
and noticia_actual.id_noticia = noticia_mod.id
and noticia_mod.autor = usuario_actual.idusuario_actual
group by usuario_actual.id_usuario) autnot 
on reg_navegacion.id_noticia = autnot.idnoticia
group by reg_navegacion.id_noticia)

