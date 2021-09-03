do $$
declare
	datoTabla record;
	  listado cursor for select * from detalle_de_mantenimiento as d1
	  inner join Registro as r1 on d1.detalle_id = r1.detalle_id
	  inner join contrato as c1 on r1.contrato_id=c1.contrato_Id
	  orden by d1.detalle_dron_modelo asc;
	
begin
	for datoTabla in listado
	loop

Raise notice 'modelo de dron : %, costo de mantenimiento: % , Cantidad de contrato: % ', datoTabla.detalle_dron_modelo, datoTabla.detalle_precio, datoTabla.contrato_cantidad;
end loop;
end $$
language 'plpgsql';
