IF DB_ID('WebProgrammingJWT') IS NOT NULL
BEGIN
    ALTER DATABASE WebProgrammingJWT SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    USE master
    DROP DATABASE WebProgrammingJWT;
END
GO

CREATE DATABASE WebProgrammingJWT;
GO

USE WebProgrammingJWT;
GO

CREATE TABLE users (
    id INT IDENTITY(1,1) NOT NULL,
    full_name NVARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    images NVARCHAR(500) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME2(6) NULL,
    updated_at DATETIME2(6) NULL,
    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT uk_users_email UNIQUE (email)
);
GO

INSERT INTO users (full_name, email, images, password, created_at, updated_at)
VALUES (N'Lê Đại Thông', '24110344@student.hcmute.edu.vn', N'/images/u1.jpg',
        '$2b$10$4GifWmd8CBjgTPB2wLWq2.MukKzfqL41SabSqwiX92keEyBQv7lEW', SYSDATETIME(), SYSDATETIME());
GO