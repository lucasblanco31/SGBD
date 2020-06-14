# SGBD

### Aclaraciones
* No sé qué onda en "Engine". Entiendo que usamos mariadb ¿?
* A la mayoria de los strings los puse como VARCHAR(MAX). El valor máximo generalmente es 24 excepto para algunas cosas. Es discutible.
* A los VARCHAR() también se les puede agregar un mínimo.
* "Actual" es TINYINT(1) o sea un BIT.


### FUNCIONAMIENTO:

## Usuarios:

** Se tienen dos tablas (usuario_mod y usuario_actual) las cuales tienen las siguientes funciones:

* Usuario_mod tiene los registros de todos los usuarios con sus modificaciones, la clave principal es el id que se autoincrementa, el id_usuario es el id personal de cada usuario.

* Usuario_actual funciona como puntero. El atributo idusuario_actual es el id personal de cada usuario y es la clave principal de cada registro. El atributo id_usuario es el puntero al id de clave principal de usuario_mod el valor que va tomando cada usuario cada vez que se modifica. 
La funcion de usuario_actual es apuntar siempre a los ultimos datos de un usuario.

## Noticias:

* Funcionan de la misma manera.

## TODO:

* Crear consultas