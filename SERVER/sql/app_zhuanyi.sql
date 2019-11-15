-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： w.rdc.sae.sina.com.cn:3306
-- 生成日期： 2019-11-14 16:50:30
-- 服务器版本： 5.7.24-27-log
-- PHP 版本： 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `app_zhuanyi`
--

-- --------------------------------------------------------

--
-- 表的结构 `doctors`
--

CREATE TABLE `doctors` (
  `did` int(11) NOT NULL COMMENT '医生编号',
  `dname` varchar(10) NOT NULL COMMENT '医生姓名',
  `dtype` varchar(10) NOT NULL COMMENT '医生类型 主任医师/副主任医生',
  `com_grade` decimal(2,1) NOT NULL COMMENT '医生评分',
  `order_count` int(11) NOT NULL COMMENT '预约量',
  `skill` varchar(128) NOT NULL COMMENT '擅长',
  `skill_tags` varchar(128) NOT NULL COMMENT '擅长技能标签 例:关节炎,股骨头坏死,骨关节炎',
  `isQuestion` tinyint(1) NOT NULL COMMENT '该医生是否可在线问诊',
  `money` int(11) NOT NULL COMMENT '挂号费',
  `order_numbers` varchar(1024) NOT NULL COMMENT '医生的被预约号   每个医生最大预约数量100 数据例子:1,2,3,4 '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hospitals`
--

CREATE TABLE `hospitals` (
  `hid` int(11) NOT NULL COMMENT '医院编号',
  `hname` varchar(64) NOT NULL COMMENT '医院名称',
  `hrank` varchar(10) NOT NULL COMMENT '医院等级',
  `hmajor` varchar(10) NOT NULL COMMENT '主要专业',
  `comment_msg` varchar(32) NOT NULL COMMENT '好评信息',
  `hpic` varchar(512) NOT NULL COMMENT '医院图片',
  `start_time` varchar(32) NOT NULL COMMENT '放号时间',
  `order_count` int(11) NOT NULL COMMENT '预约总量',
  `order_cycle` tinyint(4) NOT NULL COMMENT '预约周期',
  `address` varchar(128) NOT NULL COMMENT '医院地址',
  `details` varchar(512) NOT NULL COMMENT '医院简介',
  `way` varchar(1024) NOT NULL COMMENT '乘车路线'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hospitals_class`
--

CREATE TABLE `hospitals_class` (
  `class_id` int(11) NOT NULL COMMENT '科室编号',
  `hid` int(11) NOT NULL COMMENT '医院编号',
  `recommend` varchar(64) DEFAULT NULL COMMENT '推荐科室',
  `inside` varchar(64) DEFAULT NULL COMMENT '内科',
  `outside` varchar(64) DEFAULT NULL COMMENT '外科',
  `bone` varchar(64) DEFAULT NULL COMMENT '骨科',
  `female` varchar(64) DEFAULT NULL COMMENT '妇产科',
  `kid` varchar(64) DEFAULT NULL COMMENT '儿科',
  `skin` varchar(64) DEFAULT NULL COMMENT '皮肤科',
  `eyes` varchar(64) DEFAULT NULL COMMENT '眼科',
  `ear` varchar(64) DEFAULT NULL COMMENT '耳鼻咽喉科',
  `mouth` varchar(64) DEFAULT NULL COMMENT '口腔科',
  `tumour` varchar(64) DEFAULT NULL COMMENT '肿瘤科',
  `cn` varchar(64) DEFAULT NULL COMMENT '中医科',
  `spirit` varchar(64) DEFAULT NULL COMMENT '精神科',
  `hocus` varchar(64) DEFAULT NULL COMMENT '麻醉科',
  `pain` varchar(64) DEFAULT NULL COMMENT '疼痛科',
  `recovery` varchar(64) DEFAULT NULL COMMENT '康复医学科',
  `image` varchar(64) DEFAULT NULL COMMENT '医学影像科',
  `pathology` varchar(64) DEFAULT NULL COMMENT '病理科',
  `nutrition` varchar(64) DEFAULT NULL COMMENT '营养科',
  `other` varchar(64) DEFAULT NULL COMMENT '其他'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL COMMENT '用户编号',
  `phone` varchar(24) NOT NULL COMMENT '手机号 都可用于登录  注册时必须',
  `uname` varchar(24) DEFAULT NULL COMMENT '用户名 都可用于登录  登录后可设置',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱   都可用于登录  登录后可设置',
  `upwd` varchar(32) NOT NULL COMMENT '登录密码  (用户名和邮箱登录时使用)',
  `upic` varchar(512) DEFAULT NULL COMMENT '用户头像',
  `user_name` varchar(10) DEFAULT NULL COMMENT '真实姓名  (实名认证后才有)',
  `ID` varchar(20) DEFAULT NULL COMMENT '身份证号码  (实名认证后才有)',
  `reg_time` bigint(20) NOT NULL COMMENT '注册时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `phone`, `uname`, `email`, `upwd`, `upic`, `user_name`, `ID`, `reg_time`) VALUES
(1, '13800000000', NULL, NULL, '000000', NULL, NULL, NULL, 1573717441625);

-- --------------------------------------------------------

--
-- 表的结构 `user_order`
--

CREATE TABLE `user_order` (
  `order_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户编号',
  `did` int(11) NOT NULL COMMENT '医生编号',
  `hname` varchar(64) NOT NULL COMMENT '医院名称',
  `class_name` varchar(10) NOT NULL COMMENT '科室类别名称',
  `class_subname` varchar(10) NOT NULL COMMENT '科室详细类别名称',
  `order_number` tinyint(4) NOT NULL COMMENT '预约号',
  `order_time` bigint(20) NOT NULL COMMENT '预约时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`did`);

--
-- 表的索引 `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`hid`);

--
-- 表的索引 `hospitals_class`
--
ALTER TABLE `hospitals_class`
  ADD PRIMARY KEY (`class_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 表的索引 `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`order_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `doctors`
--
ALTER TABLE `doctors`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT COMMENT '医生编号';

--
-- 使用表AUTO_INCREMENT `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '医院编号';

--
-- 使用表AUTO_INCREMENT `hospitals_class`
--
ALTER TABLE `hospitals_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '科室编号';

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `user_order`
--
ALTER TABLE `user_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
