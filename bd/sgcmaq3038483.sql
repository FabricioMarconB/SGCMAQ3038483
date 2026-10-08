drop database sgcmaq3038483;
create database sgcmaq3038483;
use sgcmaq3038483;

create table tipo_usuario (	
	id int not null,
    modulo_administrativo varchar(1) not null,
    modulo_agendamento varchar(1) not null,
    modulo_atendimento varchar(1) not null,
    primary key (id)
);

create table usuario (	
	id int not null,
    nome varchar(50),
    senha varchar(100) not null,
    tipo_usuario_id int not null,
    primary key (id),
    foreign key (tipo_usuario_id) references tipo_usuario(id)
);

insert into tipo_usuario values (1024, 'S', 'S', 'S');
insert into tipo_usuario values (1024, 'Admin', '192ad82b61931a696f246ceb68fc37d698506be05a2b296b65ddd82492c9411b', '1024');

select * from usuario;
select * from tipo_usuario;
