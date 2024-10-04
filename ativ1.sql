create database atividade1_1e;
use atividade1_1e;

create table funcionario(
codfunc int auto_increment primary key not null,
nomefunc varchar(100) not null,
sexofunc varchar(30) not null,
bairrofunc varchar(50) not null,
salfunc decimal(10,2) not null,
setorfunc varchar(50) not null
);

insert into funcionario (nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
	values("Larissa Menezes","F","Jabaquara",1200.00,"Marketing"),
			("Selma Nunes","F","Grajaú",3800.00,"Vendas"),
            ("Leandro Henrique","M","Socorro",2950.00,"Rh"),
			("Amélia Jeremias","F","Socorro",4200.00,"Marketing"),
			("Claudio Jorge Silva","M","Jabaquara",1480.00,"Vendas"),
            ("Luciano Souza","M","Pedreira",1000.00,"Vendas"),
            ("Gabriela Santos Nunes","F","Jarubatuba",4150.00,"Rh"),
            ("Rafaela Vieira Junior","F","Jabaquara",700.00,"Marketing"),
            ("Suzaba Crispim","F","Grajaú",5600.00,"produção"),
			("Sabrina Oliveira Cstro","F","Pedreira",2900.00,"Marketing"),
			("Jarbas Silva Nunes","M","Jarubatuba",5300.00,"Produção"),
            ("Ralf Borges","M","Jabaquara",1600.00,"Marketing");
            
            select * from funcionario;
            
            select sum(salfunc) as Total_salario
            from funcionario;
            
            select setorfunc, count(*) as Total_func_Marketing
            from funcionario
            where setorfunc= "Marketing";
            
            select setorfunc, avg(salfunc) as Media_Salarios
            from funcionario
            group by setorfunc
            order by Media_Salarios desc;
            
            select count(*) as func_Sorro
            from funcionario
            where salfunc < 3000 and bairrofunc = "Socorro";
            
            select setorfunc, count(*) as quantidde_funcionario
            from funcionario
            group by setorfunc
            having count(*) > 3;
            
            
            
            
           