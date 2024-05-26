use jardineria;
select producto.ID_producto, producto.nombre, producto.Categoria,
producto.descripcion, producto.proveedor, producto.precio_venta, 
producto.cantidad_en_stock,producto.dimensiones,Categoria_producto.Desc_Categoria
from producto, Categoria_producto
order by producto.ID_producto;

select distinct pedido.ID_pedido, pedido.fecha_pedido, pedido.fecha_entrega, 
detalle_pedido.ID_producto, detalle_pedido.cantidad,
detalle_pedido.precio_unidad
from pedido
Join detalle_pedido On pedido.ID_pedido=detalle_pedido.ID_pedido;

select empleado.ID_empleado, empleado.nombre, empleado.apellido1, empleado.email,
empleado.puesto, oficina.ID_oficina, oficina.telefono, oficina.Descripcion
from empleado, oficina
order by empleado.ID_empleado asc;


select pago.ID_pago, pago.ID_cliente, cliente.nombre_cliente,
cliente.limite_credito,pago.fecha_pago, pago.id_transaccion, pago.total
from pago, cliente
order by pago.ID_cliente asc;

select cliente.ID_cliente, cliente.pais, cliente.region, cliente.ciudad,
cliente.codigo_postal, cliente.linea_direccion1, cliente.ID_empleado_rep_ventas,
empleado.ID_oficina, oficina.Descripcion
from empleado, cliente, oficina
where cliente.ID_empleado_rep_ventas = empleado.ID_empleado
order by cliente.pais

select distinct cliente.ID_cliente, cliente.nombre_cliente, cliente.telefono,
cliente.telefono, cliente.limite_credito
from cliente
order by cliente.ID_cliente desc;