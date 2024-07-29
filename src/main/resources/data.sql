# -- 테이블이 이미 존재하는 경우 삭제
# DROP TABLE IF EXISTS sleep_on_user;
#
# -- 테이블 생성
# CREATE TABLE sleep_on_user (
#                                id VARCHAR(45) NOT NULL,
#                                pass VARCHAR(45) NOT NULL,
#                                name VARCHAR(45) NOT NULL,
#                                age VARCHAR(45) NOT NULL,
#                                tel VARCHAR(45),
#                                manager CHAR(1) NOT NULL DEFAULT 'N',
#                                PRIMARY KEY (id)
# );

-- 데이터 삽입
INSERT INTO sleep_on_user (id, pass, name, age, tel, manager)
VALUES ('admin@sleepon.com', 'SleepOn1234', 'SleepOn 상담사', '2000-01-01', '010-1234-5678', 'Y');

INSERT INTO sleep_on_user (id, pass, name, age, tel, manager)
VALUES ('user1@gmail.com', 'user1234', 'User One', '2001-05-20', '010-1111-2222', 'N');
-- UserReservation 테이블 생성
-- CREATE TABLE IF NOT EXISTS sleep_on_user (
--                                              id VARCHAR(45) NOT NULL,
--     pass VARCHAR(45) NOT NULL,
--     name VARCHAR(45) NOT NULL,
--     age VARCHAR(45) NOT NULL,
--     tel VARCHAR(45),
--     manager CHAR(1) NOT NULL DEFAULT 'N',
--     PRIMARY KEY (id)
--     );
--
-- CREATE TABLE IF NOT EXISTS sleepOn_reservation (
--                                                    idx INT NOT NULL AUTO_INCREMENT,
--                                                    user_id VARCHAR(45) NOT NULL,
--     reserv_data DATETIME NOT NULL,
--     checkintime VARCHAR(45) NOT NULL,
--     checkouttime VARCHAR(45) NOT NULL,
--     contentId VARCHAR(45) NOT NULL,
--     reserv_cancel CHAR(1) NOT NULL DEFAULT 'N',
--     roomtitle VARCHAR(45) NOT NULL,
--     PRIMARY KEY (idx),
--     FOREIGN KEY (user_id) REFERENCES sleep_on_user (id)
--     );

# CREATE TABLE sleep_on_cancel (
#                                      idx INT NOT NULL AUTO_INCREMENT,
#                                      id VARCHAR(45) NOT NULL,
#                                      reserv_id INT NULL,
#                                      title VARCHAR(100) NOT NULL,
#                                      inquiry VARCHAR(2000) NOT NULL,
#                                      reply VARCHAR(2000) NULL,
#                                      create_date DATETIME NOT NULL,
#                                      reply_date DATETIME NULL,
#                                      PRIMARY KEY (idx),
#                                      FOREIGN KEY (id) REFERENCES sleep_on_user(id),
#                                      FOREIGN KEY (reserv_id) REFERENCES sleepOn_reservation(idx)
# );
