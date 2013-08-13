-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 13 2013 г., 23:55
-- Версия сервера: 5.5.25
-- Версия PHP: 5.4.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `angelika`
--

-- --------------------------------------------------------

--
-- Структура таблицы `angelika_comments`
--

CREATE TABLE IF NOT EXISTS `angelika_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_type` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_full_name` varchar(255) NOT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `iname` varchar(512) NOT NULL,
  `idesc` text NOT NULL,
  `add_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `angelika_posts`
--

CREATE TABLE IF NOT EXISTS `angelika_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `iname` varchar(512) NOT NULL,
  `idesc` text NOT NULL,
  `tags` text NOT NULL,
  `views_count` int(11) NOT NULL,
  `comments_count` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `add_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `angelika_settings`
--

CREATE TABLE IF NOT EXISTS `angelika_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iname` varchar(255) NOT NULL,
  `idesc` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ch_user_id` int(11) NOT NULL,
  `ch_date` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `angelika_settings`
--

INSERT INTO `angelika_settings` (`id`, `iname`, `idesc`, `type`, `code`, `value`, `status`, `ch_user_id`, `ch_date`, `is_deleted`) VALUES
(1, '', '', '', 'exchange', '7.993', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `angelika_tags`
--

CREATE TABLE IF NOT EXISTS `angelika_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `iname` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `angelika_tags`
--

INSERT INTO `angelika_tags` (`id`, `uri`, `iname`, `is_deleted`) VALUES
(1, 'ryba', 'рыба', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `angelika_tags_links`
--

CREATE TABLE IF NOT EXISTS `angelika_tags_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_type` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `angelika_tags_links`
--

INSERT INTO `angelika_tags_links` (`id`, `object_type`, `object_id`, `tag_id`, `is_deleted`) VALUES
(1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `angelika_users`
--

CREATE TABLE IF NOT EXISTS `angelika_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `url_friendly_name` varchar(255) NOT NULL,
  `avatar_b` varchar(255) NOT NULL,
  `avatar_m` varchar(255) NOT NULL,
  `avatar_s` varchar(255) NOT NULL,
  `timezone` tinyint(4) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `access_level` tinyint(4) NOT NULL,
  `auto_login_key` varchar(255) NOT NULL,
  `facebook_id` bigint(20) NOT NULL,
  `facebook_oa_access_token` text NOT NULL,
  `facebook_oa_valid_till` int(11) NOT NULL,
  `vkontakte_id` bigint(20) NOT NULL,
  `vkontakte_oa_access_token` text NOT NULL,
  `vkontakte_oa_valid_till` int(11) NOT NULL,
  `google_id` varchar(50) NOT NULL,
  `google_oa_access_token` text NOT NULL,
  `google_oa_valid_till` int(11) NOT NULL,
  `linkedin_id` varchar(50) NOT NULL,
  `linkedin_oa_access_token` text NOT NULL,
  `linkedin_oa_valid_till` int(11) NOT NULL,
  `twitter_id` bigint(20) NOT NULL,
  `twitter_oa_access_token` varchar(255) NOT NULL,
  `twitter_oa_valid_till` int(11) NOT NULL,
  `is_judge` tinyint(4) NOT NULL,
  `city` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `online_till` int(11) NOT NULL,
  `add_date` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `angelika_users`
--

INSERT INTO `angelika_users` (`id`, `login`, `password`, `email`, `first_name`, `last_name`, `url_friendly_name`, `avatar_b`, `avatar_m`, `avatar_s`, `timezone`, `gender`, `access_level`, `auto_login_key`, `facebook_id`, `facebook_oa_access_token`, `facebook_oa_valid_till`, `vkontakte_id`, `vkontakte_oa_access_token`, `vkontakte_oa_valid_till`, `google_id`, `google_oa_access_token`, `google_oa_valid_till`, `linkedin_id`, `linkedin_oa_access_token`, `linkedin_oa_valid_till`, `twitter_id`, `twitter_oa_access_token`, `twitter_oa_valid_till`, `is_judge`, `city`, `ip`, `online_till`, `add_date`, `is_deleted`) VALUES
(1, '', '', 'i@randix.info', 'Yuriy', 'Denishchenko', 'randix0', 'upload/avatars/b76cbe0a3964043dfee0411834759d626b712172.jpg', 'upload/avatars/m_b76cbe0a3964043dfee0411834759d626b712172.jpg', 'upload/avatars/s_b76cbe0a3964043dfee0411834759d626b712172.jpg', 3, 2, 100, '', 100000667500718, 'CAAH9QQGZCWaUBALV1p9BGfiri8x2Dof39wK4CB3AhaLCTcXyqwgVFWdUegEnqF1ehWOQEHGWjVNGggtZCZA260u118vyOi3JK1injKDd31XliHPqWHXCLKqsNFbWC2NMeZBdrWQIgwSTQSgiowEmUr9tDt1jPA8ZD', 1380877532, 0, '', 0, '', '', 0, '', '', 0, 0, '', 0, 0, '', '', 0, 1373141256, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
