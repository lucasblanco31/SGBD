select nombre, apellido, titulo
from usuario_actual, usuario_mod, noticia_actual, noticia_mod
where usuario_actual.id_usuario = usuario_mod.id
and noticia_actual.id_noticia = noticia_mod.id
and noticia_mod.autor = usuario_actual.idusuario_actual

##### PARA SABER CUANTAS LEIDAS TIENE CADA UNA
#select id_noticia, count(*) as 'Leidas' from reg_navegacion
#group by id_noticia
#####
