select nickname, lista1.NL as 'Noticias Leidas', lista1.LD as 'Me gustas dados', lista1.FU as 'Fecha Ultima Leida'
from usuario_mod
join (select idusuario_actual, usuario_actual.id_usuario as 'L1U', lista.idUser, lista.NotLeidas as 'NL', lista.CantidadMeGusta as 'LD', lista.UltimaLeida as 'FU'
from usuario_actual
join (select reg_navegacion.id_usuario as 'idUser', count(*) as 'NotLeidas', mgcant.MeG as 'CantidadMeGusta', max(reg_navegacion.fecha) as 'UltimaLeida' 
from reg_navegacion
join (select id_usuario, count(*) as 'MeG'from comentario group by id_usuario) mgcant 
on reg_navegacion.id_usuario = mgcant.id_usuario 
group by reg_navegacion.id_usuario
order by NotLeidas desc) lista
on usuario_actual.idusuario_actual = lista.idUser) lista1
on usuario_mod.id = lista1.L1U
#having lista1.NL > 20 and lista1.LD > 10 (CON ESTE PUNTO SE TERMINA LA CONSULTA)
# HAY QUE AGREGAR COMENTARIOS PARA QUE HAYA ALGUN USER QUE HAYA HECHO MAS DE 10