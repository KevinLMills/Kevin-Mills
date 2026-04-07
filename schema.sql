-- ============================================================
-- Kevin Mills Portfolio Website - Database Schema
-- For use with PhpMyAdmin / MySQL
-- ============================================================

CREATE DATABASE IF NOT EXISTS kevin_mills_portfolio
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE kevin_mills_portfolio;

-- ------------------------------------------------------------
-- Table: users
-- Stores registered user accounts
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
    id            INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    first_name    VARCHAR(50)     NOT NULL,
    last_name     VARCHAR(50)     NOT NULL,
    email         VARCHAR(255)    NOT NULL UNIQUE,
    password_hash VARCHAR(255)    NOT NULL,   -- store bcrypt hash, never plaintext
    created_at    TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at    TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    INDEX idx_email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ------------------------------------------------------------
-- Sample data (passwords shown as plaintext for reference only;
-- in a real app these would be bcrypt hashes)
-- ------------------------------------------------------------
-- INSERT INTO users (first_name, last_name, email, password_hash) VALUES
--   ('Joe',   'Vandal', 'joe.vandal@uidaho.edu',  '$2y$12$HASHED_PASSWORD_HERE'),
--   ('Kevin', 'Mills',  'kevin@kevinlmills.com',   '$2y$12$HASHED_PASSWORD_HERE');
