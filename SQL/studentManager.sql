/*
SQLyog Ultimate v10.00 Beta1
MySQL - 8.0.19 : Database - ssm_student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm_student` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ssm_student`;

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `gender` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `portraitPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '存储头像的项目路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`id`,`name`,`gender`,`password`,`email`,`telephone`,`address`,`portraitPath`) values (1,'admin','男','admin','15052342456@qq.com','15052342456','重庆科技学院','90ebac4df77041e0b50a9b3759413960.png'),(2,'小刘','男','1999','278191281@qq.com','15927272677','重庆','8fb77c7722d34350b26e15220b6dabc8.jpg'),(21,'zyj','男','zyj','13625152161@qq.com','13625152161','江苏盐城','758de62398af406f8bd1f1dd403f1e81.jpg'),(24,'张三','男','zhangsan','zhangsan@qq.com','13908789765','北京','2512b45a6d46444abdba80fde3235f75.jpg'),(25,'make','男','123456','134234123@qq.com','18323194215','1省道',NULL);

/*Table structure for table `tb_student` */

DROP TABLE IF EXISTS `tb_student`;

CREATE TABLE `tb_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `portraitPath` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clazzName` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `tb_student_sno_uindex` (`sno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

/*Data for the table `tb_student` */

insert  into `tb_student`(`id`,`sno`,`name`,`gender`,`password`,`email`,`telephone`,`address`,`introduction`,`portraitPath`,`clazzName`) values (1,'17130316','smallz','男','smallz','smallZ@qq.com','15151831000','江苏南京','大学三年级学生','66a50adf73064dc4897b349f14f31cd5.jpg','软件工程4'),(6,'19029228','测试用例01','女','000000','13902907654@139.com','13902907654','南京','','','软件工程5'),(7,'18818111','测试用例01','男','11111','14008278171@qq.com','14008278171','徐州','','','软件工程4'),(8,'17176189','测试用例3','男','000000','17176189@qq.com','12716371211','南京','软件工程5','','软件工程5'),(9,'19029092','张三','男','19029092','19029092@qq.com','19029092213','南京','计算机科学与技术4','','计算机科学与技术4'),(12,'17190927','周芷若','女','10010','17190927@qq.com','13902921567','峨眉山','峨眉山掌门','5df71d120ae643b68632949bfe8908db.jpg','软件工程5'),(13,'123','测试用例','男','123456','1342357011@qq.com','13038312165','阿萨德','1232',NULL,'软件工程'),(14,'1231','张三','男','1231','1231232134@qq.com','12312321232','重庆','cosplay',NULL,''),(16,'232','www','男','13123','132142@qq.com','12321234212','重庆沙坪坝','',NULL,'计科');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
