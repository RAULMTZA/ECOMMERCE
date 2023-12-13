--Cliente query
SELECT 
cliente.id_cliente,
cliente.nombre_cliente, 
cliente.app_cliente, 
cliente.apm_cliente, 
cliente.correo_electronico, 
cliente.contrasena, 
cliente.telefono, 
cliente.fecha_creacion, 
estatus.nombre_estatus
FROM cliente
INNER JOIN estatus ON cliente.id_estatus = estatus.id_estatus
ORDER BY cliente.id_cliente;

--Vendedor query
SELECT v.id_vendedor,
v.nombre_vendedor,
v.app_vendedor,
v.apm_vendedor,
v.correo_electronico,
v.contrasena,
v.telefono,
v.fecha_creacion,
e.nombre_estatus
FROM vendedor v
INNER JOIN estatus e ON v.id_estatus = e.id_estatus;

--Producto query
SELECT p.id_producto,
p.nombre_producto,
m.nombre_marca,
p.modelo,
p.stock,
p.precio_proveedor,
p.precio_publico,
p.descripcion,
v.nombre_vendedor,
p.fecha_creacion,
e.nombre_estatus
FROM producto p
INNER JOIN marca m ON p.id_marca = m.id_marca
INNER JOIN vendedor v ON p.id_vendedor = v.id_vendedor
INNER JOIN estatus e ON p.id_estatus = e.id_estatus;

--Ubicación query
SELECT u.id_ubicacion,
c.nombre,
u.numero_contacto,
u.region,
u.manzana,
u.numero_interior,
u.numero_exterior,
u.codigo_postal,
u.calles,
u.referencia
FROM ubicacion u
INNER JOIN cliente c ON u.id_cliente = c.id_cliente;

--Venta query 
SELECT v.nombre, p.nombre, c.nombre, v.id_venta, v.cantidad_producto, v.fecha_venta
FROM venta
INNER JOIN vendedor ON v.id_vendedor = v.id_vendedor
INNER JOIN producto ON v.id_producto = p.id_producto
INNER JOIN cliente ON v.id_cliente = c.id_cliente;