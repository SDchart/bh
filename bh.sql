SET NAMES UTF8;
DROP DATABASE IF EXISTS bhs;
CREATE DATABASE bhs CHARSET=UTF8;
USE bhs;
CREATE TABLE bhs_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32) UNIQUE NOT NULL,
    phone VARCHAR(16),
    upwd VARCHAR(16),
    email VARCHAR(32)
);
CREATE TABLE bhs_hg_ms(
    hgid INT PRIMARY KEY AUTO_INCREMENT,
    hgname VARCHAR(64) UNIQUE NOT NULL,
    hguptime BIGINT,
    hgprice INT,
    img VARCHAR(256),
    cont VARCHAR(512)
);
CREATE TABLE bhs_hg_ms_pic(
    hgimgid INT PRIMARY KEY AUTO_INCREMENT,
    hgmsid INT,
    hgimg VARCHAR(256),
    hgbanner VARCHAR(256),
    FOREIGN KEY(hgmsid) REFERENCES bhs_hg_ms(hgid)
)