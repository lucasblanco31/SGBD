# SGBD

### ENUNCIADO

TP2 Tema 6

TP2 Enunciado:


a) Implementar el diseño del TP1 en una base de datos mysql.

b) Realizar las siguientes consultas (en caso que el diseño no permita realizar estas consultas, adaptar el diseño), se deberan cargar datos ficticios para poder probar las consultas, las consultas deberán funcionar correctamente cualquiera sea el estado de los datos:

b1) Elaborar una consulta SQL que genere un listado que contenga todos los autores de noticias con su nombre y apellido y que además muestre cual es la noticia propia (titulo) mas leida, de que fecha y cuantos "me gusta" tiene esa noticia. Si varias noticias tienen la misma cantidad maxima de lecturas poner una cualquiera de ellas 

NOMBREAUTOR APELLIDOAUTOR TITULO  FECHA  MEGUSTA

b2) Elaborar una consulta SQL que genere un listado que contenga todas las combinaciones autor-tema indicando cuantas publicaciones tiene el autor sobre ese tema, si no tiene ninguna poner 0 (cero) ordenar por autor y cantidad de publicaciones.

NOMBREAUTOR APELLIDOAUTOR TEMA  CANTIDAD

b3) Emitir un listado con la historia de los usuarios que han superado las 20 lecturas de noticias y 10 además comentarios, se deberá listar nombre de usuario, cantidad de comentarios, fecha última lectura.

USUARIO CANTCOM FECHAUTLECTURA

ENTREGAR TRES ARCHIVOS: 1 SCRIPT CON LA ESTRUCTURA DE LA BASE DE DATOS, 2 SCRIPT CON LOS DATOS PARA SER IMPORTADOS, 3 SCRIPT CON LAS TRES CONSULTAS SOLICITADAS UNA DEBAJO DE LA OTRA.


### FUNCIONAMIENTO:

## Usuarios:

** Se tienen dos tablas (usuario_mod y usuario_actual) las cuales tienen las siguientes funciones:

* Usuario_mod tiene los registros de todos los usuarios con sus modificaciones, la clave principal es el id que se autoincrementa, el id_usuario es el id personal de cada usuario.

* Usuario_actual funciona como puntero. El atributo idusuario_actual es el id personal de cada usuario y es la clave principal de cada registro. El atributo id_usuario es el puntero al id de clave principal de usuario_mod el valor que va tomando cada usuario cada vez que se modifica. 
La funcion de usuario_actual es apuntar siempre a los ultimos datos de un usuario.

## Noticias:

* Funcionan de la misma manera.

## TODO:

* Consulta 1: falta ordenar por noticia mas leida por autor
* Consulta 2: falta cantidad de noticias por tema por autor


* Agregar comentarios a la base de datos