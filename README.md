# SGBD

### Aclaraciones
* No sé qué onda en "Engine". Entiendo que usamos mariadb ¿?
* A la mayoria de los strings los puse como VARCHAR(MAX). El valor máximo generalmente es 24 excepto para algunas cosas. Es discutible.
* A los VARCHAR() también se les puede agregar un mínimo.
* "Actual" es TINYINT(1) o sea un BIT.


### Sobre los datos

* En usuario falta poner datos actualizados los que tienen bit actual en 0
* En noticia falta poner datos actualizados los que tienen bit actual en 0

### TODO:

* Agregar id usuario a usuario
* Agregar registros de usuarios y noticias modificadas
* Cambiar foreign keys nickname por idusuario
* Consultas