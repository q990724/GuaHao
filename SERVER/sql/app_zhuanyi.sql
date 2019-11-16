-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-15 08:13:18
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_zhuanyi`
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

--
-- 转存表中的数据 `doctors`
--

INSERT INTO `doctors` (`did`, `dname`, `dtype`, `com_grade`, `order_count`, `skill`, `skill_tags`, `isQuestion`, `money`, `order_numbers`) VALUES
(1, '吴凡', '混子医生', '0.1', 1, '混着', '关节炎,股骨头坏死', 1, 100, '1'),
(2, '阿砍', '废物医生', '0.1', 1, '砍人', '关节炎,股骨头坏死', 1, 100, '1');

-- --------------------------------------------------------

--
-- 表的结构 `healthy_choice`
--

CREATE TABLE `healthy_choice` (
  `healthy_id` int(11) NOT NULL COMMENT '健康精选信息编号',
  `heal_title` varchar(32) NOT NULL COMMENT '信息标题',
  `heal_subtitle` varchar(24) NOT NULL COMMENT '信息副标题',
  `heal_pic` varchar(128) NOT NULL COMMENT '信息图片路径',
  `heal_authorName` varchar(12) NOT NULL COMMENT '作者名称',
  `isOriginal` tinyint(1) NOT NULL COMMENT '该文章是否原创',
  `publish_time` bigint(20) NOT NULL COMMENT '发表时间',
  `readed_count` int(11) NOT NULL COMMENT '阅读人数',
  `lead_msg` varchar(32) NOT NULL COMMENT '导语信息',
  `type_tags` varchar(128) NOT NULL COMMENT '文章所属类型标签 例子:衰老,肿瘤'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `healthy_choice`
--

INSERT INTO `healthy_choice` (`healthy_id`, `heal_title`, `heal_subtitle`, `heal_pic`, `heal_authorName`, `isOriginal`, `publish_time`, `readed_count`, `lead_msg`, `type_tags`) VALUES
(1, '食用油打开后还能保存多久？', '三大因素影响保质期', 'images\\index\\jkh\\1573632779837.jpg', '微医会员', 1, 1573727150767, 392, '三大因素影响保质期', '衰老,肿瘤,疾病介绍,会员生活'),
(2, '为什么癌症发现都是晚期？', '归根结底，原因有二', 'images\\index\\jkh\\1573539512418.jpg', '微医会员', 1, 1573727150767, 392, '归根结底，原因有二', '衰老,肿瘤,疾病介绍,会员生活'),
(3, '贫血的人常有的8种表现', '女人贫血时，男人该怎么办？', 'images\\index\\jkh\\1573462167382.jpg', '微医会员', 1, 1573727150767, 392, '归根结底，原因有二', '衰老,肿瘤,疾病介绍,会员生活');

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
-- 转存表中的数据 `user_order`
--

INSERT INTO `user_order` (`order_id`, `uid`, `did`, `hname`, `class_name`, `class_subname`, `order_number`, `order_time`) VALUES
(1, 1, 1, '北京医院', '骨科', '骨科', 1, 1573721671084),
(2, 1, 2, '天津医院', '精神科', '神经病', 1, 1573721671084);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `healthy_choice`
--
ALTER TABLE `healthy_choice`
  ADD PRIMARY KEY (`healthy_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hospitals_class`
--
ALTER TABLE `hospitals_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_order`
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
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT COMMENT '医生编号', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `healthy_choice`
--
ALTER TABLE `healthy_choice`
  MODIFY `healthy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '健康精选信息编号', AUTO_INCREMENT=4;

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
