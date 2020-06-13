select nombre, apellido, nickname, idnoticia, reg_navegacion.id_usuario, megusta from noticia_mod, usuario_actual, usuario_mod, reg_navegacion, noticia_actual
where noticia_mod.autor = usuario_actual.id_usuario
and usuario_actual.id_usuario = usuario_mod.idusuario
and reg_navegacion.id_noticia = noticia_actual.id_noticia 
and noticia_actual.id_noticia = noticia_mod.idnoticia
