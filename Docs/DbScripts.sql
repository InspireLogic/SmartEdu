create table TbUser(
    idUser serial primary key not null,
    idUnity int not null,
    FOREIGN KEY (idUnity) REFERENCES TbUnity(idUnity),
    idTipeUser int not null,
    FOREIGN KEY (idTipeUser) REFERENCES TbTipeUser(idTipeUser),
    fullName varchar(60) not null,
    login varchar(60) not null,
    password varchar(60) not null,
    createdAt timestamp not null,
    emailRecovery varchar(60) not null
)
create TYPE tipeUnity as ENUM ('schl', 'inst', 'buss', 'instPublic');
create TYPE nameTipeUser as ENUM('adm', 'user', 'ger', 'sec','prof','alun', 'col');
create TYPE tipeEvent as ENUM('aula','reuniao','atividade','hacktown','bootcamp');
create table TbUnity(
    idUnity serial primary key not null,
    nameUnity varchar not null,
    addressUnity varchar not null,
    webAddressUnity varchar not null,
    registredUnityAt timestamp not null,
    tipeUnity tipeUnity not null
--     'Tipo de unidade, podendo ser: "schl" (escola), "inst" (instituição), "buss" (negócio), "instPublic" (instituição pública)',
);
create table TbTipeUser(
    idTipeUser serial not null primary key,
    nameTipeUser nameTipeUser not null,
    descriptionTipeUser varchar null
);
create table TbEvent(
    idEvent serial primary key not null,
    titleEvent varchar not null,
    dataEvent date not null,
    hourIntialEvent time,
    tipeEvent tipeEvent not null
);
CREATE TABLE TbActivities (
    idActivities SERIAL PRIMARY KEY NOT NULL,
    idUser INT NOT NULL,
    idEvent INT NOT NULL,
    status VARCHAR NOT NULL,
    dateCreated DATE,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),  -- Referência à chave primária da tabela TbUser
    FOREIGN KEY (idEvent) REFERENCES TbEvent(idEvent) -- Referência à chave primária da tabela TbEvent
);
CREATE TABLE TbNotification(
    idNotification serial not null primary key,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    idEvent int not null,
    FOREIGN KEY (idEvent) REFERENCES TbEvent(idEvent),
    status varchar(40) not null,
    dataCreated date not null
);
CREATE TABLE TbMessagesEvents(
    idMessagesEvents serial not null primary key,
    idEvent int not null,
    FOREIGN KEY (idEvent) REFERENCES TbEvent(idEvent),
    contentMessagesEvents varchar(100) not null,
    createdMessageEvents date not null
);
create table TbParticipantsEvent(
    idParticipants serial not null primary key,
    idEvent int not null,
    FOREIGN KEY (idEvent) REFERENCES TbEvent(idEvent),
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    statusParticipantsEvents varchar(40) not null
)
create table TbSchedules(
    idSchedules serial not null primary key,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    schedulesDescriptions varchar(60) not null,
    schedules date not null
);
create table TbBackups(
    idBackup serial primary key not null,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    backups varchar(100) not null,
    dateBackUps date not null
);
create table TbGraphEngagements(
    idEngagements serial primary key  not null,
    idEvent int not null,
    FOREIGN KEY (idEvent) REFERENCES TbEvent(idEvent),
    interactions int not null,
    dateGenerationsGraph date not null
);
create table TbFutureTasks(
    idFutureTasks serial primary key not null,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    descriptionFutureTasks varchar(100) not null,
    dateHourFutureTask date not null
);
create table TbInteractions(
    idInteractions serial not null,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    idNotification int not null,
    FOREIGN KEY (idNotification) REFERENCES TbNotification(idNotification),
    dataInteractions date not null
);
create TABLE TbContentsKhanAcademy(
    idContentKhanAcademy serial not null primary key,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    titleContentKhanAcademy varchar not null,
    urlContentKhanAcademy varchar not null,
    dateAccessContentKhanAcademy date not null
);
create TABLE TbTopicsForum(
    idTopicsForum serial not null primary key,
    titleTopicForum varchar not null,
    idUser int not null,
    FOREIGN KEY (idUser) REFERENCES TbUser(idUser),
    dateCreatedForum date not null,
    statusTopicForum varchar(40) not null
);
create TABLE TbForumMessages(
    idForumMessage serial not null primary key,
    idTopicsForum int not null,
    FOREIGN KEY (idTopicsForum) REFERENCES TbTopicsForum(idTopicsForum),
    idUserAuthor int not null,
    FOREIGN KEY (idUserAuthor) REFERENCES TbUser(idUser),
    idParentMassage int not null,
    contentForumMessage varchar not null,
    dateCreatedForumMessage date not null
);
