drop database sgcm_prof;
create database sgcm_prof;
use sgcm_prof;

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

