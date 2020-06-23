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