<?php

// BEGIN iThemes Security - Do not modify or remove this line
// iThemes Security Config Details: 2
define( 'DISALLOW_FILE_EDIT', true ); // Disable File Editor - Security > Settings > WordPress Tweaks > File Editor
// END iThemes Security - Do not modify or remove this line

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_basic');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'aw1nNU&E_e{7f=VbSXc- (up.M~61cA?v;B*~5bg^F.%Pkx425!rQ_i;PV&K(C|&');
define('SECURE_AUTH_KEY',  'KUwz1alJ,{+(~<s_PBs `d0^6U?PegSwwJ_)UKF *C-M6jPq0i7+c}*`mTD{WAeP');
define('LOGGED_IN_KEY',    '90X%Tc>x0s0IAlw)m}r!DF(ej(]NfnGR.f;[sv#I2SXFNOvQs[)SwL`,*sln^p%|');
define('NONCE_KEY',        'V !|*Q<iYc}K`s8nB%^8eu$cSY |Dlr+V8Bq!hMTSEr`7B{kJ,nR<=_2Bah-m;&7');
define('AUTH_SALT',        '55`OPV6_PWDR4v[i*r9ZA1P2}mmE0In{2z73AFg#9IJ-a!iM1/OKP5ZjdV9wP>LP');
define('SECURE_AUTH_SALT', ';CRP@2PalkN;~`|zDD!+,<IQ<zL4tV@]G&$*ASrPYdQo7cxKYgf5+5l>8#?KVgQf');
define('LOGGED_IN_SALT',   'P+I>O]9rR#x aP):]_&7TV+JWLy@qgnNlvB`=0_*1:WZ##I0XWy,6?vhG#R5j0#_');
define('NONCE_SALT',       '}Qx*-1xE%$Z$<9N=d}~ut5%$;6?KXnOqfB@+V2v^Z}yw>TO>:4u~OGJCG8/2(!]8');

/**#@-*/

/** custom define **/
define( 'AUTOMATIC_UPDATER_DISABLED', true );
define( 'WP_AUTO_UPDATE_CORE', false );
define('WP_POST_REVISIONS', false );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'plbs_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
