-- Create user
CREATE USER zeus IDENTIFIED BY zeus123;
GRANT CONNECT TO zeus;
GRANT CONNECT, RESOURCE, DBA TO zeus;
GRANT CREATE SESSION TO zeus;

-- Create table
CREATE TABLE ALUNOS (ID VARCHAR2(10)  PRIMARY KEY, DOCID VARCHAR2(11), NOME VARCHAR2(100));

-- Flashback query
select cast(id as VARCHAR2(10)) as ID, cast(docId as VARCHAR2(11)) as DOCID, cast(nome as VARCHAR2(100)) as NOME, cast(versions_operation as VARCHAR2(1)) as VERSIONS_OPERATION, cast(versions_starttime as TIMESTAMP) as VERSIONS_STARTTIME from ALUNOS versions between scn minvalue and maxvalue;

-- Populate database
INSERT INTO alunos (id, docid, nome) VALUES ('1', '11111111111', 'Maria1');
INSERT INTO alunos (id, docid, nome) VALUES ('2', '22222222222', 'Maria2');
INSERT INTO alunos (id, docid, nome) VALUES ('3', '33333333333', 'Maria3');
INSERT INTO alunos (id, docid, nome) VALUES ('4', '44444444444', 'Maria4');

INSERT INTO alunos (id, docid, nome) VALUES ('5', '55555555555', 'Maria5');
INSERT INTO alunos (id, docid, nome) VALUES ('6', '66666666666', 'Maria6');
INSERT INTO alunos (id, docid, nome) VALUES ('7', '77777777777', 'Maria7');
INSERT INTO alunos (id, docid, nome) VALUES ('8', '88888888888', 'Maria8');
INSERT INTO alunos (id, docid, nome) VALUES ('9', '99999999999', 'Maria9');
INSERT INTO alunos (id, docid, nome) VALUES ('0', '00000000000', 'Maria0');

DELETE FROM alunos WHERE docid='00000000000'

UPDATE alunos SET docid='11111111110' WHERE id = '1';

UPDATE alunos SET nome='Maria Nine' WHERE docid = '99999999999';

