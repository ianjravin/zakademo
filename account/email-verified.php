<?php
/**
 * This used to display a message on the email verification endpoint
 * when the email is verified.
 *
 * This is only used when all of the following are true:
 *
 * 1) The email is verified. If email was not verified, the contents of account/email-not-verified.php would be shown.
 * 2) No redirect URL was set. If one was set, the user would be redirected to that page.
 * 3) No Profile page was set. If one is set, the user would be redirected to that page.
 *

 *
 * @author  Ian Jravin
 * @package Zaka
 * @since
 * @version
 */

// Exit if accessed directly.
if ( ! defined( 'ABSPATH' ) ) { exit; }

?>
<p><?php _e( 'Your email address has been verified.', 'zaka' ) ?></p>
<p><a href="<?php home_url() ?>"><?php _e( 'Return home', 'zaka' ) ?></a></p>
