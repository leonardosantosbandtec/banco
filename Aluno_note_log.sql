create database teste;
 use teste;
 

create table tbAluno(
id_Aluno int primary key auto_increment,
nome varchar(40),
email varchar(40));

create table tbNote(
	id_Note int primary key auto_increment ,
    fabricante varchar(50),
    modelo varchar(50)
    );

create table log_Notes(

	fkAluno int,
    fkNote int,
    foreign key (fkAluno) references tbAluno(id_Aluno),
    foreign key (fkNote) references tbNote(id_Note)
);
    
insert into tbAluno value (null,'leonardo','leo@'),
							(null,'Andre','andre@');
                            
insert into tbNote value (null,'Dell','600fk'),
						(null,'Asus','459x');
select  * from tbNote;
insert into log_Notes value (1,1),
							(2,2);
                            
select al.nome, al.email , n.fabricante, n.modelo from tbAluno as al, tbNote as n where al.id_Aluno = n.fk_Aluno;

select al.nome, nt.modelo from tbAluno as al, log_Notes as ln, tbNote as nt where al.id_Aluno = ln.fkAluno and ln.fkNote = 1;

