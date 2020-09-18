/*
SQLyog Ultimate v8.32 
MySQL - 5.0.27-community : Database - db_patient
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_patient` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_patient`;

/*Table structure for table `t_doctor` */

DROP TABLE IF EXISTS `t_doctor`;

CREATE TABLE `t_doctor` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `idcard` varchar(255) character set latin1 default NULL,
  `birthday` varchar(255) character set latin1 default NULL,
  `ruzhi` varchar(255) character set latin1 default NULL,
  `keshi` varchar(255) default NULL,
  `tel` varchar(255) character set latin1 default NULL,
  `jianjie` varchar(255) default NULL,
  `imge` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_doctor` */

insert  into `t_doctor`(`id`,`name`,`sex`,`idcard`,`birthday`,`ruzhi`,`keshi`,`tel`,`jianjie`,`imge`) values (1,'萧山','男','61012118902134','1989-09-02','2018-09-09','内科','18792460444','技艺高超',NULL);

/*Table structure for table `t_ghinfo` */

DROP TABLE IF EXISTS `t_ghinfo`;

CREATE TABLE `t_ghinfo` (
  `ghId` int(11) NOT NULL auto_increment,
  `patientId` int(11) default NULL,
  `ghNo` varchar(20) NOT NULL,
  `date` date default NULL,
  `officeName` varchar(20) default NULL,
  `ghDesc` varchar(100) default NULL,
  PRIMARY KEY  (`ghId`,`ghNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_ghinfo` */

insert  into `t_ghinfo`(`ghId`,`patientId`,`ghNo`,`date`,`officeName`,`ghDesc`) values (38,36,'20130806203900','2013-08-08','外科','癌症'),(39,36,'20130806203955','2013-08-07','精神科','头晕眼花流鼻血'),(40,40,'20130806230648','2013-08-02','外科','流鼻血'),(42,41,'20130807080040','2013-08-07','五官科','耳鸣'),(48,37,'20130807150814','2013-08-16','精神科','头疼'),(50,41,'20130807151108','2013-08-15','精神科','失心疯'),(51,42,'20130807152759','2013-08-13','精神科','精神紊乱'),(52,42,'20130807181248','2013-08-10','精神科','精神科患者'),(53,35,'20200914100001','2020-09-14','外科','sas'),(54,35,'20200914160905','2020-09-15','儿科','has');

/*Table structure for table `t_keshi` */

DROP TABLE IF EXISTS `t_keshi`;

CREATE TABLE `t_keshi` (
  `keshi_id` int(11) NOT NULL,
  `keshi_name` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  `message` varchar(1000) default NULL,
  `intro` varchar(200) default NULL,
  `imgpath` varchar(200) default NULL,
  PRIMARY KEY  (`keshi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_keshi` */

insert  into `t_keshi`(`keshi_id`,`keshi_name`,`del`,`message`,`intro`,`imgpath`) values (1,'内科','no','我院内科是集内科系统各专业为一体的综合性科室。全科床位35张，目前医护人员7人，住院医生4人，护士3人。  科室承担着内儿科各专业的基础病、多发病、常见病的诊疗工作，擅长诊治心脑血管，高血压病，急性冠脉综合征（急性心肌梗塞、不稳定性心绞痛）、心力衰竭、脑卒中（出血性中风、缺血性中风）、支气管哮喘、慢性阻塞性肺疾病、肝病、糖尿病，肾病，内分泌疾病、以及各种儿科常见多发病等。    科室拥有心电监护仪，血糖仪，心电图机，电动吸痰器等先进医疗设备。一切\"以病人为中心”。“以质量为核心”，内儿科全体人员 竭诚为每位患者提供精准的治疗、精心的护理、贴心的服务、温暖的照顾。','我院内科是集内科系统各专业为一体的综合性科室。全科床位35张，目前医护人员7人，住院医生4……',NULL),(2,'外科','no','目前普外科主要以开展微创手术（即腔镜技术）为中心，常规开展腹腔镜胆囊切除术、腹腔镜阑尾切除术、腹腔镜肾切除术、腹腔镜胃穿孔修补术、腹腔镜精索静脉高位结扎术等腹腔镜手术，并积极准备进一步开展腹腔镜腹股沟疝充填式修补术、胸腔镜肺大疱修补术等微创手术。常规开展腹股沟疝无张力修补术、睾丸鞘膜翻转术、经尿道前列腺电切除术、脾切除术、大隐静脉高位结扎剥脱术、甲状腺切除术、痔内扎外剥术、PPH、胆总管探查术、肠切除吻合术、胆总管癌根治术、乳腺癌根治术、甲状腺癌根治术、肺癌根治术、食道癌根治术、胃癌根治术、结肠癌根治术、直肠癌根治术等高低端手术。并开展了肿瘤针对性放化疗。且与医技科室协作，开展了肝动脉栓塞术、脾动脉栓塞术、肝内胆管穿刺引流术、肾穿刺引流术等介入治疗。','目前普外科主要以开展微创手术（即腔镜技术）为中心，常规开展腹腔镜胆囊切除术、腹腔镜阑尾切除术……',NULL),(3,'骨科','no','本院目前开设创伤骨科、关节外科、修复重建、脊柱外科、运动医学科五个亚学科。医院自 2017 年 11 月 27 日开诊以来，仅半年多时间在海南已经开展了上百台椎间孔镜、关节镜等微创、复杂陈旧性骨科手术、复杂断肢（指）再植手术、复杂肢体创伤后功能重建及畸形矫形手术。','本院目前开设创伤骨科、关节外科、修复重建、脊柱外科、运动医学科五个亚学科。……',NULL),(4,'妇产科','no','妇产科是××市首批临床重点专科，拥有×个病区、开设床位××张，有专家团队××余人 ，其中主任医 师2名，副主任医师×名，主治医师×名。拥有×名硕士研究生。有国际先进的诊疗设备 ，如德国腹腔镜、宫腔镜手术系统、全程超导可视人流系统、数码胎儿远程监护网络系统、电子阴道镜、LEEP环切电刀、波姆光疗仪等大型设备。率先在××开 展妇科疾病微创技术，腹腔镜下全宫 切除、卵巢囊肿切除、输卵管复通、宫外孕等手术处于××地区领先地位。近年来，有两项科研成果获国家专利，其中电动宫颈内壁环切器荣获北京国际发明博览会 金奖。??? 全新的专科诊疗模式，家庭式的温馨病房，宾馆式的住院环境，个性化的诊疗服务，让您倍感亲切、温暖、称心、放心。','妇产科是我院首批临床重点专科，拥有×个病区、开设床位××张，有专家团队××余人……',NULL),(5,'眼科','no','眼科由××省眼科的开拓者和奠基人之一的××××教授创立于××××年，是××市首批临床重点专科，建科××年以来，已使数以万计患者重见光明。眼科医师 ×××成功地开展了放射状角膜切开术治疗近视眼。眼科拥有一批具××年以上临床工作经验的医师。作为同济医科大学的教学医院，每周都有武汉协和医院、同济 医院的专家来院坐诊。?? ?? 2004年3月，××医院斥巨资引进业内公认第一品牌：美国威视 VISX STAR 准分子激光治疗系统，已成功开展数千例准分子激光矫正手术。还配置了万级层流恒温、恒湿超洁净手术室，严格执行确保安全的手术流程质量管理，所有耗材均为 原装进口，开放式的手术让患者家属能看到手术的每一个环节。','建科以来，已使数以万计患者重见光明。成功地开展了放射状角膜切开术治疗近视眼……',NULL),(6,'药剂科','no','药剂科是集药品供应管理、药品质量控制、药品不良反应监测、科研教学于一体的综合性药学技术服务部门。        药剂科下设有住院药房、门诊药房、急诊药房、药库相关部门。现有职工4人。在院领导的带领下，药剂科将进一步广纳人才，充实我院药剂力量。提高药学服务水平和服务质量，规范合理用药，保障患者用药安全，药剂科将一直付诸努力。   科室服务理念：优质服务、精益求精   科室工作管理目标：团结、创新、发展','药剂科是集药品供应管理、药品质量控制、药品不良反应监测、科研教学于一体的综合性药学技术服务部门。……',NULL),(7,'超声科','no','超声科是以超声影像诊断为主要服务范围的综合性科室。超声科室现有人员2人，其中中级职称1人。科室目前拥有四台全数字化高档彩色多普勒超声诊断仪，包括GE T8、SIEMENS X600等。可满足成人和儿童影像学诊断，临床应用广泛,诊断精确,实用性强,图像清晰直观、检查方便且受检查者安全、无痛、无损伤。超声科与临床科室不断融合发展，在疾病的诊断与治疗中发挥着极大的作用。','超声科是以超声影像诊断为主要服务范围的综合性科室。科室目前拥有四台全数字化高档彩色多普勒超声诊断仪……',NULL),(8,'急诊科','no','急诊科依托医院综合医疗优势，急诊科逐步发展壮大成为在中毒、危重病、创伤等多方面具有快速诊断及救治能力的综合急诊学科。急诊科现有医护人员6人。        科室配套设施齐全，配备有心电监护除颤仪、心电图机、吸痰器、输液泵等多种先进抢救设备。急诊科承担了日常急诊病人诊疗及各种危重病人救治任务，开设急救绿色通道，实行24小时全日开诊。配合兄弟科室在救治各种多发伤、头颅外伤、胸部外伤、腹部外伤、多发性骨折等方面取得了良好救治效果。       科室始终遵循以“急诊病人为中心”的原则，使病人尽可能得到便捷、有效的诊治。','急诊科依托医院综合医疗优势，急诊科逐步发展壮大成为在中毒、危重病、创伤等多方面……',NULL),(9,'放射科','no','放射科成立于1980年,建科30余年来已经发展成为集普通X线检查、CT检查与影像诊断为一体的综合性重点医技科室，并承担着医院临床诊疗、健康查体等任务。放射科目前具有中级医师2人，初级医师2人。        放射科影像设备齐全、技术力量雄厚。目前拥有美国GE 16排高速螺旋CT、DR数字化X线摄影系统。16排螺旋CT具有强大的图像扫描及后处理能力，可进行全身各器官及大血管的三维成像、虚拟手术刀、仿真内窥镜等操作。DR数字化摄影系统为本地区最高端的X线数字化成像系统，具有成像分辨率高、速度快、功能齐全等显著优势。科室开展的技术项目有全身各部位常规摄片、各类X线造影检查及全身各部位、器官的CT扫描等。        我们本着对病人高度负责的态度，以检查及时、收费合理、诊断准确而深受广大医患的信赖。我们始终践行“以病人为中心”的服务理念，为患者提供最优良的医学影像检查和服务。','放射科成立至今已经发展成为集普通X线检查、CT检查与影像诊断为一体的综合性重点医技科室……',NULL),(10,'传染科','no','传染科是集医、教于一体的感染性疾病诊疗中心。科室设有发热门诊、肠道门诊、结核门诊及病房。科室开放床位14张, 房间宽敞明亮，设施齐全，为患者提供舒适安心的住院环境。现有医护人员4名。      传染科承担着就诊患者的传染病筛查和感染性疾病的治疗任务,为全县重大传染病定点医院以及结核病定点医院临床救治科室。可开展多项现代化的诊疗技术，具有丰富的临床经验，并逐渐形成特色和优势。','传染科是集医、教于一体的感染性疾病诊疗中心。科室设有发热门诊、肠道门诊、结核门诊及病房……',NULL);

/*Table structure for table `t_paiban` */

DROP TABLE IF EXISTS `t_paiban`;

CREATE TABLE `t_paiban` (
  `paibanid` int(11) NOT NULL,
  `name` varchar(255) character set utf8 collate utf8_hungarian_ci default NULL,
  `sex` varchar(255) character set utf8 default NULL,
  `paibantime` varchar(255) default NULL,
  `ticket` varchar(255) default NULL,
  `ticketmoney` varchar(255) default NULL,
  PRIMARY KEY  (`paibanid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `t_paiban` */

insert  into `t_paiban`(`paibanid`,`name`,`sex`,`paibantime`,`ticket`,`ticketmoney`) values (1,'萧山','男','2019-09-08','15','12');

/*Table structure for table `t_patient` */

DROP TABLE IF EXISTS `t_patient`;

CREATE TABLE `t_patient` (
  `patientId` int(11) NOT NULL auto_increment,
  `userId` int(11) default NULL,
  `patientName` varchar(20) default NULL,
  `sex` varchar(10) default NULL,
  `birthday` date default NULL,
  `idNumber` varchar(20) default NULL,
  `tel` varchar(20) default NULL,
  `patientDesc` varchar(100) default NULL,
  PRIMARY KEY  (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_patient` */

insert  into `t_patient`(`patientId`,`userId`,`patientName`,`sex`,`birthday`,`idNumber`,`tel`,`patientDesc`) values (36,1,'张玮','男','1989-07-20','395839230329232','11212','天山派三十六房'),(37,2,'丁丁','女','1990-03-08','132948599349839','092839453','华山派后山'),(38,2,'梁博','男','1985-01-15','1111111123329340','12121223','钓鱼岛'),(40,2,'那英','女','1960-02-19','9872948599349839','11212','北京天安门'),(41,2,'哈林','女','1993-03-04','343548729379534958','13120394950','西直门2号'),(42,2,'刘欢','男','2013-08-07','93028465859475748','10086','书房斋');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `role` int(11) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`userId`,`userName`,`password`,`role`) values (1,'admin','123',0),(2,'java1234','123456',1),(3,'张','123',1);

/*Table structure for table `t_zhuanjia` */

DROP TABLE IF EXISTS `t_zhuanjia`;

CREATE TABLE `t_zhuanjia` (
  `id` int(11) NOT NULL default '0',
  `yiyuanId` int(11) default NULL,
  `keshiId` int(11) default NULL,
  `xingming` varchar(255) default NULL,
  `xingbie` varchar(11) default NULL,
  `nianling` int(11) default NULL,
  `shanchang` varchar(255) default NULL,
  `leixing` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_zhuanjia` */

insert  into `t_zhuanjia`(`id`,`yiyuanId`,`keshiId`,`xingming`,`xingbie`,`nianling`,`shanchang`,`leixing`,`image`,`del`) values (2,2,2,'王晓光','男',40,'各类心脑血管各类疾病病','专家门诊','/upload/1362249942828.jpg','no'),(3,2,2,'张大海','男',40,'各类心血管外科各种疾病','专家门诊','/upload/1362250001253.jpg','no'),(4,2,2,'刘莉莉','男',52,'各类口腔科疾病药到病除','普通门诊','/upload/1362250044364.jpg','no');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
