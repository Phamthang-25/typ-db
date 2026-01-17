CREATE DATABASE IF NOT EXISTS studentdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE studentdb;

CREATE TABLE IF NOT EXISTS students (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  student_code VARCHAR(32) NOT NULL UNIQUE,
  full_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NULL,
  dob DATE NULL,
  class_name VARCHAR(64) NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO students (student_code, full_name, email, dob, class_name)
VALUES
('B26DCAT002', 'Nguyen Van An', 'annv@gmail.com', '2008-01-10', 'D26AT02'),
('B26DCAT015', 'Tran Thanh Binh', 'binhtt@gmail.com', '2008-06-21', 'D26AT05'),
('B26DCAT083', 'Hoang Viet Dung', 'dunghv@gmail.com', '2008-06-28', 'D26AT03'),
('B26DCAT085', 'Tran Van Dung', 'dungtv@gmail.com', '2008-02-12', 'D26AT05'),
('B26DCAT124', 'Hoang Van GIang', 'gianghv@gmail.com', '2008-03-18', 'D26AT04'),
('B26DCAT186', 'Pham Quang Minh', 'minhpq@gmail.com', '2008-02-09', 'D26AT01'),
('B26DCAT259', 'Dao Cong Son', 'sondc@gmail.com', '2008-11-23', 'D26AT04'),
('B26DCAT261', 'Mguyen Hoang Son', 'sonnh@gmail.com', '2008-05-22', 'D26AT01')
ON DUPLICATE KEY UPDATE full_name=VALUES(full_name);