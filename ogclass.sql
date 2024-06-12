# 우리반 데이터베이스를 만드세요
# ’ogclass’ database  생성
#
# class table
drop table if exists table;
create table if not exists class
(
    student_no   int auto_increment primary key,
    student_name varchar(255) not null,
    gender       varchar(5)   not null,check(gender in ('남','여')),
    github_id    varchar(255) not null unique,
    email        varchar(255) not null unique,
    mbti         varchar(10),
    subject_no int, foreign key(subject_no) references favorite_subject(subject_no)
);
insert into class(student_no,student_name,gender,github_id,email,mbti,subject_no)
values(1,'박태근','남','Ohgiraffers-bear','bear.ohgiraffers@gmail.com',null,1);
values(2,'지동현','남','Bring2it2on','yjkl0516@gmail.com','isfp',2);
values(3,'김강현','남','kimkinghyeon','modan8199@gmail.com','isfp',3);
values(4,'이득규','남','MANTISKYU','asdaron44@gmail.com','isfp',4);
values(5,'홍주연','남','juyeon99','juyeon0806@gmail.com','isfp',5);
values(6,'양혜연','남','yanghyeyeon','yhy4058@gmail.com','isfp',6);
values(7,'이규섭','남','LKS9616','lks609591@gmail.com','isfp',7);
values(8,'전유얀','남','euuuuuuan','euan.may24@gmail.com','isfp',8);
values(9,'박성은','남','seongeun223','jklun080921@gmail.com','isfp',9);
values(10,'박하얀','남','parkhayarn','s0224y92@gmail.com','isfp',10);
values(11,'위성민','남','wdh970616','wdh970616@naver.com','isfp',11);
values(12,'박효찬','남','qwes5674','qwes5674@gmail.com','isfp',12);
values(13,'이의정','남','himisterlee','a01027947353@gmail.com','isfp',13);
values(14,'권은혜','남','dmsgpk237','weed9935@gmail.com','isfp',14);
values(15,'권보현','남','Kwonbohyun','kwon18923@gmail.com','isfp',15);
values(16,'배하은','남','HEun0420','yeonjin917n.n@gmail.com','isfp',16);
values(17,'강연진','남','kangyeonjin','yeonjin917n.n@gmail.com','isfp',17);
values(18,'강진영','남','weed97','weed9935@gmail.com','isfp',18);
# student_no : [int] primary key, auto increment
# student_name : [varchar[255]] not null
# gender : [varchar[5]] notnull check(’남’,’여’)
#     github_id : [varchar[255]]  not null, unique
#     email : [varchar[255]]  not null, unique
#     mbti : [varchar[10]]
#     subject_no : [int] foregin key,
#
#     favorite_subject table

drop table if exists favorite_subject;
    create table if not exists favorite_subject(
        subject_no int auto_increment primary key,
        subject_name varchar(255) not null unique
    );
insert into favorite_subject(subject_no,subject_name)
values(1,'SPRING');
values(2,'JDBC');
values(3,'JAVA');
values(4,'MYSQL');
values(5,'JAVA');
values(6,'SPRING');
values(7,'MYSQL');
values(8,'MYBATIS');
values(9,'MYSQL');
values(10,'MYSQL');
values(11,'MYSQL');
values(12,'MYSQL');
values(13,'MYSQL');
values(14,'MYSQL');
values(15,'MYSQL');
values(16,'MYSQL');
values(17,'SPRING');
values(18,'MYSQL');

#     subject_no : [int] primary key, auto increament
#     subject_name : [varchar[255]] not null, unique