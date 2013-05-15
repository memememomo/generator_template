CREATE TABLE `[% table_name %]` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
  # INDEX hoge_idx(`hoge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[% comment %]';
