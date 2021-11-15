<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'navadristi-eye' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ';cHV2=k02c>{xKbF=%#XD-cqZ&a;xr.6Byp#cISBQ&_?Az<Y2}9/i.eCn@gihbt7' );
define( 'SECURE_AUTH_KEY',  'b2nyhDDLDhuh$^KH2H~,aOm@}()~z!]4:a6=C-E?t/W >zN~nrDO^28!(~0;]|i5' );
define( 'LOGGED_IN_KEY',    '=9*1ZC;>,yDB.]32)sR3yV~:Ha8#.NrZ)[~9iOmj!rgokPS~rMPsM9/bB_Z7pt{T' );
define( 'NONCE_KEY',        '/(&<^kc-8%_xi{W;P#unTP]n-z :=*n)%ZX~w#+4{)W&h-AWI|c0,k+egfk<=]Lw' );
define( 'AUTH_SALT',        '$^k#&x{eSDH&_$ReI;;j1Ty?%3md#H53ujB9y 0}uMC~-evUd7Asm~@x_>JwFU==' );
define( 'SECURE_AUTH_SALT', '#vMZ+zaG-tSB`6z(`7qX+Fpi9}ini:<IZl, <c_4 /ctl65HPrH[uFc:s -V?2nc' );
define( 'LOGGED_IN_SALT',   'N;^~ }Ims*TO^SYT+F~r&^r[s%?L+d5?WCk^:sP;d^26?Zu_8#wJbjGm[SQJ4S;|' );
define( 'NONCE_SALT',       '!]Gz^pI[`[]u=TLI.S5zRB@q5-Q:VwTWJg]C`OO.X(%9R!ELK}FM;-}I(y7C5S6u' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
