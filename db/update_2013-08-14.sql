CREATE TABLE IF NOT EXISTS `angelika_music` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `iname` varchar(255) NOT NULL,
  `idesc` text NOT NULL,
  `position` int(11) NOT NULL,
  `add_date` int(11) NOT NULL,
  `is_deleted` TINYINT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `angelika_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `iname` varchar(255) NOT NULL,
  `idesc` text NOT NULL,
  `poster_b` varchar(255) NOT NULL,
  `poster_m` varchar(255) NOT NULL,
  `poster_s` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `add_date` int(11) NOT NULL,
  `is_deleted` TINYINT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;