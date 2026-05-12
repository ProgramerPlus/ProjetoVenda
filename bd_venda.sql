create database bd_venda;
use bd_venda;

create table tb_produto(
cd_produto int primary key auto_increment,
nm_produto varchar(45) not null,
vl_produto decimal(6,2) not null
);

create table tb_cliente(
cd_cliente int primary key auto_increment,
nm_cliente varchar (45) not null,
nr_contato char(11) not null,
nm_contato varchar(45) not null
);

create table tb_equipe(
cd_equipe int primary key auto_increment,
nm_equipe varchar(45) not null,
nm_regiao varchar(45) not null
);

create table tb_vendedor(
cd_vendedor int primary key auto_increment,
nm_vendedor varchar(45) not null,
nr_celular char(11) not null,
fk_cd_equipe int,
foreign key (fk_cd_equipe) references tb_equipe(cd_equipe)
);

create table tb_venda(
cd_venda int primary key auto_increment,
dt_venda date not null,
qt_venda int not null,
vl_venda decimal(10,2),
fk_cd_vendedor int,
fk_cd_produto int,
fk_cd_cliente int,
foreign key (fk_cd_vendedor) references tb_vendedor(cd_vendedor),
foreign key (fk_cd_produto) references tb_produto(cd_produto),
foreign key (fk_cd_cliente) references tb_cliente(cd_cliente)
);



alter table tb_venda
add nm_local varchar (50) not null;

describe tb_venda;

insert into tb_equipe values(null,'Amazonas','Norte'),
(null,'Rio Grande Do Sul','Sul'),
(null,'Mato Grosso','Oeste'),
(null,'Alagoas','Leste');

insert into tb_vendedor values (null, 'Ricardo Almeida', '11988776655', 1),
(null, 'Beatriz Souza', '21977665544', 2),
(null, 'Carlos Eduardo', '31966554433', 1),
(null, 'Daniela Martins', '41955443322', 3),
(null, 'Eduardo Gomes', '51944332211', 2),
(null, 'Fernanda Lima', '61933221100', 4),
(null, 'Gabriel Costa', '71922110099', 1),
(null, 'Helena Rocha', '81911009988', 3),
(null, 'Igor Silveira', '11900998877', 1),
(null, 'Julia Mendes', '21999887766', 2),
(null, 'Kevin Oliveira', '31988776655', 4),
(null, 'Larissa Freitas', '41977665544', 2),
(null, 'Marcos Vinicius', '51966554433', 3),
(null, 'Natália Dias', '61955443322', 1),
(null, 'Otávio Augusto', '71944332211', 2),
(null, 'Patrícia Nunes', '81933221100', 4),
(null, 'Quintino Neto', '11922110099', 3),
(null, 'Rafaela Borges', '21911009988', 3),
(null, 'Samuel Paz', '31900998877', 1),
(null, 'Tatiana Luz', '41999887766', 2);

insert into tb_cliente values (null, 'Tech Solutions Ltda', '11988887777', 'Roberto Silva'),
(null, 'Padaria do Pão Quente', '21977776666', 'Maria Oliveira'),
(null, 'Oficina Mecânica Precision', '31966665555', 'Carlos Alberto'),
(null, 'Consultório Dr. Arnaldo', '41955554444', 'Ana Paula'),
(null, 'Mercado Preço Bom', '51944443333', 'Fernando Gomes'),
(null, 'Escola Aprender Mais', '61933332222', 'Juliana Costa'),
(null, 'Restaurante Sabor Caseiro', '71922221111', 'Ricardo Nunes'),
(null, 'Loja de Roupas Estilo', '81911110000', 'Beatriz Souza'),
(null, 'Academia Foco Total', '11900009999', 'Lucas Mendes'),
(null, 'Farmácia Saúde Viva', '21999998888', 'Patrícia Rocha');

insert into tb_produto values (null, 'Teclado Mecânico RGB', 250.00),
(null, 'Mouse Gamer 12000 DPI', 180.50),
(null, 'Monitor 24 Polegadas LED', 890.40),
(null, 'Fone de Ouvido Bluetooth', 120.00),
(null, 'Webcam Full HD 1080p', 320.90),
(null, 'Cadeira de Escritório Ergonômica', 1200.00),
(null, 'Suporte para Notebook', 45.00),
(null, 'Pendrive 64GB USB 3.0', 55.00),
(null, 'Impressora Multifuncional', 750.00),
(null, 'Roteador Wi-Fi 6', 450.00),
(null, 'HD Externo 1TB', 380.00),
(null, 'SSD M.2 NVMe 500GB', 290.00),
(null, 'Cabo HDMI 2.0 2 metros', 25.90),
(null, 'Carregador Portátil 20000mAh', 150.80),
(null, 'Microfone Condensador USB', 210.00),
(null, 'Caixa de Som Bluetooth', 190.00),
(null, 'Hub USB-C 7 em 1', 135.00),
(null, 'Estabilizador 500VA', 220.00),
(null, 'Filtro de Linha 6 Tomadas', 35.80),
(null, 'Cooler para Processador', 95.30);

insert into tb_venda values 
(null, '2026-02-17', 24, 3213.45, 1, 4, 5, 'Manaus'),
(null, '2026-12-09', 10, 1805.00, 2, 2, 7, 'Porto Alegre'),
(null, '2026-08-16', 5, 4452.00, 3, 3, 1, 'Cuiabá'),
(null, '2026-02-19', 2, 2400.00, 4, 6, 2, 'Maceió'),
(null, '2026-03-31', 15, 825.00, 5, 8, 3, 'Porto Alegre'),
(null, '2026-07-10', 1, 750.00, 6, 9, 4, 'Salvador'),
(null, '2026-05-29', 12, 3010.80, 7, 1, 6, 'Manaus'),
(null, '2026-11-24', 20, 9000.00, 8, 10, 8, 'Campo Grande'),
(null, '2026-02-17', 4, 1283.60, 9, 5, 9, 'Manaus'),
(null, '2026-05-28', 50, 1295.00, 10, 13, 10, 'Porto Alegre'),
(null, '2026-02-17', 8, 2240.00, 11, 12, 1, 'Recife'),
(null, '2026-02-13', 3, 3600.00, 12, 6, 2, 'Canoas'),
(null, '2026-11-03', 10, 3800.00, 13, 11, 3, 'Cuiabá'),
(null, '2026-11-17', 30, 7500.00, 14, 1, 4, 'Manaus'),
(null, '2026-02-17', 5, 225.00, 15, 7, 5, 'Bento Gonçalves'),
(null, '2026-10-14', 14, 2100.00, 16, 14, 6, 'Maceió'),
(null, '2026-12-18', 2, 420.00, 17, 15, 7, 'Sinop'),
(null, '2026-02-17', 6, 1140.00, 18, 16, 8, 'Rondonópolis'),
(null, '2026-02-19', 20, 716.00, 19, 19, 9, 'Manaus'),
(null, '2026-02-17', 10, 953.00, 20, 20, 10, 'Porto Alegre'),
(null, '2026-12-04', 5, 675.00, 1, 17, 1, 'Manaus'),
(null, '2026-02-17', 2, 440.00, 2, 18, 2, 'Passo Fundo'),
(null, '2026-06-05', 10, 550.00, 3, 8, 3, 'Parintins'),
(null, '2026-10-12', 3, 2671.20, 4, 3, 4, 'Dourados'),
(null, '2026-07-29', 38, 345.95, 20, 20, 8, 'São Paulo');

select * from tb_cliente;
select * from tb_produto;
select * from tb_equipe;
select * from tb_venda;
select * from tb_vendedor;