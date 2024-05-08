

CREATE TABLE produk (
    id_produk serial primary key,
    nama_produk VARCHAR(100),
    merk	varchar(255),
    harga DECIMAL(10, 2),
    stok INT,
    createdAt timestamp,
    updatedAt timestamp
);

create table konsumen (
	id_konsumen serial primary key,
	nama varchar(255),
	username varchar(255),
	password varchar(255),
	createdAt timestamp,
    updatedAt timestamp
);

CREATE TABLE kasir (
    id_kasir serial primary key,
    nama VARCHAR(50),
    username varchar(255),
	password varchar(255),
    isAvailable bool,
    createdAt timestamp,
    updatedAt timestamp
);

CREATE TABLE transaksi (
    id_transaksi serial PRIMARY KEY,
 	id_kasir int,
    id_produk INT,
    jumlah INT,
    total_harga DECIMAL(10, 2),
    tanggal DATE,
    id_konsumen int,
    createdAt timestamp,
    updatedAt timestamp,
    foreign key(id_konsumen) references konsumen(id_konsumen),
    foreign key(id_kasir) references kasir(id_kasir),
    foreign key(id_produk) references produk(id_produk)
);

INSERT INTO produk (nama_produk,merk, harga, stok, createdat, updatedat) VALUES
('Panci', 'Panasonic',50.00, 20,now(),now()),
('Piring', 'Daia',10.00, 50,now(),now()),
('Gelas', 'Energen',5.00, 100,now(),now()),
('Spatula', 'Kayu',8.00, 30,now(),now()),
('Garpu', 'Stainless',7.00, 60,now(),now());

insert into kasir (nama,username,password,isAvailable, createdat, updatedat) values 
('Muhammad Fajar', 'fajari', 'ifajar',true,now(),now()),
('Muhammad Jindan','jindanm', 'jindanm',true,now(),now()),
('Mardi','mardii','iimard' false,now(),now());

INSERT INTO transaksi (id_produk, id_kasir, jumlah, total_harga, tanggal, createdat, updatedat) VALUES
(1, 1,2, 100.00, '2024-02-17',now(),now()),
(2, 2,2, 20.00, '2024-02-17',now(),now()),
(3, 2,2, 10.00, '2024-02-16',now(),now());






