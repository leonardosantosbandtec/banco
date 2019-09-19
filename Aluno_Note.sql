create database bdEscola;
use bdEscola;


create table tbAluno(
id_Aluno int primary key auto_increment,
nome varchar(40),
email varchar(40));

create table tbNote(
	id_Note int primary key auto_increment,
    fabricante varchar(50),
    modelo varchar(50),
    fk_Aluno int,
    foreign key (fk_Aluno) references tbAluno(id_Aluno)
    );
    
insert into tbAluno value (null,'andre','andre@');

insert into tbNote value (null,'Dell','600fk',1),
						(null,'Asus','459x',2);

select al.nome from tbAluno as al, tbNote as n where al.id_Aluno = n.fk_Aluno;
