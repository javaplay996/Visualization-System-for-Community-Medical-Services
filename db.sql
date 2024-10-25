/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequyilliaofuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequyilliaofuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequyilliaofuwu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-09 13:41:24'),(2,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-09 13:41:24'),(3,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-05-09 13:41:24'),(4,'tijianxiangmu_types','项目类型',1,'项目类型1',NULL,NULL,'2023-05-09 13:41:24'),(5,'tijianxiangmu_types','项目类型',2,'项目类型2',NULL,NULL,'2023-05-09 13:41:24'),(6,'tijianxiangmu_types','项目类型',3,'项目类型3',NULL,NULL,'2023-05-09 13:41:24'),(7,'tijianxiangmu_yuyue_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-05-09 13:41:24'),(8,'tijianxiangmu_yuyue_yesno_types','审核状态',2,'同意',NULL,NULL,'2023-05-09 13:41:24'),(9,'tijianxiangmu_yuyue_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-05-09 13:41:24'),(10,'tijianxiangmu_yuyue_types','预约状态',99,'待审核',NULL,NULL,'2023-05-09 13:41:24'),(11,'tijianxiangmu_yuyue_types','预约状态',100,'审核拒绝',NULL,NULL,'2023-05-09 13:41:24'),(12,'tijianxiangmu_yuyue_types','预约状态',101,'已预约',NULL,NULL,'2023-05-09 13:41:24'),(13,'tijianxiangmu_yuyue_types','预约状态',102,'已取消',NULL,NULL,'2023-05-09 13:41:24'),(14,'tijianxiangmu_yuyue_types','预约状态',103,'已完成',NULL,NULL,'2023-05-09 13:41:24'),(15,'sex_types','性别',1,'男',NULL,NULL,'2023-05-09 13:41:24'),(16,'sex_types','性别',2,'女',NULL,NULL,'2023-05-09 13:41:24');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-05-09 13:41:34','公告详情1','2023-05-09 13:41:34'),(2,'公告标题2',2,'upload/news2.jpg','2023-05-09 13:41:34','公告详情2','2023-05-09 13:41:34'),(3,'公告标题3',1,'upload/news3.jpg','2023-05-09 13:41:34','公告详情3','2023-05-09 13:41:34'),(4,'公告标题4',1,'upload/news4.jpg','2023-05-09 13:41:34','公告详情4','2023-05-09 13:41:34'),(5,'公告标题5',1,'upload/news5.jpg','2023-05-09 13:41:34','公告详情5','2023-05-09 13:41:34'),(6,'公告标题6',3,'upload/news6.jpg','2023-05-09 13:41:34','公告详情6','2023-05-09 13:41:34'),(7,'公告标题7',2,'upload/news7.jpg','2023-05-09 13:41:34','公告详情7','2023-05-09 13:41:34'),(8,'公告标题8',2,'upload/news8.jpg','2023-05-09 13:41:34','公告详情8','2023-05-09 13:41:34'),(9,'公告标题9',1,'upload/news9.jpg','2023-05-09 13:41:34','公告详情9','2023-05-09 13:41:34'),(10,'公告标题10',2,'upload/news10.jpg','2023-05-09 13:41:34','公告详情10','2023-05-09 13:41:34'),(11,'公告标题11',3,'upload/news11.jpg','2023-05-09 13:41:34','公告详情11','2023-05-09 13:41:34'),(12,'公告标题12',1,'upload/news12.jpg','2023-05-09 13:41:34','公告详情12','2023-05-09 13:41:34'),(13,'公告标题13',3,'upload/news13.jpg','2023-05-09 13:41:34','公告详情13','2023-05-09 13:41:34'),(14,'公告标题14',2,'upload/news14.jpg','2023-05-09 13:41:34','公告详情14','2023-05-09 13:41:34');

/*Table structure for table `tijianxiangmu` */

DROP TABLE IF EXISTS `tijianxiangmu`;

CREATE TABLE `tijianxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tijianxiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `tijianxiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `tijianxiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `tijianxiangmu_jingfei` decimal(10,2) DEFAULT NULL COMMENT '体检费用',
  `tijianxiangmu_content` longtext COMMENT '体检详情',
  `tijianxiangmu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='体检项目';

/*Data for the table `tijianxiangmu` */

insert  into `tijianxiangmu`(`id`,`tijianxiangmu_uuid_number`,`tijianxiangmu_name`,`tijianxiangmu_types`,`tijianxiangmu_jingfei`,`tijianxiangmu_content`,`tijianxiangmu_delete`,`insert_time`,`create_time`) values (1,'1683610894376','项目名称1',2,'574.63','体检详情1',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(2,'1683610894348','项目名称2',2,'322.25','体检详情2',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(3,'1683610894364','项目名称3',3,'957.74','体检详情3',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(4,'1683610894365','项目名称4',3,'625.97','体检详情4',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(5,'1683610894331','项目名称5',1,'443.60','体检详情5',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(6,'1683610894328','项目名称6',3,'725.99','体检详情6',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(7,'1683610894321','项目名称7',1,'151.71','体检详情7',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(8,'1683610894336','项目名称8',2,'450.49','体检详情8',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(9,'1683610894373','项目名称9',3,'963.55','体检详情9',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(10,'1683610894367','项目名称10',2,'0.84','体检详情10',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(11,'1683610894354','项目名称11',3,'26.28','体检详情11',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(12,'1683610894378','项目名称12',2,'325.14','体检详情12',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(13,'1683610894336','项目名称13',1,'448.76','体检详情13',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(14,'1683610894329','项目名称14',1,'656.86','体检详情14',1,'2023-05-09 13:41:34','2023-05-09 13:41:34');

/*Table structure for table `tijianxiangmu_yuyue` */

DROP TABLE IF EXISTS `tijianxiangmu_yuyue`;

CREATE TABLE `tijianxiangmu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijianxiangmu_id` int(11) DEFAULT NULL COMMENT '体检项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tijianxiangmu_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约日期',
  `tijianxiangmu_yuyue_text` longtext COMMENT '预约备注',
  `tijianxiangmu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `tijianxiangmu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `tijianxiangmu_yuyue_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='体检项目预约';

/*Data for the table `tijianxiangmu_yuyue` */

insert  into `tijianxiangmu_yuyue`(`id`,`tijianxiangmu_id`,`yonghu_id`,`tijianxiangmu_yuyue_time`,`tijianxiangmu_yuyue_text`,`tijianxiangmu_yuyue_yesno_types`,`tijianxiangmu_yuyue_yesno_text`,`tijianxiangmu_yuyue_types`,`insert_time`,`create_time`) values (1,1,1,'2023-05-09 13:41:34','预约备注1',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(2,2,1,'2023-05-09 13:41:34','预约备注2',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(3,3,3,'2023-05-09 13:41:34','预约备注3',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(4,4,3,'2023-05-09 13:41:34','预约备注4',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(5,5,3,'2023-05-09 13:41:34','预约备注5',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(6,6,1,'2023-05-09 13:41:34','预约备注6',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(7,7,1,'2023-05-09 13:41:34','预约备注7',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(8,8,2,'2023-05-09 13:41:34','预约备注8',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(9,9,1,'2023-05-09 13:41:34','预约备注9',3,'1111',100,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(10,10,3,'2023-05-09 13:41:34','预约备注10',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(11,11,3,'2023-05-09 13:41:34','预约备注11',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(12,12,3,'2023-05-09 13:41:34','预约备注12',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(13,13,2,'2023-05-09 13:41:34','预约备注13',1,NULL,99,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(14,14,3,'2023-05-09 13:41:34','预约备注14',3,'1',100,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(15,14,1,'2023-05-10 13:00:00','123',2,'1111111',102,'2023-05-09 15:07:15','2023-05-09 15:07:15'),(16,14,1,'2023-05-10 18:00:00','123',2,'123123',103,'2023-05-09 15:38:42','2023-05-09 15:38:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','hhj58vu64pfwvn7dv98nl3vmffuzd4c4','2023-05-09 14:16:06','2023-05-09 16:40:49'),(2,1,'admin','users','管理员','sj5kwgo8trtx4n11o5941e5wlsq9im0n','2023-05-09 15:17:39','2023-05-09 16:43:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-09 13:41:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_uuid_number`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_address`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'1683610894353','a1','123456','用户名称1','17703786901','upload/yonghu1.jpg',1,'1@qq.com','住址1',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(2,'1683610894348','a2','123456','用户名称2','17703786902','upload/yonghu2.jpg',2,'2@qq.com','住址2',1,'2023-05-09 13:41:34','2023-05-09 13:41:34'),(3,'1683610894323','a3','123456','用户名称3','17703786903','upload/yonghu3.jpg',2,'3@qq.com','住址3',1,'2023-05-09 13:41:34','2023-05-09 13:41:34');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
