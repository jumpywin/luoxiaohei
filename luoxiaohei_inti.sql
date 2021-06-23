create table ability
(
    id   int auto_increment
        primary key,
    name char(20) not null,
    note text     null
);

INSERT INTO luoxiaohei.ability (id, name, note) VALUES (1, '御灵系-冰', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (2, '御灵系-火', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (3, '心灵系and不详', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (4, '空间系-瞬移', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (5, '金属系-控制', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (6, '御灵系-鹰犬', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (7, '御灵系-金', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (8, '空间系-吞噬', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (9, '真相', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (10, '绝对-主角光环', '明明什么都不会却什么都能干的比别人强');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (11, '女二光环', 'NULL');
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (12, '俊神_的能力', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (13, '俊神_的能力2', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (14, '花精灵感应（范围为方圆五百米内）', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (15, '木系', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (16, '造物系', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (17, '斩断空间转换', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (18, '让时间趋于静止', null);
INSERT INTO luoxiaohei.ability (id, name, note) VALUES (19, '治愈系', null);


create table racial
(
    id   int auto_increment
        primary key,
    name char(20) not null
);

INSERT INTO luoxiaohei.racial (id, name) VALUES (1, '妖精');
INSERT INTO luoxiaohei.racial (id, name) VALUES (2, '人类');
INSERT INTO luoxiaohei.racial (id, name) VALUES (3, '动物');
INSERT INTO luoxiaohei.racial (id, name) VALUES (4, '神仙');
INSERT INTO luoxiaohei.racial (id, name) VALUES (5, '龙');
create table `character`
(
    id     int auto_increment
        primary key,
    name   char(20) not null,
    racial int      null,
    note   text     null,
    constraint fk_racial
        foreign key (racial) references racial (id)
            on update cascade
);

INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (1, '罗小黑', 1, '刚才改的');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (2, '罗小白', 2, '傻子一个');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (3, '玄离', 1, 'MAX');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (4, '老君', 1, 'MAX');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (5, '山新', 2, 'NULL');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (6, '阿根', 1, '？');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (7, '谛听', 1, '12');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (8, '无限', 2, 'NULL');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (9, '云飞', 2, 'NULL');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (10, '俊神', 1, '没有什么比这个更真诚的了');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (11, '妈妈', 2, '面膜怪');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (12, '鹰犬（3只）', 1, '谛听的随从');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (13, '两只鸽子', 3, '登场率极高，但和主线剧情无关的配角');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (14, '爸爸', 2, '我是爸爸');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (15, '老师', 2, '出场率不高');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (16, '罗小白同楼的邻居', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (17, '旺财', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (18, '皇受', 3, '可爱');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (19, 'SATAN', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (20, 'SATAN的主人', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (21, '山新游戏中卖武器的老板', 3, '这年头牛都能卖武器了');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (22, '保险男', 2, '一路人长得还不错');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (23, '彼尔德', 3, '像个蛋');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (24, '比丢', 3, '吃了金属或生物会暴走');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (25, '爷爷', 2, '麻了，长得真像三三');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (26, '农民伯伯', 2, '会魔法啊');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (27, '阿根家的狗', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (28, '小吉', 2, '光天化日之下露丁丁');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (29, '大吉', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (30, '狗剩', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (31, '阿根同村的一个村民', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (32, '精灵龙', 1, '道理我都懂，为啥是绿的');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (33, '后山的花精灵', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (34, '炎帝', 2, 'MAYBE MAX');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (35, '叫兽', 2, '太草了');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (36, '幕斯', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (37, '阿先', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (38, '三叔', 2, '南派三叔？');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (39, '粉末', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (40, '虎妞', 3, '麻了，是个公的');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (41, '七果', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (42, '木落仙人', 4, '看上去很强的老爷爷');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (43, '水妖', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (44, '坛九', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (45, '知了', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (46, '牛姨', 2, '卧槽奶牛');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (47, '全村动物联盟', 3, '狗子比较多');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (48, '府先生', 1, '东北虎 所以是府先生');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (49, '青丘', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (50, '酒仙', 1, '武松？');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (51, '二云', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (52, '秃贝', 1, '方方正正');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (53, '卡里', 1, '潮男');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (54, '千针', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (55, '破老', 1, '大蛤蟆');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (56, '漫展售货员', 2, '卧槽长得不错');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (57, '山新的爸爸', 2, '山新真的是他女儿么。。。。');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (58, '和山新打游戏的大哥哥', 2, '像送快递的');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (59, '两个《双斩联盟》玩家', 2, '一男一女');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (60, '紫发少女', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (61, '红发男孩', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (62, '红发男孩的邻居女孩', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (63, '接受采访的空难幸存者', 2, '能活下来是有原因的');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (64, 'JJTV记者', 2, 'jjtv可还行');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (65, '偷狗贼', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (66, '偷狗贼的孩子', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (67, '涅帕', 1, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (68, '两个罗小白的同学', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (69, '李清凝（清凝仙子）', 4, '已故');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (70, '青蛙君', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (71, '罗小白梦中的王子', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (72, '一只鸟', 3, '可能是只鹰犬');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (73, '阿狸和熊猫', 3, '阿狸输入法');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (74, '三只龙', 5, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (75, '小黑追小白连衣裙过程中的随地小便的路人甲', 2, '随地大小便，罚款！');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (76, '小黑追小白连衣裙过程中碰到的三只猫', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (77, '看小黑和彼尔德打架的六只小鸟', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (78, '在阿根村子里飘荡的精灵', 1, '半透明');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (79, '阿根村子里的小鸟', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (80, '阿根村里戏水的小孩', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (81, '两只瓢虫（出场率极高）', 3, '老夫老妻');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (82, '后山的一只松鼠', 3, '太圆润了');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (83, '后山的一只蜥蜴', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (84, '爸爸妈妈旅游过程中遇到的活物', null, '啥都有');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (85, '三条鱼', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (86, '小白梦中出现的奥特曼', 4, '我们把奥特星人统称为仙人');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (87, '三叔投喂的活物', null, '三只鹅，一只不明生物');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (88, '阿根小黑和花精灵乘坐的以往没出现过的坐骑', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (89, '一只蜘蛛', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (90, '在公共电话亭打电话的路人', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (92, '山新游戏中的怪兽', 3, '看着像动物');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (93, '漫展门口的检票员', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (94, '逛漫展的人', null, '要素过多');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (95, '皇受和比丢遇到的路人和狗', null, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (96, '遭遇空难的飞机乘客', 2, '包括接受采访的');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (97, '险些被坠毁飞机撞死的小男孩', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (98, '红发男孩邻居家楼顶上的猫', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (99, '一只螳螂', 3, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (100, '一只小狗', 3, '属于全村动物联盟[44号，56楼]，但是因为在剧情中作用比较大，因此单列出来');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (101, '乘凉的老奶奶', 2, '三三的老伴儿');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (102, '肯德基售货员和顾客', 2, null);
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (103, '路人索隆', 2, '索隆你怎么了啊？索隆你在干什么！');
INSERT INTO luoxiaohei.`character` (id, name, racial, note) VALUES (104, '和爸爸妈妈一只乘坐过山车的游客', 2, null);


create table `character-ability`
(
    character_id int not null,
    ability_id   int null,
    constraint fk_ability
        foreign key (ability_id) references ability (id)
            on update cascade,
    constraint fk_character
        foreign key (character_id) references `character` (id)
            on update cascade
);

INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (1, 4);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (1, 5);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (2, 10);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (3, 1);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (3, 2);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (4, 3);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (6, 1);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (7, 6);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (8, 5);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (9, 9);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (5, 11);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (10, 12);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (34, 4);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (39, 14);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (42, 15);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (44, 16);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (53, 15);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (54, 17);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (61, 18);
INSERT INTO luoxiaohei.`character-ability` (character_id, ability_id) VALUES (69, 19);