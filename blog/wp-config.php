<?php
/**
 * Базовая конфигурация WordPress.
 *
 * Данный файл содержит конфигурацию следующих параметров: настройки MySQL, префикс таблиц,
 * секретные ключи, язык WordPress и ABSPATH. Вы можете почитать подробнее, зайдя на
 * страницу {@link http://codex.wordpress.org/Editing_wp-config.php Редактирование
 * wp-config.php} кодекса. Вы можете узнать настройки MySQL у Вашего хостера.
 *
 * Данный файл используется при создании wp-config.php во время установки.
 * Однако Вам не обязательно пользоваться Веб-интерфейсом, Вы можете просто скопировать его в
 * "wp-config.php" и самостоятельно заполнить значения.
 *
 * @package WordPress
 * BL9sjWWcHZ2r
 */

// ** Настройки MySQL - Вы можете получить эти данные у Вашего хостера ** //
/** Название базы данных WordPress */
define('DB_NAME', 'angelika');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль MySQL */
define('DB_PASSWORD', 'iddqd');

/** Хост MySQL */
define('DB_HOST', 'localhost');

/** Кодировка СУБД, используемая при создании таблиц. Едва ли Вам потребуется это изменять. */
define('DB_CHARSET', 'utf8');

/** Способ сравнения строк в СУБД. Не меняйте это значение, если сомневаетесь. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи аутентификации.
 *
 * Поменяйте эти строки на другие уникальные фразы! Если Вы этого не сделаете, безопасность Вашего блога будет под угрозой.
 * Вы можете сгенерировать их при помощи специального сервиса {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Вы можете поменять их в любой момент. Это приведет к тому, что всем пользователям нужно будет входить в систему заново.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'xO)~]}+v}w_W:9]@l;NU3e7$+X./0<{0#tY,xry)`D[kw4yV7+D`Ey|yA0<jWz A');
define('SECURE_AUTH_KEY',  'jbwPYZ|Yx5(Fgb}3X)dD&GB+.!x`1r1(JP7 ,Hf#w|C%~Fv}|}.J!I^~IllGsg!)');
define('LOGGED_IN_KEY',    'u5d1^1d5UI:Vw23]/R#sK99O5-H[t/Zi:4@Ha-,@QeZ{p ^MEUA m.av0;8:oJcT');
define('NONCE_KEY',        'Qe]>dl(G+.`{hycH>HDZCdT`Q--l3r!4H1V[vrSF%3}_Wfd! nvK@!j]{u2%m.qB');
define('AUTH_SALT',        'SlL||TD6EfYEoU=grO@}BzoG+A</8$/`N]fz%w%3[Fz_^:GWfy7s;8p=`i5Lmq&$');
define('SECURE_AUTH_SALT', ')WrthWBy9!aR`pBigt-uH%~A6|fFr 6//hk.mr=EF4$>oJ<gPn=^`|{|jvek6b0I');
define('LOGGED_IN_SALT',   'zH-J%.^0(&yp~ph?bWV@V(G5|bufRyE[y~B8f<J%}[.%<]O]59flR9GZ_NPUj+Kg');
define('NONCE_SALT',       '=z5%({|H|-4qvFqte-7f-;$=;]A;1&@`1`MP6aG)$_~.{J<RNK=;+D6LJ&`3Ej= ');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Вы можете иметь несколько установок в одной БД, давая им различные префиксы.
 * Пожалуйста, используйте только латинские буквы, арабские цифры и знаки подчеркивания!
 */
$table_prefix  = 'angelika_blog_';

/**
 * Язык локализации WordPress.
 *
 */
define ('WPLANG', 'ru_RU');

/**
 * Для разработчиков: включение режима отладки WordPress.
 *
 * Поменяйте это значение на true, если хотите видеть сообщения по ходу разработки.
 * Крайне рекомендуется использовать WP_DEBUG разрабочикам тем и плагинов в своей среде разработки.
 */
define('WP_DEBUG', false);

/* Все, больше редактировать ничего не надо! Счастливых публикаций. */

/** Абсолютный путь к каталогу WordPress. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Настраивает переменные и модули WordPress. */
require_once(ABSPATH . 'wp-settings.php');
