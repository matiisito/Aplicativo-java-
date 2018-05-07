/*
**
** Cantidad de valoraciones hechas por tiendas
*/
SELECT
	emp.nombre_fantasia AS tienda,
	COUNT (v.id_valoracion) AS cantidad
FROM
	VALORACION v
INNER JOIN OFERTA o ON (v.ID_OFERTA = o.ID_OFERTA)
INNER JOIN EMPRESA emp ON (
	o.id_empresa = emp.id_empresa
)
GROUP BY
	emp.nombre_fantasia;

/*
** cantidad de usuario por perfil 
**
*/
SELECT
	r.DESCRIPCION AS perfil,
	COUNT (usr.USUARIO) AS cantidad
FROM
	USUARIO usr
RIGHT JOIN rol r ON (usr.id_rol = r.id_rol)
GROUP BY
	r.DESCRIPCION;