CREATE TABLE t_permission
(
    id   varchar(36)  NOT NULL,
    url  varchar(200) NULL,
    name varchar(100) NULL,
    CONSTRAINT t_permission_id_uindex
        UNIQUE (id)
);

ALTER TABLE t_permission
    ADD PRIMARY KEY (id);

INSERT INTO test_shiro.t_permission (id, url, name) VALUES ('1', '/user', 'user:user');
INSERT INTO test_shiro.t_permission (id, url, name) VALUES ('2', '/user/add', 'user:add');
INSERT INTO test_shiro.t_permission (id, url, name) VALUES ('3', '/user/delete', 'user:delete');


CREATE TABLE t_role
(
    id   varchar(36)  NULL,
    name varchar(200) NULL,
    memo varchar(200) NULL
);

INSERT INTO test_shiro.t_role (id, name, memo) VALUES ('1', 'admin', '超级管理员');
INSERT INTO test_shiro.t_role (id, name, memo) VALUES ('2', 'test', '测试账户');


CREATE TABLE t_role_permission
(
    id            varchar(36) NULL,
    role_id       varchar(36) NULL,
    permission_id varchar(36) NULL
);

INSERT INTO test_shiro.t_role_permission (id, role_id, permission_id) VALUES ('1', '1', '2');
INSERT INTO test_shiro.t_role_permission (id, role_id, permission_id) VALUES ('2', '1', '3');
INSERT INTO test_shiro.t_role_permission (id, role_id, permission_id) VALUES ('3', '2', '1');
INSERT INTO test_shiro.t_role_permission (id, role_id, permission_id) VALUES ('4', '1', '1');

CREATE TABLE t_user
(
    id          varchar(36)  NOT NULL,
    user_name   varchar(50)  NULL,
    password    varchar(100) NULL,
    create_time datetime     NULL,
    status      varchar(10)  NULL,
    CONSTRAINT t_user_id_uindex
        UNIQUE (id)
);

ALTER TABLE t_user
    ADD PRIMARY KEY (id);

INSERT INTO test_shiro.t_user (id, user_name, password, create_time, status) VALUES ('1', 'mrbird', '42ee25d1e43e9f57119a00d0a39e5250', '2019-11-13 09:11:46', '1');
INSERT INTO test_shiro.t_user (id, user_name, password, create_time, status) VALUES ('2', 'test', '7a38c13ec5e9310aed731de58bbc4214', '2019-11-13 08:11:09', '1');

CREATE TABLE t_user_role
(
    id      varchar(36) NULL,
    user_id varchar(36) NULL,
    role_id varchar(36) NULL
);

INSERT INTO test_shiro.t_user_role (id, user_id, role_id) VALUES ('1', '1', '1');
INSERT INTO test_shiro.t_user_role (id, user_id, role_id) VALUES ('2', '2', '2');
