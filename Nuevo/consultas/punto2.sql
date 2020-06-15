select distinct nombre, apellido, tema from noticia_mod, usuario_mod, usuario_actual
where autor = usuario_actual.idusuario_actual
and usuario_actual.id_usuario = usuario_mod.id
