-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-18 17:50:43
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
  `money` int(11) NOT NULL COMMENT '挂号费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `doctors`
--

INSERT INTO `doctors` (`did`, `dname`, `dtype`, `com_grade`, `order_count`, `skill`, `skill_tags`, `isQuestion`, `money`) VALUES
(1, '吴凡', '混子医生', '0.1', 1, '混着', '关节炎,股骨头坏死', 1, 100),
(2, '阿砍', '废物医生', '0.1', 1, '砍人', '关节炎,股骨头坏死', 1, 100);

-- --------------------------------------------------------

--
-- 表的结构 `doctor_orders`
--

CREATE TABLE `doctor_orders` (
  `do_id` int(11) NOT NULL COMMENT '医生预约信息编号',
  `uid` int(11) NOT NULL COMMENT '用户编号',
  `did` int(11) NOT NULL COMMENT '医生编号',
  `order_number` int(11) NOT NULL COMMENT '用户预约号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `doctor_orders`
--

INSERT INTO `doctor_orders` (`do_id`, `uid`, `did`, `order_number`) VALUES
(1, 1, 1, 2),
(2, 2, 1, 1),
(3, 1, 1, 3),
(4, 1, 1, 4);

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
-- 表的结构 `healthy_number`
--

CREATE TABLE `healthy_number` (
  `hn_id` int(11) NOT NULL COMMENT '健康号咨询文章id',
  `author` varchar(12) NOT NULL COMMENT '作者名称',
  `authorType` varchar(12) NOT NULL COMMENT '医生类型(主治医师/副主任医师)',
  `authorPic` varchar(128) NOT NULL COMMENT '医生头像',
  `send_time` bigint(20) NOT NULL COMMENT '发表时间',
  `title` varchar(128) NOT NULL COMMENT '文章标题',
  `content` varchar(1024) NOT NULL COMMENT '文章内容',
  `content_pic` varchar(128) NOT NULL COMMENT '内容图片',
  `tag` varchar(128) NOT NULL COMMENT '标题',
  `commend_count` int(11) NOT NULL COMMENT '评论数量',
  `good_count` int(11) NOT NULL COMMENT '点赞数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `healthy_number`
--

INSERT INTO `healthy_number` (`hn_id`, `author`, `authorType`, `authorPic`, `send_time`, `title`, `content`, `content_pic`, `tag`, `commend_count`, `good_count`) VALUES
(1, '乔贵宾', '主任医师', 'images/jkh/01.jpg', 1573974396580, '时常会胸痛，是不是得了肺癌？', '肺癌是一种恶性程度非常高的肿瘤,目前已经是我国恶性肿瘤里发病率和死亡率的第一位。由于肺癌没有特异性的临床症状，所以大多数肺癌一经发现，就已经是晚期了。胸痛就是肺癌吗？一旦肺癌出现症状，主要是由于肿瘤或者转移病灶压迫和侵犯正常的组织器官导致，比如说肿瘤压迫了肺、支气管，会出现咳嗽、咳痰、胸闷、气短。肿瘤侵犯了胸膜，会出现胸部疼痛。肿瘤破坏了血管，会导致咯血。因此，胸痛只是肺癌的一种症状。引起胸痛的原因也有很多，不只是肺癌一种疾病，还有其他肺源性的、心源性的、胃食管源性的、损伤性的等等。因此，如果出现胸痛，并不意味着是得了肺癌，要从疼痛的表现和各种检查综合判断。一般来说，肺癌引起的疼痛是肿瘤侵犯胸膜造成的，这种疼痛一般比较固定，疼痛往往跟运动和肢体姿势的改变没有关系。疼痛时没有心慌、心跳异常和血压改变，也与饮食和消化没有关系。肺癌会导致胳膊疼吗？肺癌所引起的症状主要是由于肿瘤局部生长侵犯神经或局部软组织造成的严重疼痛，或肿瘤转移到远处部位出现的症状，比如转移到脑，会出现头痛、头晕，转移到骨头，会出现骨骼疼痛。因此，肺癌导致胳膊痛是有可能的。可能的原因是肿瘤已经转移到了胳膊的骨头，或者位于肺', 'images/jkh/con_01.jpg', '胸痛', 6, 5),
(2, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '食用油打开后能搁多久？', '很多人买油都喜欢买一大壶的食用油，而且我们往往也会认为，食用油包装上写的保质期是18个月或者更长，在这个期间，油的品质都是良好的。但其实，食用油开封后即使是在保质期内，也不一定就是安全的！那么，食用油开封后能保存多久呢？ 根据我国《食品标签通用标准》的规定：食用油包装上的保质期18个月是指其在规定条件下，在市场上作为商品可流通的期限。这18个月是指食用油未开封前的保质期，而产品一旦开盖之后，食用油的保质期就跟商标上的18个月没有关系了。而影响食用油保质期的因素有很多，其中最重要的3个是油的种类、油中添加的抗氧化剂和存放环境。 1、油的种类不同种类的油，有不同的天然抗氧化成分和脂肪酸，这些物质对食用油氧化稳定性产生不同的影响，因此不同种类的食用油开封后是有不同的开封保质期的。常见的5种食用油，变质难易程度，从易到难依次为：葵花籽油、大豆油、玉米油、菜籽油、花生油。 2、油中添加的抗氧化剂研究发现，正常生活环境下，没添加抗氧化剂的食用油在开封2个月后一般都会达到变质的临界点。再过几天，就会出现油脂酸败特有的“哈喇味”。除了上面所说的食用油本身含有的天然抗氧化剂', 'images/jkh/con_02.jpg', '衰老', 48, 25),
(3, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '空腹能不能吃汤圆？无糖汤圆不“胖人”吗？', '大年已经过去，大家也吃吃喝喝了不少东西。一跨过初十，就开始盼着元宵，也盼着那碗热腾腾的汤圆。那么，吃汤圆有哪些事情要注意呢？怎么吃才不会吃坏肚子呢？说说汤圆的营养成分汤圆包括了外皮、馅料这2种组成，其营养成分各有不同。外皮：汤圆的外皮主要由糯米粉加水揉搓而成，从《中国食物成分表（2002）》可知，糯米含78.3%碳水化合物、1%脂肪、7.9%蛋白质。因为糯米所含的碳水化合物多为支链淀粉，在胃里的分解速度较快，升糖指数较高，所以，高血糖者吃汤圆后，一定要减少相应主食的量，一般来说，3个汤圆所用的糯米粉相当于1两米饭所用的米。馅料：在汤圆制作的过程中，需要加入馅料。市场上常见的馅料有：芝麻、花生、红豆、紫薯、水果等。调制馅料时，须加入大量的白砂糖和黄油。这就导致汤圆的热量和含油量大大增高了。所以，对于高脂血症者、体重过高者（或自觉体重过高者）、痛风者，都不宜食用过多。如果实在想吃，可以用无馅的汤圆替代，或是以快步走1小时的运动量消耗掉这些能量。空腹能不能吃汤圆？经常能听到这样的说法，即空腹不能吃汤圆，否则会消化不良。其实，少量地吃，再喝一些汤还是没问题的。但有一点要注意，不要把汤圆作为主食', 'images/jkh/con_03.jpg', '高脂血', 59, 17),
(4, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '尿尿次数多，就是肾不好？', '天气湿冷，尿频的现象变得更常见了，但是，对于爱喝水的人来说，有可能就是个大写的尴尬，几分钟尿过几分钟又尿，到底怎么回事，是肾不好吗？ 正常排尿指标正常成年人白天平均排尿3~6次，夜间0~1次，属于正常。如果平日排尿次数日间≥6次，夜间≥2次，每次尿量<200毫升时，那就可以考虑是尿频了，但不能肯定是肾出了问题。 水喝多了算尿频吗？在正常生理情况下，如果大量饮水，由于进水量增加，尿量也会增多，排尿次数也会增多。很不幸，这也是尿频的一种。不过，请注意，这是生理性的，无需太过担心，适当控制饮水量就可以了。但是，如果你不仅仅是喝了水想尿，平时你动不动也想尿，且一天排尿超过8次，那就可能是真的尿频了。 尿频，是感染了吗？尿频，不一定是肾有问题，只有尿频并且尿常规检查中尿蛋白也高的，才可能提示肾出了毛病。女性尿频，常见的原因是尿路感染。女性的尿道比较短，尿道开口和肛门距离近，容易发生尿路感染。另外，阴道炎、巨大子宫肌瘤、妊娠时子宫压迫膀胱，都可能引起女性尿频。对男性来讲，前列腺毛病是引起尿频的主要因素之一。如果是尿路感染和前列腺疾病而引起的尿频，及时对症支持治疗', 'images/jkh/con_04.jpg', '感染', 33, 21),
(5, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜皮肤差了、脾气大了、月经不调了……是卵巢早衰吗？', '有句话说：“卵巢养好，女人不老。”虽然这话夸张了点，但卵巢的确与女性的健康息息相关，它和子宫一起，成为保证女性“有女人味”的关键所在。山东省立第三医院白田雨医生表示：关爱女性健康，从关爱卵巢开始，从正确应对卵巢早衰开始。卵巢健康很重要！打开电脑输入“卵巢”，可以看到铺天盖地的“卵巢保养”广告、各种耸人听闻的“卵巢早衰”新闻……卵巢到底怎么了？来聊聊吧！卵巢主要有两个功能卵巢是女性性腺，主要也就两个功能：第一，   内分泌功能。卵巢中的生长的卵泡可以产生雌激素，这些激素就像润滑油，可以有效协调体内器官组织的正常运转，预防各种器官组织的磨损和老化。所以说，卵巢的分泌功能，其实就是保持女性年轻、活力与美丽的容颜。第二，   生殖功能。通俗地讲，就是排卵，保证女性正常受孕。女性一生能够提供的成熟卵子大约有400-500个，这个数目从出生开始就基本固定了，一般情况，每个月只有一枚卵泡能发育成熟为卵子，当然，每个人具体情况并不相同。所有卵子排完了，也就绝经了，后天很难改变。卵巢早衰八大原因卵巢说到底还是一个身体器官，随着时间的推移，它也会慢慢从活跃到衰老', 'images/jkh/con_05.jpg', '感染', 33, 21),
(6, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(7, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(8, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(9, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(10, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(11, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(12, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '空腹能不能吃汤圆？无糖汤圆不“胖人”吗？', '大年已经过去，大家也吃吃喝喝了不少东西。一跨过初十，就开始盼着元宵，也盼着那碗热腾腾的汤圆。那么，吃汤圆有哪些事情要注意呢？怎么吃才不会吃坏肚子呢？说说汤圆的营养成分汤圆包括了外皮、馅料这2种组成，其营养成分各有不同。外皮：汤圆的外皮主要由糯米粉加水揉搓而成，从《中国食物成分表（2002）》可知，糯米含78.3%碳水化合物、1%脂肪、7.9%蛋白质。因为糯米所含的碳水化合物多为支链淀粉，在胃里的分解速度较快，升糖指数较高，所以，高血糖者吃汤圆后，一定要减少相应主食的量，一般来说，3个汤圆所用的糯米粉相当于1两米饭所用的米。馅料：在汤圆制作的过程中，需要加入馅料。市场上常见的馅料有：芝麻、花生、红豆、紫薯、水果等。调制馅料时，须加入大量的白砂糖和黄油。这就导致汤圆的热量和含油量大大增高了。所以，对于高脂血症者、体重过高者（或自觉体重过高者）、痛风者，都不宜食用过多。如果实在想吃，可以用无馅的汤圆替代，或是以快步走1小时的运动量消耗掉这些能量。空腹能不能吃汤圆？经常能听到这样的说法，即空腹不能吃汤圆，否则会消化不良。其实，少量地吃，再喝一些汤还是没问题的。但有一点要注意，不要把汤圆作为主食', 'images/jkh/con_03.jpg', '高脂血', 59, 17),
(13, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '尿尿次数多，就是肾不好？', '天气湿冷，尿频的现象变得更常见了，但是，对于爱喝水的人来说，有可能就是个大写的尴尬，几分钟尿过几分钟又尿，到底怎么回事，是肾不好吗？ 正常排尿指标正常成年人白天平均排尿3~6次，夜间0~1次，属于正常。如果平日排尿次数日间≥6次，夜间≥2次，每次尿量<200毫升时，那就可以考虑是尿频了，但不能肯定是肾出了问题。 水喝多了算尿频吗？在正常生理情况下，如果大量饮水，由于进水量增加，尿量也会增多，排尿次数也会增多。很不幸，这也是尿频的一种。不过，请注意，这是生理性的，无需太过担心，适当控制饮水量就可以了。但是，如果你不仅仅是喝了水想尿，平时你动不动也想尿，且一天排尿超过8次，那就可能是真的尿频了。 尿频，是感染了吗？尿频，不一定是肾有问题，只有尿频并且尿常规检查中尿蛋白也高的，才可能提示肾出了毛病。女性尿频，常见的原因是尿路感染。女性的尿道比较短，尿道开口和肛门距离近，容易发生尿路感染。另外，阴道炎、巨大子宫肌瘤、妊娠时子宫压迫膀胱，都可能引起女性尿频。对男性来讲，前列腺毛病是引起尿频的主要因素之一。如果是尿路感染和前列腺疾病而引起的尿频，及时对症支持治疗', 'images/jkh/con_04.jpg', '感染', 33, 21),
(14, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜皮肤差了、脾气大了、月经不调了……是卵巢早衰吗？', '有句话说：“卵巢养好，女人不老。”虽然这话夸张了点，但卵巢的确与女性的健康息息相关，它和子宫一起，成为保证女性“有女人味”的关键所在。山东省立第三医院白田雨医生表示：关爱女性健康，从关爱卵巢开始，从正确应对卵巢早衰开始。卵巢健康很重要！打开电脑输入“卵巢”，可以看到铺天盖地的“卵巢保养”广告、各种耸人听闻的“卵巢早衰”新闻……卵巢到底怎么了？来聊聊吧！卵巢主要有两个功能卵巢是女性性腺，主要也就两个功能：第一，   内分泌功能。卵巢中的生长的卵泡可以产生雌激素，这些激素就像润滑油，可以有效协调体内器官组织的正常运转，预防各种器官组织的磨损和老化。所以说，卵巢的分泌功能，其实就是保持女性年轻、活力与美丽的容颜。第二，   生殖功能。通俗地讲，就是排卵，保证女性正常受孕。女性一生能够提供的成熟卵子大约有400-500个，这个数目从出生开始就基本固定了，一般情况，每个月只有一枚卵泡能发育成熟为卵子，当然，每个人具体情况并不相同。所有卵子排完了，也就绝经了，后天很难改变。卵巢早衰八大原因卵巢说到底还是一个身体器官，随着时间的推移，它也会慢慢从活跃到衰老', 'images/jkh/con_05.jpg', '感染', 33, 21),
(15, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(16, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(17, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(18, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(19, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(20, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(21, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(22, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(23, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(24, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(25, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(26, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(27, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(28, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(29, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(30, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(31, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(32, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(33, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(34, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(35, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(36, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(37, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(38, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '艾滋病男炫耀感染大二女生，你怎么看？', '前段时间，社交平台关于“艾滋病渣男炫耀又感染一名大二女生”的事件引起公愤，从他晒出的截图内容中可以看出，该男子并不是第一次为了传播艾滋病而与他人发生性关系。网友议论纷纷，有人责怪女孩儿不洁身自好，但更多的人表达的是对该男子的谴责以及愤怒。近些年，类似的故意传播艾滋病事件时有发生，艾滋病也受到越来越多的关注。但我国目前的艾滋病现状不容乐观，根据最新数据显示，截止2018年6月30日，我国新发现82万多名艾滋病病毒感染者和艾滋病人，比去年同期增长14%。，而其中性传播占93%。青年学生群体感染艾滋病仍然让人担忧，虽然近几年增长有所放缓，但每年仍有3000多新发病例。这不禁让人联想到故意传播艾滋病的话题。他们为什么要将艾滋病传给他人呢？其实从心理方面，我们不难得出结论。众所周知，艾滋病是不能被治愈的，现阶段没有任何方法可彻底消灭HIV，治疗只是可以让病毒维持在较低水平，并且帮助免疫系统正常工作。感染了艾滋病，在一般人眼中，那就意味着死亡，而他们也是被别人感染的，心中自然充满仇恨，所以才产生报复的念头。还有的则是因为外界的影响，比如歧视、抵触等原因，产生恶意。所以我们应该给予艾滋病人更多的关爱', 'images/jkh/con_06.jpg', '感染', 33, 21),
(39, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21),
(40, '真相放大镜', '微医官方', 'images/jkh/01.jpg', 1573974396580, '医生说｜这样的腰背痛要当心，不要把椎管内肿瘤当腰椎病！', '日常生活中，腰酸背痛是很平常的症状。提起腰酸背痛，绝大多数人第一反应肯定是腰椎不好了，比如说腰椎间盘突出症、颈椎病、腰肌劳损等较为常见的疾病。但其实，经常腰酸背痛还可能是肿瘤在作怪！上海市光华中西医结合医院贾永伟主任想和大家谈谈被忽视的腰背痛元凶——脊柱椎管内肿瘤！脊柱椎管内肿瘤是怎么回事？脊柱椎管内肿瘤是指发生于脊髓本身及椎管内与脊髓邻近的组织的原发性或继发性肿瘤的总称。我们都知道，脊柱是身体的支柱，它位于背部正中，由一节节椎骨构成。上下椎骨中间的锥孔相连，就形成了一种管状结构，那就是椎管。椎管里包裹着脊髓，与大脑相通。大脑的信号都是通过脊髓传给全身各处的，同时也可以收集来自全身各处的活动信号。为了保护脊髓，我们的椎管内还有一层层的膜性结构，叫硬脊膜，硬脊膜由脑脊液浸润，将脊髓包裹在里面。脊柱椎管内肿瘤就是长在这些组织结构的。临床上按照肿瘤与脊髓和硬脊膜的关系分为髓内、髓外硬脊膜下、硬脊膜外肿瘤及哑铃型肿瘤。 1.  髓内肿瘤：约占椎管内肿瘤的15%，多为原发性肿瘤，常见类型为室管膜瘤和星型细胞瘤。继发性的髓内肿瘤比较少，常为转移瘤。2. 髓外硬脊膜下肿瘤：约占椎', 'images/jkh/con_07.jpg', '感染', 33, 21);

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
  `way` varchar(1024) NOT NULL COMMENT '乘车路线',
  `hweb` varchar(48) NOT NULL COMMENT '医院网址',
  `contact_phone` varchar(20) NOT NULL COMMENT '联系电话'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hospitals`
--

INSERT INTO `hospitals` (`hid`, `hname`, `hrank`, `hmajor`, `comment_msg`, `hpic`, `start_time`, `order_count`, `order_cycle`, `address`, `details`, `way`, `hweb`, `contact_phone`) VALUES
(1, '中国人民解放军总医院301医院', '三级甲等', '综合医院', '全国综合榜患者好评第2名', 'images\\index\\hospitals\\01.png', '18:30', 223, 28, '北京市海淀区复兴路28号', '中国人民解放军总医院（301医院）创建于1953年，是集医疗、保健、教学、科研于一体的大型现代化综合性医院。医院是中央重要保健基地，承担军委、总部等多个体系单位、官兵的医疗保健和各军区、军兵种转诊、后送的疑难病诊治任务。医院同时又是解放军医学院，以研究生教育为主，是全军唯一一所医院办学单位。', '乘地铁1号线在五棵松下车，步行至医院；817、370、728、620、870、747、605、711、624、373、436、小50路、小68路、337、212、905、831、748 、804、小1路、967五棵松或五棵松桥东下车，步行至医院', 'http://www.301hospital.com.cn/', '010-66887329'),
(2, '北京大学人民医院', '三级甲等', '综合医院', '', 'images\\index\\hospitals\\02.png', '18:30', 223, 28, '北京市西城区西直门南大街11号', '北京大学人民医院创建于1918年1月27日，当时定名为\\\"北京中央医院\\\"，是第一家由中国人自己筹资、建设、管理的现代综合性医院，中国现代医学先驱伍连德博士为首任院长。在90年的发展历程中，医院几经更名，2000年定名为\\\"北京大学人民医院\\\"。 在医院的悠久历史中，伍连德、钟惠澜、林巧稚、关颂韬、谢元甫、孟继懋、谢志光、司徒展、吴阶平、林斯馨、冯传汉、黄萃庭、陆道培等老一辈医学名家为医院的发展付出了智慧与心血，他们是医院骄傲的旗帜。在一代代勤恳敬业、精益求精、热忱负责的\\\"人民人\\\"共同努力下，医院已经从创建之初仅有床位150张、日均门诊量200人次的较小规模逐渐发展为拥有床位1448张、年均门(急)诊量150余万人次，集医疗、教学、科研为一体的现代化的大型综合性医院。 目前，医院有正式职工2396人，其中中国工程院院士1名、高级职称专家442名。医院设有38个临床科室、13个医技科室，其中血液内科、心血管内科、骨科、妇产科、眼科、泌尿外科、儿科、皮肤科、风湿免疫科、肾内科等10个医科为国家级重点学科。', '乘44、387、21、939、719、743、748、800、702、618等路公交车，西直门站下车即达。另有地铁西直门站、375、902、904、105、111、107等路公交车也可到达', 'http://www.301hospital.com.cn/', '010-66887329'),
(3, '中国医学科学院肿瘤医院', '三级甲等', '肿瘤医院', '', 'images\\index\\hospitals\\03.png', '18:30', 28, 28, '北京市朝阳区潘家园南里17号', '中国医学科学院肿瘤医院肿瘤研究所，始建于1958年，原名日坛医院，1963年增设肿瘤研究所，此后又相继建立了河南林州、江苏启东等肿瘤高发防治现场。1983年迁至北京市东南龙潭湖畔，正式更名为中国医学科学院肿瘤医院肿瘤研究所，1996年通过三级甲等医院评审。院所是建国以来第一个肿瘤专科医院，是亚洲地区最大的肿瘤防治研究中心，也是国家药品监督管理局国家药品临床研究基地。院所集肿瘤医疗、科研、教学为一体，全方面进行肿瘤的预防、诊断及治疗的研究。', '特3、37、51、122、434、754、800路公交车，肿瘤医院站下车即到', 'http://www.301hospital.com.cn/', '010-66887329'),
(4, '中国医学科学院阜外医院', '三级甲等', '心血管医院', '', 'images\\index\\hospitals\\04.png', '18:30', 30, 28, '北京市西城区北礼士路167号', '中国医学科学院阜外医院建于1956年，位于北京市西城区北礼士路167号，是一所集医疗、教学、科研、预防为一体的三级甲等心血管病专科医院，也是国家心血管病中心、心血管疾病国家重点实验室、国家心血管疾病临床医学研究中心所在地。  医院总用地面积4.1万平方米，现有总建筑面积5.3万平方米。现有在职正式职工2906人，正副教授302人。设有内科、外科、影像3个临床管委会，18个心血管病临床诊疗中心及科室，11个科研部门及重点实验室，10个医技科室，23个行政党群处室，37个病房，19个手术间，2个杂交手术室，11个导管室，实际开放床位962张。医院配备了血管造影机、双源CT、核磁共振、PET-CT等与世界接轨的医疗、科研设备。  医院是世界最大心脏病诊治中心之一，以诊治各种复杂、疑难和重症心血管病而享誉国内外。', '乘坐公交13、19、21、42、44、37、56、61、101、102、103、运通106、121、335、336、387、409、423、456、490、603、604、618、650、685、691、714、743、746、800、814、823、849、850、939路即可到达', 'http://www.301hospital.com.cn/', '010-66887329');

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
(1, '13800000000', NULL, NULL, '000000', NULL, NULL, NULL, 1573717441625),
(2, '13811111111', NULL, NULL, '000000', NULL, NULL, NULL, 1573717441625);

-- --------------------------------------------------------

--
-- 表的结构 `user_orders`
--

CREATE TABLE `user_orders` (
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
-- 转存表中的数据 `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `uid`, `did`, `hname`, `class_name`, `class_subname`, `order_number`, `order_time`) VALUES
(1, 1, 1, '北京医院', '骨科', '骨科', 1, 1573721671084),
(2, 2, 2, '天津医院', '精神科', '神经病', 1, 1573721671084),
(6, 1, 1, '北京301', '骨科', '骨科', 3, 1574095681376),
(7, 1, 1, '北京301', '骨科', '骨科', 4, 1574095694102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `doctor_orders`
--
ALTER TABLE `doctor_orders`
  ADD PRIMARY KEY (`do_id`);

--
-- Indexes for table `healthy_choice`
--
ALTER TABLE `healthy_choice`
  ADD PRIMARY KEY (`healthy_id`);

--
-- Indexes for table `healthy_number`
--
ALTER TABLE `healthy_number`
  ADD PRIMARY KEY (`hn_id`);

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
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
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
-- 使用表AUTO_INCREMENT `doctor_orders`
--
ALTER TABLE `doctor_orders`
  MODIFY `do_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '医生预约信息编号', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `healthy_choice`
--
ALTER TABLE `healthy_choice`
  MODIFY `healthy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '健康精选信息编号', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `healthy_number`
--
ALTER TABLE `healthy_number`
  MODIFY `hn_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '健康号咨询文章id', AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '医院编号', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `hospitals_class`
--
ALTER TABLE `hospitals_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '科室编号';

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
