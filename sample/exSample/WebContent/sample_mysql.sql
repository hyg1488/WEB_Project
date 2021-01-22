-- �����ͺ��̽�: `sample`
-- USER/PASS : sample/ sam1234

-- ������ ���̺�
-- ���̺� ���� `sam_admin`

CREATE TABLE sam_admin (
  num int NOT NULL auto_increment,	--  ������ȣ �ڵ�����
  adminid varchar(20) NOT NULL ,	--  ���̵�
  adminpass varchar(20) NOT NULL ,	--  ��й�ȣ
  indate date default NULL,             --  �������
  rate int(2) default NULL,             --  ���� ����
  PRIMARY KEY  (num)
);


insert into sam_admin (num,adminid,adminpass,indate,rate) values (admin_seq.nextval,'admin','1234',sysdate,0);

-- ȸ������ ���̺�
-- ���̺� ���� `sam_member`

create table sam_member(
	idx int not null auto_increment ,		-- �⺻Ű �ڵ�����
	name varchar(20) not null,			-- ȸ���̸�
	userid varchar(20) not null,			-- ȸ�� ID
	passwd varchar(20) not null,			-- ��й�ȣ
	zipcode varchar(7)  null,			-- �����ȣ
	addr1 varchar(200)  null,			-- �ּ�
	addr2 varchar(100) not null,			-- �������ּ�
	tel varchar(4) not null,			-- ��ȭ(����/�ڵ���)
	email varchar(100),				-- �̸���
	job varchar(20),				-- ����
	intro varchar(2000),				-- �ڱ�Ұ�
	favorite varchar(255),				-- ���ɺо�
	first_time date,				-- ���Գ�¥
	last_time date					-- ������ �α��γ�¥
);


-- �������� ���̺�
-- ���̺� ���� 'sam_notice`

CREATE TABLE sam_notice (
  num int NOT NULL auto_increment,      --  ������ȣ
  subject varchar(255) NOT NULL ,	--  ����
  contents varchar(2000) NOT NULL,	--  ����
  indate date default NULL,		--  �������
  readcnt int default NULL,		--  ��ȸ��
  PRIMARY KEY  (num)
);


-- �亯�� �Խ��� ���̺�
-- ���̺� ���� `sam_board`

CREATE TABLE sam_board (
  num int NOT NULL auto_increment,	--  ������ȣ
  pass varchar(20) NOT NULL ,		--  ��й�ȣ
  name varchar(20) NOT NULL ,		--  �ۼ��� �̸�
  indate date NOT NULL ,		--  �ۼ�����
  subject varchar(100) NOT NULL,	--  ����
  contents varchar(2000) NOT NULL,	--  ����
  parent int(2) not null,		--  �ֻ��� �θ�۹�ȣ
  realparent int(2) not null,		--  �ٷ� �Ѽ��� ���� �۹�ȣ
  indent int(2) not null,		--  �鿩���� ����
  depth int(2) not null,		--  �亯���� �ѹ��� �����ϴ� �ʵ�� 
					--  ù��° �亯���� 1, �� ��° �亯���� 2,
					--  n��° �亯���� n�� ���� ����
  readcnt int ,				--  ��ȸ��
  ip varchar(20) not null,		--  �ۼ��� ip�ּ�
  PRIMARY KEY  (num)
);


-- ���� ������ ���̺�
-- ���̺� ���� 'sam_gallery`

CREATE TABLE sam_gallery (
  num int NOT NULL auto_increment,	--  ������ȣ
  gubun int(1) NOT NULL ,		--  ��������(1:/����/2:��/3:����/4:������
  subject varchar(100) NOT NULL ,	--  ����
  photo varchar(255) NOT NULL ,		--  ����
  indate date default NULL,								--  �������
  PRIMARY KEY  (num)
);


-- ���� ���ε�� ���̺�
-- ���̺� ���� `sam_pds`

CREATE TABLE sam_pds (
  num int NOT NULL auto_increment,		--  ������ȣ
  name varchar(20) NOT NULL ,			--  �ۼ��� �̸�
  pass varchar(20) NOT NULL ,			--  ��й�ȣ
  subject varchar(100) NOT NULL,		--  ����
  contents varchar(2000) NOT NULL,		--  ����
  indate date NOT NULL ,			--  �ۼ�����
  readcnt int(2) ,				--  ��ȸ��
  filename varchar(255) null,			--  �����̸�
  PRIMARY KEY  (num)
);


-- ���� ���̺�(�亯�� ����)
-- ���̺� ���� `sam_guest`

create table sam_guest (
	idx int not null auto_increment,	-- ������ȣ/�ڵ�����
	name varchar(50) not null,		-- �ۼ���
	subject varchar(100) not null,		-- ����
	contents varchar(2000) not null,	-- ����						-- ����
	indate date not null,			-- �ۼ�����
	readcnt int,											-- ��ȸ��
	primary key(idx)										-- �⺻Ű
);


-- ��޷� ���̺�
-- ���̺� ���� `sam_calendar`

create table sam_calendar (
	num int not null auto_increment,		-- ������ȣ/�ڵ�����
	indate date not null,				-- ��� �Ǵ� �����
	subject varchar(100) not null,			-- ����
	contents varchar(2000) not null,							-- ����
	primary key(num)										-- �⺻Ű
);


-- �������� ���̺�
-- ���̺� ���� `sam_question'

create table sam_question (
	num int not null auto_increment,-- ������ȣ/�ڵ�����
	question varchar(255) not null,	-- ���� ������ ����
	reply1 varchar(100) ,		-- �亯1(����ڰ� �亯�� ���û��� 1�� ����)
	reply2 varchar(100) ,		-- �亯2(����ڰ� �亯�� ���û��� 2�� ����)
	reply3 varchar(100) ,		-- �亯3(����ڰ� �亯�� ���û��� 3�� ����)
	reply4 varchar(100) ,		-- �亯4(����ڰ� �亯�� ���û��� 4�� ����)
	replynum1 int ,			-- �亯1(�亯1�� ������ ��)
	replynum2 int ,			-- �亯2(�亯2�� ������ ��)
	replynum3 int ,			-- �亯3(�亯3�� ������ ��)
	replynum4 int ,			-- �亯4(�亯4�� ������ ��)
	replytot  int ,			-- ��ü ������ ��
	indate date not null,		-- ���� �������
	primary key(num)		-- �⺻Ű
);

