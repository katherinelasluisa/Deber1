reate database SUPERTIENDA
USE DATABASE SUPERTIENDA

create table SUCURSAL (
id_suc int identity primary key,
ruc_suc numeric (10) not null,
nombre_suc varchar (20)not null,
ciudad_suc varchar (20)not null,
direccion_suc varchar (20)not null,
tlf_suc numeric (10)not null
)

create table PROVEEDOR (
id_prov int identity primary key ,
ruc_prov numeric (10) not null,
nombre_prov varchar (20)not null,
direccion_prov varchar (20)not null,
tlf_prov numeric (10)not null,
id_sucFK int FOREIGN KEY REFERENCES SUCURSAL(id_suc)
)

create table EMPLEADO (
id_empl int identity primary key ,
cedula_empl numeric (10) not null,
nombre_empl varchar (20)not null,
apellido_empl varchar (20)not null,
direccion_empl varchar (20)not null,
tlf_empl numeric (10)not null,
id_sucFK int FOREIGN KEY REFERENCES SUCURSAL(id_suc)
)

create table CLIENTE (
id_cli int identity primary key ,
cedula_cli numeric (10) not null,
nombre_cli varchar (20)not null,
apellido_cli varchar (20)not null,
direccion_cli varchar (20)not null,
tlf_cli numeric (10)not null,
id_sucFK int FOREIGN KEY REFERENCES SUCURSAL(id_suc)
)

create table PRODUCTO (
id_prod int identity primary key ,
nombre_prod varchar (20)not null,
stock_prod numeric (4)not null
)

create table VENTAS (
id_venta int identity primary key ,
total_venta numeric(10)not null,
fecha_venta date not null,
id_prodFK int FOREIGN KEY REFERENCES PRODUCTO(id_prod),
id_cliFK int FOREIGN KEY REFERENCES CLIENTE(id_cli),
)