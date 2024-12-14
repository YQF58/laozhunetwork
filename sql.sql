-- 更新数据库表结构

-- 确保 users 表包含 username 和 email 字段
ALTER TABLE users 
    ADD COLUMN username VARCHAR(255) NOT NULL AFTER id,
    ADD COLUMN email VARCHAR(255) NOT NULL AFTER username;

-- 确保 domains 表包含 user_id, domain_suffix, purpose 和 ip_address 字段
ALTER TABLE domains 
    ADD COLUMN user_id INT(11) NOT NULL AFTER id,
    ADD COLUMN domain_suffix VARCHAR(255) NOT NULL AFTER user_id,
    ADD COLUMN purpose VARCHAR(255) NOT NULL AFTER domain_suffix,
    ADD COLUMN ip_address VARCHAR(255) NOT NULL AFTER purpose;

-- 创建外键约束，确保 domains 表中的 user_id 引用 users 表中的 id
ALTER TABLE domains 
    ADD CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE;

-- 如果需要，也可以检查并确保 id 字段自增长（如果没有的话）
ALTER TABLE users MODIFY id INT AUTO_INCREMENT;
ALTER TABLE domains MODIFY id INT AUTO_INCREMENT;
