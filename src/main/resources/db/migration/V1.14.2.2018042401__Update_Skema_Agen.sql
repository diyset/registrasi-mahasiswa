INSERT INTO jenis_biaya VALUES ('010','Agen Pendaftar');

ALTER TABLE agen
    RENAME nama TO nama_cabang;

alter table agen
  add column penanggung_jawab VARCHAR(255) not NULL;

alter table agen
  add column kode VARCHAR(255) not NULL;


--- Tbl Pendaftar_Agen
CREATE TABLE pendaftar_agen (
  id       VARCHAR (36),
  id_agen VARCHAR (36) NOT NULL,
  id_pendaftar VARCHAR (36) NOT NULL,
  tanggal TIMESTAMP NOT NULL,
  status_tagihan VARCHAR (36)  NOT NULL,
  PRIMARY KEY (id),
  foreign key (id_pendaftar) references pendaftar (id),
  foreign key (id_agen) references agen (id)
);
-- ///

-- Tagihan Agen

CREATE TABLE tagihan_agen (
  id       VARCHAR (36),
  id_agen VARCHAR (36) NOT NULL,
  id_jenisbiaya VARCHAR (36) NOT NULL,
  nomor_tagihan VARCHAR (255) NOT NULL,
  tanggal_tagihan DATE NOT NULL,
  keterangan VARCHAR (255) NOT NULL,
  nilai NUMERIC (19,2) NOT NULL,
  lunas BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id),
  foreign key (id_agen) references agen (id),
  foreign key (id_jenisbiaya) references jenis_biaya (id)
);

--////

-- Pembayaran Agen

create table pembayaran_agen (
  id VARCHAR (36),
  id_tagihan VARCHAR(36) NOT NULL,
  id_bank VARCHAR (36) NOT NULL,
  waktu_pembayaran TIMESTAMP NOT NULL ,
  cara_pembayaran VARCHAR (255) NOT NULL ,
  bukti_pembayaran VARCHAR (255) NOT NULL ,
  nilai NUMERIC(19,2) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_tagihan) REFERENCES tagihan_agen(id),
  FOREIGN KEY (id_bank) REFERENCES bank(id)
);

--- ///