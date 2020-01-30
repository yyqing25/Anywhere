# noinspection SqlResolveForFile

create database anywheredb charset utf8;
use anywheredb;

set names gbk; ##设置编码

/*创建数据字典*/
drop table if exists dictinfo;
create table dictinfo(
                         id                   int not null auto_increment comment '数据字典的id',
                         type_id              varchar(50) not null comment '类型编码',
                         type_name            varchar(50) not null comment '类型名称',
                         value_id             int not null comment '取值编码',
                         value_name           varchar(50) not null comment '取值名称',
                         primary key (id)
);
alter table dictinfo comment '数据字典';
-- 插入数据字典记录
insert into dictinfo values (null,'publish_status','发布状态',0,'隐藏');
insert into dictinfo values (null,'publish_status','发布状态',1,'显示');
insert into dictinfo values (null,'audit_status','审核状态',0,'未审核');
insert into dictinfo values (null,'audit_status','审核状态',1,'已审核');
insert into dictinfo values (null,'marital_status','婚姻状态',0,'未婚');
insert into dictinfo values (null,'marital_status','婚姻状态',1,'已婚');
insert into dictinfo values (null,'marital_status','婚姻状态',2,'离婚');

/*创建地区表*/
-- 创建国家表
drop table if exists country;
create table country(
                        id                   varchar(10) not null comment 'id',
                        countryname          varchar(50) not null comment '国家',
                        primary key (id)
);
alter table country comment '国家';
-- 插入记录到国家表
INSERT INTO country VALUES ('CN','中国');
INSERT INTO country VALUES ('JP','日本');
INSERT INTO country VALUES ('KR','韩国');
INSERT INTO country VALUES ('US','美国');
INSERT INTO country VALUES ('GB','英国');
INSERT INTO country VALUES ('AU','澳大利亚');

-- 创建省份表
drop table if exists state;
create table state(
                      id                 int not null auto_increment comment 'id',
                      state                varchar(50) not null comment '省份',
                      primary key (id)
);
alter table state comment '省份';
-- 插入记录到省份表
INSERT INTO state VALUES (1, '北京');
INSERT INTO state VALUES (2, '天津');
INSERT INTO state VALUES (3, '河北');
INSERT INTO state VALUES (4, '山西');
INSERT INTO state VALUES (5, '内蒙古');
INSERT INTO state VALUES (6, '辽宁');
INSERT INTO state VALUES (7, '吉林');
INSERT INTO state VALUES (8, '黑龙江');
INSERT INTO state VALUES (9, '上海');
INSERT INTO state VALUES (10, '江苏');
INSERT INTO state VALUES (11, '浙江');
INSERT INTO state VALUES (12, '安徽');
INSERT INTO state VALUES (13, '福建');
INSERT INTO state VALUES (14, '江西');
INSERT INTO state VALUES (15, '山东');
INSERT INTO state VALUES (16, '河南');
INSERT INTO state VALUES (17, '湖北');
INSERT INTO state VALUES (18, '湖南');
INSERT INTO state VALUES (19, '广东');
INSERT INTO state VALUES (20, '广西');
INSERT INTO state VALUES (21, '海南');
INSERT INTO state VALUES (22, '重庆');
INSERT INTO state VALUES (23, '四川');
INSERT INTO state VALUES (24, '贵州');
INSERT INTO state VALUES (25, '云南');
INSERT INTO state VALUES (26, '西藏');
INSERT INTO state VALUES (27, '陕西');
INSERT INTO state VALUES (28, '甘肃');
INSERT INTO state VALUES (29, '青海');
INSERT INTO state VALUES (30, '宁夏');
INSERT INTO state VALUES (31, '新疆');
-- 创建城市表
drop table if exists city;
create table city(
                     id                   int not null auto_increment comment 'id',
                     city                 varchar(50) not null comment '市名',
                     coordinate           varchar(100) comment '坐标',
                     primary key (id)
);
alter table city comment '城市';
-- 插入记录到城市表
INSERT INTO city VALUES (null,'北京','116.46,39.92');
INSERT INTO city VALUES (null,'上海','121.48,31.22');
INSERT INTO city VALUES (null,'广州','113.23,23.16');
INSERT INTO city (id,city) VALUES (null, '石家庄');
INSERT INTO city (id,city) VALUES (null, '唐山');
INSERT INTO city (id,city) VALUES (null, '秦皇岛');
INSERT INTO city (id,city) VALUES (null, '邯郸');
INSERT INTO city (id,city) VALUES (null, '邢台');
INSERT INTO city (id,city) VALUES (null, '保定');
INSERT INTO city (id,city) VALUES (null, '张家口');
INSERT INTO city (id,city) VALUES (null, '承德');
INSERT INTO city (id,city) VALUES (null, '沧州');
INSERT INTO city (id,city) VALUES (null, '廊坊');
INSERT INTO city (id,city) VALUES (null, '衡水');
INSERT INTO city (id,city) VALUES (null, '太原');
INSERT INTO city (id,city) VALUES (null, '大同');
INSERT INTO city (id,city) VALUES (null, '阳泉');
INSERT INTO city (id,city) VALUES (null, '长治');
INSERT INTO city (id,city) VALUES (null, '晋城');
INSERT INTO city (id,city) VALUES (null, '朔州');
INSERT INTO city (id,city) VALUES (null, '晋中');
INSERT INTO city (id,city) VALUES (null, '运城');
INSERT INTO city (id,city) VALUES (null, '忻州');
INSERT INTO city (id,city) VALUES (null, '临汾');
INSERT INTO city (id,city) VALUES (null, '吕梁');
INSERT INTO city (id,city) VALUES (null, '呼和浩特');
INSERT INTO city (id,city) VALUES (null, '包头');
INSERT INTO city (id,city) VALUES (null, '乌海');
INSERT INTO city (id,city) VALUES (null, '赤峰');
INSERT INTO city (id,city) VALUES (null, '通辽');
INSERT INTO city (id,city) VALUES (null, '鄂尔多斯');
INSERT INTO city (id,city) VALUES (null, '呼伦贝尔');
INSERT INTO city (id,city) VALUES (null, '巴彦淖尔');
INSERT INTO city (id,city) VALUES (null, '乌兰察布');
INSERT INTO city (id,city) VALUES (null, '兴安盟');
INSERT INTO city (id,city) VALUES (null, '锡林郭勒盟');
INSERT INTO city (id,city) VALUES (null, '阿拉善盟');
INSERT INTO city (id,city) VALUES (null, '沈阳');
INSERT INTO city (id,city) VALUES (null, '大连');
INSERT INTO city (id,city) VALUES (null, '鞍山');
INSERT INTO city (id,city) VALUES (null, '抚顺');
INSERT INTO city (id,city) VALUES (null, '本溪');
INSERT INTO city (id,city) VALUES (null, '丹东');
INSERT INTO city (id,city) VALUES (null, '锦州');
INSERT INTO city (id,city) VALUES (null, '营口');
INSERT INTO city (id,city) VALUES (null, '阜新');
INSERT INTO city (id,city) VALUES (null, '辽阳');
INSERT INTO city (id,city) VALUES (null, '盘锦');
INSERT INTO city (id,city) VALUES (null, '铁岭');
INSERT INTO city (id,city) VALUES (null, '朝阳');
INSERT INTO city (id,city) VALUES (null, '葫芦岛');
INSERT INTO city (id,city) VALUES (null, '长春');
INSERT INTO city (id,city) VALUES (null, '吉林');
INSERT INTO city (id,city) VALUES (null, '四平');
INSERT INTO city (id,city) VALUES (null, '辽源');
INSERT INTO city (id,city) VALUES (null, '通化');
INSERT INTO city (id,city) VALUES (null, '白山');
INSERT INTO city (id,city) VALUES (null, '松原');
INSERT INTO city (id,city) VALUES (null, '白城');
INSERT INTO city (id,city) VALUES (null, '延边朝鲜族自治州');
INSERT INTO city (id,city) VALUES (null, '哈尔滨');
INSERT INTO city (id,city) VALUES (null, '齐齐哈尔');
INSERT INTO city (id,city) VALUES (null, '鸡西');
INSERT INTO city (id,city) VALUES (null, '鹤岗');
INSERT INTO city (id,city) VALUES (null, '双鸭山');
INSERT INTO city (id,city) VALUES (null, '大庆');
INSERT INTO city (id,city) VALUES (null, '伊春');
INSERT INTO city (id,city) VALUES (null, '佳木斯');
INSERT INTO city (id,city) VALUES (null, '七台河');
INSERT INTO city (id,city) VALUES (null, '牡丹江');
INSERT INTO city (id,city) VALUES (null, '黑河');
INSERT INTO city (id,city) VALUES (null, '绥化');
INSERT INTO city (id,city) VALUES (null, '大兴安岭地区');
INSERT INTO city (id,city) VALUES (null, '辖区');
INSERT INTO city (id,city) VALUES (null, '南京');
INSERT INTO city (id,city) VALUES (null, '无锡');
INSERT INTO city (id,city) VALUES (null, '徐州');
INSERT INTO city (id,city) VALUES (null, '常州');
INSERT INTO city (id,city) VALUES (null, '苏州');
INSERT INTO city (id,city) VALUES (null, '南通');
INSERT INTO city (id,city) VALUES (null, '连云港');
INSERT INTO city (id,city) VALUES (null, '淮安');
INSERT INTO city (id,city) VALUES (null, '盐城');
INSERT INTO city (id,city) VALUES (null, '扬州');
INSERT INTO city (id,city) VALUES (null, '镇江');
INSERT INTO city (id,city) VALUES (null, '泰州');
INSERT INTO city (id,city) VALUES (null, '宿迁');
INSERT INTO city (id,city) VALUES (null, '杭州');
INSERT INTO city (id,city) VALUES (null, '宁波');
INSERT INTO city (id,city) VALUES (null, '温州');
INSERT INTO city (id,city) VALUES (null, '嘉兴');
INSERT INTO city (id,city) VALUES (null, '湖州');
INSERT INTO city (id,city) VALUES (null, '绍兴');
INSERT INTO city (id,city) VALUES (null, '金华');
INSERT INTO city (id,city) VALUES (null, '衢州');
INSERT INTO city (id,city) VALUES (null, '舟山');
INSERT INTO city (id,city) VALUES (null, '台州');
INSERT INTO city (id,city) VALUES (null, '丽水');
INSERT INTO city (id,city) VALUES (null, '合肥');
INSERT INTO city (id,city) VALUES (null, '芜湖');
INSERT INTO city (id,city) VALUES (null, '蚌埠');
INSERT INTO city (id,city) VALUES (null, '淮南');
INSERT INTO city (id,city) VALUES (null, '马鞍山');
INSERT INTO city (id,city) VALUES (null, '淮北');
INSERT INTO city (id,city) VALUES (null, '铜陵');
INSERT INTO city (id,city) VALUES (null, '安庆');
INSERT INTO city (id,city) VALUES (null, '黄山');
INSERT INTO city (id,city) VALUES (null, '滁州');
INSERT INTO city (id,city) VALUES (null, '阜阳');
INSERT INTO city (id,city) VALUES (null, '宿州');
INSERT INTO city (id,city) VALUES (null, '六安');
INSERT INTO city (id,city) VALUES (null, '亳州');
INSERT INTO city (id,city) VALUES (null, '池州');
INSERT INTO city (id,city) VALUES (null, '宣城');
INSERT INTO city (id,city) VALUES (null, '福州');
INSERT INTO city (id,city) VALUES (null, '厦门');
INSERT INTO city (id,city) VALUES (null, '莆田');
INSERT INTO city (id,city) VALUES (null, '三明');
INSERT INTO city (id,city) VALUES (null, '泉州');
INSERT INTO city (id,city) VALUES (null, '漳州');
INSERT INTO city (id,city) VALUES (null, '南平');
INSERT INTO city (id,city) VALUES (null, '龙岩');
INSERT INTO city (id,city) VALUES (null, '宁德');
INSERT INTO city (id,city) VALUES (null, '南昌');
INSERT INTO city (id,city) VALUES (null, '景德镇');
INSERT INTO city (id,city) VALUES (null, '萍乡');
INSERT INTO city (id,city) VALUES (null, '九江');
INSERT INTO city (id,city) VALUES (null, '新余');
INSERT INTO city (id,city) VALUES (null, '鹰潭');
INSERT INTO city (id,city) VALUES (null, '赣州');
INSERT INTO city (id,city) VALUES (null, '吉安');
INSERT INTO city (id,city) VALUES (null, '宜春');
INSERT INTO city (id,city) VALUES (null, '抚州');
INSERT INTO city (id,city) VALUES (null, '上饶');
INSERT INTO city (id,city) VALUES (null, '济南');
INSERT INTO city (id,city) VALUES (null, '青岛');
INSERT INTO city (id,city) VALUES (null, '淄博');
INSERT INTO city (id,city) VALUES (null, '枣庄');
INSERT INTO city (id,city) VALUES (null, '东营');
INSERT INTO city (id,city) VALUES (null, '烟台');
INSERT INTO city (id,city) VALUES (null, '潍坊');
INSERT INTO city (id,city) VALUES (null, '济宁');
INSERT INTO city (id,city) VALUES (null, '泰安');
INSERT INTO city (id,city) VALUES (null, '威海');
INSERT INTO city (id,city) VALUES (null, '日照');
INSERT INTO city (id,city) VALUES (null, '莱芜');
INSERT INTO city (id,city) VALUES (null, '临沂');
INSERT INTO city (id,city) VALUES (null, '德州');
INSERT INTO city (id,city) VALUES (null, '聊城');
INSERT INTO city (id,city) VALUES (null, '滨州');
INSERT INTO city (id,city) VALUES (null, '菏泽');
INSERT INTO city (id,city) VALUES (null, '郑州');
INSERT INTO city (id,city) VALUES (null, '开封');
INSERT INTO city (id,city) VALUES (null, '洛阳');
INSERT INTO city (id,city) VALUES (null, '平顶山');
INSERT INTO city (id,city) VALUES (null, '安阳');
INSERT INTO city (id,city) VALUES (null, '鹤壁');
INSERT INTO city (id,city) VALUES (null, '新乡');
INSERT INTO city (id,city) VALUES (null, '焦作');
INSERT INTO city (id,city) VALUES (null, '濮阳');
INSERT INTO city (id,city) VALUES (null, '许昌');
INSERT INTO city (id,city) VALUES (null, '漯河');
INSERT INTO city (id,city) VALUES (null, '三门峡');
INSERT INTO city (id,city) VALUES (null, '南阳');
INSERT INTO city (id,city) VALUES (null, '商丘');
INSERT INTO city (id,city) VALUES (null, '信阳');
INSERT INTO city (id,city) VALUES (null, '周口');
INSERT INTO city (id,city) VALUES (null, '驻马店');
INSERT INTO city (id,city) VALUES (null, '武汉');
INSERT INTO city (id,city) VALUES (null, '黄石');
INSERT INTO city (id,city) VALUES (null, '十堰');
INSERT INTO city (id,city) VALUES (null, '宜昌');
INSERT INTO city (id,city) VALUES (null, '襄阳');
INSERT INTO city (id,city) VALUES (null, '鄂州');
INSERT INTO city (id,city) VALUES (null, '荆门');
INSERT INTO city (id,city) VALUES (null, '孝感');
INSERT INTO city (id,city) VALUES (null, '荆州');
INSERT INTO city (id,city) VALUES (null, '黄冈');
INSERT INTO city (id,city) VALUES (null, '咸宁');
INSERT INTO city (id,city) VALUES (null, '随州');
INSERT INTO city (id,city) VALUES (null, '恩施土家族苗族自治州');
INSERT INTO city (id,city) VALUES (null, '长沙');
INSERT INTO city (id,city) VALUES (null, '株洲');
INSERT INTO city (id,city) VALUES (null, '湘潭');
INSERT INTO city (id,city) VALUES (null, '衡阳');
INSERT INTO city (id,city) VALUES (null, '邵阳');
INSERT INTO city (id,city) VALUES (null, '岳阳');
INSERT INTO city (id,city) VALUES (null, '常德');
INSERT INTO city (id,city) VALUES (null, '张家界');
INSERT INTO city (id,city) VALUES (null, '益阳');
INSERT INTO city (id,city) VALUES (null, '郴州');
INSERT INTO city (id,city) VALUES (null, '永州');
INSERT INTO city (id,city) VALUES (null, '怀化');
INSERT INTO city (id,city) VALUES (null, '娄底');
INSERT INTO city (id,city) VALUES (null, '湘西土家族苗族自治州');
INSERT INTO city (id,city) VALUES (null, '韶关');
INSERT INTO city (id,city) VALUES (null, '深圳');
INSERT INTO city (id,city) VALUES (null, '珠海');
INSERT INTO city (id,city) VALUES (null, '汕头');
INSERT INTO city (id,city) VALUES (null, '佛山');
INSERT INTO city (id,city) VALUES (null, '江门');
INSERT INTO city (id,city) VALUES (null, '湛江');
INSERT INTO city (id,city) VALUES (null, '茂名');
INSERT INTO city (id,city) VALUES (null, '肇庆');
INSERT INTO city (id,city) VALUES (null, '惠州');
INSERT INTO city (id,city) VALUES (null, '梅州');
INSERT INTO city (id,city) VALUES (null, '汕尾');
INSERT INTO city (id,city) VALUES (null, '河源');
INSERT INTO city (id,city) VALUES (null, '阳江');
INSERT INTO city (id,city) VALUES (null, '清远');
INSERT INTO city (id,city) VALUES (null, '东莞');
INSERT INTO city (id,city) VALUES (null, '中山');
INSERT INTO city (id,city) VALUES (null, '潮州');
INSERT INTO city (id,city) VALUES (null, '揭阳');
INSERT INTO city (id,city) VALUES (null, '云浮');
INSERT INTO city (id,city) VALUES (null, '南宁');
INSERT INTO city (id,city) VALUES (null, '柳州');
INSERT INTO city (id,city) VALUES (null, '桂林');
INSERT INTO city (id,city) VALUES (null, '梧州');
INSERT INTO city (id,city) VALUES (null, '北海');
INSERT INTO city (id,city) VALUES (null, '防城港');
INSERT INTO city (id,city) VALUES (null, '钦州');
INSERT INTO city (id,city) VALUES (null, '贵港');
INSERT INTO city (id,city) VALUES (null, '玉林');
INSERT INTO city (id,city) VALUES (null, '百色');
INSERT INTO city (id,city) VALUES (null, '贺州');
INSERT INTO city (id,city) VALUES (null, '河池');
INSERT INTO city (id,city) VALUES (null, '来宾');
INSERT INTO city (id,city) VALUES (null, '崇左');
INSERT INTO city (id,city) VALUES (null, '海口');
INSERT INTO city (id,city) VALUES (null, '三亚');
INSERT INTO city (id,city) VALUES (null, '三沙');
INSERT INTO city (id,city) VALUES (null, '儋州');
INSERT INTO city (id,city) VALUES (null, '成都');
INSERT INTO city (id,city) VALUES (null, '自贡');
INSERT INTO city (id,city) VALUES (null, '攀枝花');
INSERT INTO city (id,city) VALUES (null, '泸州');
INSERT INTO city (id,city) VALUES (null, '德阳');
INSERT INTO city (id,city) VALUES (null, '绵阳');
INSERT INTO city (id,city) VALUES (null, '广元');
INSERT INTO city (id,city) VALUES (null, '遂宁');
INSERT INTO city (id,city) VALUES (null, '内江');
INSERT INTO city (id,city) VALUES (null, '乐山');
INSERT INTO city (id,city) VALUES (null, '南充');
INSERT INTO city (id,city) VALUES (null, '眉山');
INSERT INTO city (id,city) VALUES (null, '宜宾');
INSERT INTO city (id,city) VALUES (null, '广安');
INSERT INTO city (id,city) VALUES (null, '达州');
INSERT INTO city (id,city) VALUES (null, '雅安');
INSERT INTO city (id,city) VALUES (null, '巴中');
INSERT INTO city (id,city) VALUES (null, '资阳');
INSERT INTO city (id,city) VALUES (null, '阿坝藏族羌族自治州');
INSERT INTO city (id,city) VALUES (null, '甘孜藏族自治州');
INSERT INTO city (id,city) VALUES (null, '凉山彝族自治州');
INSERT INTO city (id,city) VALUES (null, '贵阳');
INSERT INTO city (id,city) VALUES (null, '六盘水');
INSERT INTO city (id,city) VALUES (null, '遵义');
INSERT INTO city (id,city) VALUES (null, '安顺');
INSERT INTO city (id,city) VALUES (null, '毕节');
INSERT INTO city (id,city) VALUES (null, '铜仁');
INSERT INTO city (id,city) VALUES (null, '黔西南布依族苗族自治州');
INSERT INTO city (id,city) VALUES (null, '黔东南苗族侗族自治州');
INSERT INTO city (id,city) VALUES (null, '黔南布依族苗族自治州');
INSERT INTO city (id,city) VALUES (null, '昆明');
INSERT INTO city (id,city) VALUES (null, '曲靖');
INSERT INTO city (id,city) VALUES (null, '玉溪');
INSERT INTO city (id,city) VALUES (null, '保山');
INSERT INTO city (id,city) VALUES (null, '昭通');
INSERT INTO city (id,city) VALUES (null, '丽江');
INSERT INTO city (id,city) VALUES (null, '普洱');
INSERT INTO city (id,city) VALUES (null, '临沧');
INSERT INTO city (id,city) VALUES (null, '楚雄彝族自治州');
INSERT INTO city (id,city) VALUES (null, '红河哈尼族彝族自治州');
INSERT INTO city (id,city) VALUES (null, '文山壮族苗族自治州');
INSERT INTO city (id,city) VALUES (null, '西双版纳傣族自治州');
INSERT INTO city (id,city) VALUES (null, '大理白族自治州');
INSERT INTO city (id,city) VALUES (null, '德宏傣族景颇族自治州');
INSERT INTO city (id,city) VALUES (null, '怒江傈僳族自治州');
INSERT INTO city (id,city) VALUES (null, '迪庆藏族自治州');
INSERT INTO city (id,city) VALUES (null, '拉萨');
INSERT INTO city (id,city) VALUES (null, '日喀则');
INSERT INTO city (id,city) VALUES (null, '昌都');
INSERT INTO city (id,city) VALUES (null, '林芝');
INSERT INTO city (id,city) VALUES (null, '山南');
INSERT INTO city (id,city) VALUES (null, '那曲');
INSERT INTO city (id,city) VALUES (null, '阿里地区');
INSERT INTO city (id,city) VALUES (null, '西安');
INSERT INTO city (id,city) VALUES (null, '铜川');
INSERT INTO city (id,city) VALUES (null, '宝鸡');
INSERT INTO city (id,city) VALUES (null, '咸阳');
INSERT INTO city (id,city) VALUES (null, '渭南');
INSERT INTO city (id,city) VALUES (null, '延安');
INSERT INTO city (id,city) VALUES (null, '汉中');
INSERT INTO city (id,city) VALUES (null, '榆林');
INSERT INTO city (id,city) VALUES (null, '安康');
INSERT INTO city (id,city) VALUES (null, '商洛');
INSERT INTO city (id,city) VALUES (null, '兰州');
INSERT INTO city (id,city) VALUES (null, '嘉峪关');
INSERT INTO city (id,city) VALUES (null, '金昌');
INSERT INTO city (id,city) VALUES (null, '白银');
INSERT INTO city (id,city) VALUES (null, '天水');
INSERT INTO city (id,city) VALUES (null, '武威');
INSERT INTO city (id,city) VALUES (null, '张掖');
INSERT INTO city (id,city) VALUES (null, '平凉');
INSERT INTO city (id,city) VALUES (null, '酒泉');
INSERT INTO city (id,city) VALUES (null, '庆阳');
INSERT INTO city (id,city) VALUES (null, '定西');
INSERT INTO city (id,city) VALUES (null, '陇南');
INSERT INTO city (id,city) VALUES (null, '临夏回族自治州');
INSERT INTO city (id,city) VALUES (null, '甘南藏族自治州');
INSERT INTO city (id,city) VALUES (null, '西宁');
INSERT INTO city (id,city) VALUES (null, '海东');
INSERT INTO city (id,city) VALUES (null, '海北藏族自治州');
INSERT INTO city (id,city) VALUES (null, '黄南藏族自治州');
INSERT INTO city (id,city) VALUES (null, '海南藏族自治州');
INSERT INTO city (id,city) VALUES (null, '果洛藏族自治州');
INSERT INTO city (id,city) VALUES (null, '玉树藏族自治州');
INSERT INTO city (id,city) VALUES (null, '海西蒙古族藏族自治州');
INSERT INTO city (id,city) VALUES (null, '银川');
INSERT INTO city (id,city) VALUES (null, '石嘴山');
INSERT INTO city (id,city) VALUES (null, '吴忠');
INSERT INTO city (id,city) VALUES (null, '固原');
INSERT INTO city (id,city) VALUES (null, '中卫');
INSERT INTO city (id,city) VALUES (null, '乌鲁木齐');
INSERT INTO city (id,city) VALUES (null, '克拉玛依');
INSERT INTO city (id,city) VALUES (null, '吐鲁番');
INSERT INTO city (id,city) VALUES (null, '哈密');
INSERT INTO city (id,city) VALUES (null, '昌吉回族自治州');
INSERT INTO city (id,city) VALUES (null, '博尔塔拉蒙古自治州');
INSERT INTO city (id,city) VALUES (null, '巴音郭楞蒙古自治州');
INSERT INTO city (id,city) VALUES (null, '阿克苏地区');
INSERT INTO city (id,city) VALUES (null, '克孜勒苏柯尔克孜自治州');
INSERT INTO city (id,city) VALUES (null, '喀什地区');
INSERT INTO city (id,city) VALUES (null, '和田地区');
INSERT INTO city (id,city) VALUES (null, '伊犁哈萨克自治州');
INSERT INTO city (id,city) VALUES (null, '塔城地区');
INSERT INTO city (id,city) VALUES (null, '阿勒泰地区');

/*创建游记表*/
drop table if exists diary;
create table diary(
                      id                   int not null comment '游记编号',
                      title                varchar(100) not null comment '游记标题',
                      uid                  int not null comment '发布用户的id',
                      content              text comment '游记内容',
                      country_id           varchar(5) comment '目的地国家',
                      state_id             int comment '目的地省份',
                      city_id              int comment '目的地城市',
                      publish_status       tinyint not null default 1 comment '发布状态: 0隐藏,1显示',
                      audit_status         tinyint not null default 1 comment '审核状态: 0未审核,1已审核',
                      createtime           timestamp comment '发布时间',
                      modifytime           timestamp comment '修改时间',
                      primary key (id)
);
alter table diary comment '游记';

/*创建游记图片表*/
drop table if exists diary_img;
create table diary_img(
                          id                   int not null auto_increment comment '图片id',
                          url                  varchar(200) comment '图片路径',
                          did                  int not null comment '游记id',
                          addtime              timestamp comment '添加时间',
                          primary key (id)
);
alter table diary_img comment '游记图片表';

/*创建酒店表*/
drop table if exists hotel;
create table hotel(
                      id                   int not null auto_increment comment 'id',
                      name                 varbinary(100) not null comment '酒店名',
                      content              text comment '酒店简介',
                      tel                  varchar(100) comment '酒店电话',
                      address              varchar(100) comment '酒店地址',
                      holer                varbinary(50) not null comment '负责人',
                      stars                int comment '酒店星级',
                      country_id           varchar(5) comment '目的地国家',
                      state_id             int comment '目的地省份',
                      city_id              int comment '目的地城市',
                      publish_status       tinyint not null default 1 comment '0隐藏,1显示',
                      audit_status         tinyint not null default 1 comment '0未审核,1已审核',
                      createtime           timestamp comment '发布时间',
                      modifytime           timestamp comment '修改时间',
                      primary key (id)
);
alter table hotel comment '酒店';

/*创建酒店图片表*/
drop table if exists hotel_img;
create table hotel_img(
                          id                   int not null auto_increment comment '图片id',
                          url                  varchar(200) comment '图片路径',
                          hid                  int not null comment '酒店id',
                          addtime              timestamp not null default CURRENT_TIMESTAMP comment '添加时间',
                          primary key (id)
);
alter table hotel_img comment '酒店图片表';

/*创建客房类型表*/
drop table if exists room_type;
create table room_type(
                          id                   int not null auto_increment comment '房间类型编号',
                          hid                  int not null comment '酒店编号',
                          type                 varchar(100) not null comment '房间类型',
                          status               varchar(100) comment '房间描述',
                          price                double not null default 0 comment '房间价格',
                          bednum               int comment '床位数',
                          stock                int not null default 0 comment '客房库存',
                          primary key (id)
);
alter table room_type comment '客房类型';

/*创建酒店订单表*/
drop table if exists hotel_order;
create table hotel_order(
                            id                   int not null auto_increment comment '唯一id',
                            hoid                 int not null comment '酒店订单id,可重复',
                            uid                  int not null comment '用户id',
                            hid                  int not null comment '酒店id',
                            roomtype             int not null comment '客房类型id',
                            checkin_time         date comment '入住时间',
                            checkout_time        date comment '离店时间',
                            bookingperson        varchar(20) not null comment '预定人姓名',
                            tel                  varchar(50) comment '预订人电话',
                            cardid               varchar(50) comment '预订人身份证号',
                            createtime           timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
                            primary key (id)
);
alter table hotel_order comment '酒店订单信息';

/*创建角色表
	还没想到对应权限, 想到后添加权限表
	拓展功能:当地人做导游,*/
drop table if exists role;
create table role(
                     id                   int not null auto_increment comment '角色编号',
                     rolename             varchar(20) comment '角色名称',
                     primary key (id)
);
alter table role comment '角色';

/*创建旅游路线表*/
drop table if exists route_prod;
create table route_prod(
                           route_id             int not null auto_increment comment '路线id',
                           title                text not null comment '路线标题',
                           price                float not null comment '路线价格',
                           abstract             varchar(1000) comment '路线简介',
                           detail               text comment '路线详情',
                           country_id           varchar(5) comment '目的地国家',
                           state_id             int comment '目的地省份',
                           city_id              int comment '目的地城市',
                           img                  varchar(200) comment 'URL',
                           publish_status       tinyint not null default 1 comment '发布状态: 0隐藏,1显示',
                           audit_status         tinyint not null default 1 comment '审核状态: 0未审核,1已审核',
                           createtime           timestamp not null default CURRENT_TIMESTAMP comment '发布时间',
                           modifytime           timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间',
                           primary key (route_id)
);
alter table route_prod comment '旅游路线';
-- 插入记录到旅游路线表
insert into route_prod (title,price,abstract,detail,country_id)
values ('冬日玩雪！日本双古都5天温泉游',4388.00,'早去晚回玩足5天，拒绝晚到早走假6天！','【经典全览】 大阪城，富士山，台场，忍野八海，奈良公园','JP');


/*创建旅游路线图片表*/
drop table if exists route_img;
create table route_img(
                          id                   int not null auto_increment comment '图片id',
                          url                  varchar(200) comment '图片路径',
                          route_id             int not null comment '路线id',
                          addtime             timestamp not null default CURRENT_TIMESTAMP comment '添加时间',
                          primary key (id)
);
alter table route_img comment '旅游路线图片表';

/*创建旅游路线库存表*/
drop table if exists route_stock;
create table route_stock(
                            id                   int not null auto_increment comment 'id',
                            route_id             int not null comment '路线id',
                            date                 date comment '日期',
                            stock                int not null default 0 comment '库存',
                            primary key (id)
);
alter table route_stock comment '旅游路线库存表';

/*创建旅游路线订单表*/
drop table if exists route_order;
create table route_order(
                            id                   int not null auto_increment comment '唯一id',
                            order_rid            int not null comment '路线订单id,订单id可重复',
                            user_id              int not null comment '用户id',
                            route_id             int not null comment '路线id',
                            date                 date not null comment '出发日期',
                            vistor               varbinary(20) not null comment '出行人姓名',
                            cardid               varchar(50) not null comment '出行人身份证号',
                            tel                  varchar(50) not null comment '出行人联系电话',
                            createtime           timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
                            primary key (id)
);
alter table route_order comment '路线订单信息';

/*创建用户表*/
drop table if exists user;
create table user(
                     id                   int not null auto_increment comment '用户编号',
                     role_id              int comment '角色编号',
                     username             varchar(20) not null comment '用户名',
                     realname             varchar(20) comment '姓名',
                     tel                  varchar(50) comment '电话',
                     email                varchar(50) comment '邮箱',
                     gender               char(5) comment '性别',
                     cardid               varchar(50) not null comment '身份证号',
                     primary key (id)
);
alter table user comment '用户';

/*创建签证表*/
drop table if exists visa;
create table visa(
                     id                   int not null auto_increment comment '申请编号',
                     nationality          int not null comment '国家id',
                     country              int not null comment '国家id',
                     uid                  int comment '用户id',
                     applicant_zh         varchar(20) not null comment '申请人中文名',
                     applicant_en         varchar(20) not null comment '申请人英文名',
                     birthday             date comment '出生日期',
                     birthplace_country   int comment '出生地国家',
                     birthplace_state     int comment '出生地省份',
                     birthplace_city      int comment '出生地城市',
                     cardid               varchar(100) not null comment '申请人身份证',
                     img_front            varchar(200) comment '身份证正面',
                     img_back             varchar(200) comment '身份证反面',
                     gender               tinyint comment '性别',
                     marital_status       tinyint comment '婚姻状况: 0单身/1已婚/2离婚',
                     start_time           timestamp comment '申请时间',
                     end_time             timestamp comment '结束时间',
                     audit_status         tinyint not null default 0 comment '审核状态: 0未审核,1已审核',
                     primary key (id)
);
alter table visa comment '签证申请';


/*查询表注释
	查询数据库anywheredb中表的注释*/
SELECT TABLE_NAME,TABLE_COMMENT FROM information_schema.TABLES WHERE table_schema='anywheredb';
/*查询字段注释
	查询数据库anywheredb中tou中route_prod表中字段的注释*/
SELECT COLUMN_NAME,column_comment FROM INFORMATION_SCHEMA.Columns WHERE table_name='route_prod' AND table_schema='anywheredb';
/*查询所有的表注释和字段注释
	数据库anywheredb中所有的表注释和字段注释*/
SELECT t.TABLE_NAME,t.TABLE_COMMENT,c.COLUMN_NAME,c.COLUMN_TYPE,c.COLUMN_COMMENT FROM information_schema.TABLES t,INFORMATION_SCHEMA.Columns c WHERE c.TABLE_NAME=t.TABLE_NAME AND t.`TABLE_SCHEMA`='anywheredb';
