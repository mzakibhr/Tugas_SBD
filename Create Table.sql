CREATE TABLE  "DATA_PERKULIAHAN" 
   (    "KODE_PERKULIAHAN" VARCHAR2(3), 
    "RUANGAN" VARCHAR2(50), 
    "KELAS" VARCHAR2(50), 
    "KODE_MATAKULIAH" VARCHAR2(50), 
    "MATAKULIAH" VARCHAR2(50), 
     CONSTRAINT "DATA_PERKULIAHAN_CON" PRIMARY KEY ("KODE_PERKULIAHAN") ENABLE
   ) ;CREATE TABLE  "DOSEN" 
   (    "NIDN" VARCHAR2(50), 
    "NAMA" VARCHAR2(50), 
    "ALAMAT" VARCHAR2(50), 
    "NO_HP" VARCHAR2(50), 
    "EMAIL" VARCHAR2(50), 
    "KODE_PERKULIAHAN" VARCHAR2(3), 
     CONSTRAINT "DOSEN_CON" PRIMARY KEY ("NIDN") ENABLE
   ) ;CREATE TABLE  "MAHASISWA" 
   (    "NIM" VARCHAR2(50), 
    "NAMA" VARCHAR2(50), 
    "ALAMAT" VARCHAR2(50), 
    "EMAIL" VARCHAR2(50), 
    "NO_HP" VARCHAR2(50), 
    "JURUSAN" VARCHAR2(50), 
    "KODE_PERKULIAHAN" VARCHAR2(3), 
     CONSTRAINT "MAHASISWA_CON" PRIMARY KEY ("NIM") ENABLE
   ) ;ALTER TABLE  "DOSEN" ADD CONSTRAINT "DOSEN_FOREIGN" FOREIGN KEY ("KODE_PERKULIAHAN")
      REFERENCES  "DATA_PERKULIAHAN" ("KODE_PERKULIAHAN") ON DELETE CASCADE ENABLE;ALTER TABLE  "MAHASISWA" ADD CONSTRAINT "MAHASISWA_FOREIGN" FOREIGN KEY ("KODE_PERKULIAHAN")
      REFERENCES  "DATA_PERKULIAHAN" ("KODE_PERKULIAHAN") ENABLE;CREATE UNIQUE INDEX  "DATA_PERKULIAHAN_CON" ON  "DATA_PERKULIAHAN" ("KODE_PERKULIAHAN") 
  ;CREATE UNIQUE INDEX  "DOSEN_CON" ON  "DOSEN" ("NIDN") 
  ;CREATE UNIQUE INDEX  "MAHASISWA_CON" ON  "MAHASISWA" ("NIM") 
  ;