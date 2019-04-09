DROP TABLE IF EXISTS `{#}widgets_bind_pages`;
CREATE TABLE `{#}widgets_bind_pages` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bind_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'ID параметрів віджета',
  `template` varchar(30) DEFAULT NULL COMMENT 'Привʼязка до шаблону',
  `is_enabled` tinyint(1) UNSIGNED DEFAULT NULL COMMENT 'Увімкнений?',
  `page_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'ID сторінки для виведення',
  `position` varchar(32) DEFAULT NULL COMMENT 'Імʼя позиції',
  `ordering` int(11) UNSIGNED DEFAULT NULL COMMENT 'Порядковий номер',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `page_id` (`page_id`,`position`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Привʼязка віджетів до сторінок';
