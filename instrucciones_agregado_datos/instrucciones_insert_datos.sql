#insert into usuario values ('MAESONUS', 'Mateo', 'Sono', 'msono123', '0', '0', current_timestamp())
#insert into noticia values ('id','contenido','tema','titulo','autor',current_timestamp(),'bajada','actual')
#insert into noticia values (20,'En Argentina, el acceso a la Interrupción Legal del Embarazo (IVE) está garantizado por la Constitución Nacional, por los Tratados de Derecho Humanos, por el Código Penal de 1921, por el Código Civil y Comercial reformado en 2015, por el Fallo F.A.L de la Corte Suprema de Justicia de la Nación del año 2012 y por la Organización Mundial de la Salud, que rige la política sanitaria a nivel internacional y actualiza periódicamente la guía de atención integral de este derecho.',
#'actualidad','¿Qué es la ILE y quiénes pueden acceder a ella?',
#'vhugo',current_timestamp(),
#'SE TENÍA QUE DECIR','1')

#insert into comentario values ('id', 'texto','noticia','comentariosup','usuario')
#insert into comentario values (20, 'ojala se apruebe! Si!!!',20,null,'jdperon')

#insert into regnavegacion values ('noticia','usuario','meGusta','fecha')
#insert into regnavegacion values (2,'XEROSTRE',1,current_timestamp())

#insert into estado values ('id','comentario','fecha','estado','observacion','usuario','actual')
INSERT INTO `diario_web`.`estado`
(`idestado`,
`comentario`,
`fechaDeModificacion`,
`estado`,
#`observacion`,
`usuario`,
`actual`)
VALUES
(27,
4,
current_timestamp(),
'invisible',
'matiasmachado7',
1);


