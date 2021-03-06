<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'Effect32');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '-dH7&a%ju;itC1-x;98:(KW3{uD)^~1.(P evc-7B#v3--R>rc0SdljvdyEe5>H%');
define('SECURE_AUTH_KEY',  '3Fm@oOojC=7y_^`Wak`O=k@cuW&3fJDbur %f*Yc/EDJK1m4kLUTH9QV-nw7[j~2');
define('LOGGED_IN_KEY',    'l~rS/gV>^W$[N#9-7sjlKt0b>q60 |*~Djz;woHCW{/nZ3V|m&Zl<3)Kf;k^-lJ1');
define('NONCE_KEY',        'wDKYVglsPd_LHZ^aXfh)mO|e#XVcp@sQ}/1@M/{;hl`_j-#y_sp+xJG`5DunoxXL');
define('AUTH_SALT',        'TfXktL8P3@]0H8uemV^8gHK#/T8>J:9h_ WOcj![}:S=fn$NE[ds@?-ybz<}TZ7{');
define('SECURE_AUTH_SALT', '~[vMrzit>7ANWvlbPeW1y|:8E.LrpP1UBMGY(U1]azZ}k^]|@C}$LAE5^T+8N/.2');
define('LOGGED_IN_SALT',   '(_zqD[3}}a_Z:tt}^8tDFpM]FYC8<Woe~;SMmKu6xV+Dk,kAoPA^r9vD#J5FPnTP');
define('NONCE_SALT',       '(dI*e^q-sPU-7frw5?$)-2}Nxx=e%*TndQ}$(_X7>@xD}5(!ru=z^w9GF/=lm5!p');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');