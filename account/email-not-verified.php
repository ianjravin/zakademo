<?php
/**
 * The template used to display a message on the email verification endpoint
 * when the email was not verified.
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
<p><?php _e( 'We were unable to verify your email address.', 'zaka' ) ?></p>
<?php if ( isset( $_GET['login'] ) ) : ?>
    <p><a href="<?php echo esc_url( zaka_get_email_verification_link( get_user_by( 'login', $_GET['login'] ) ) ) ?>"><?php _e( 'Resend verification email', 'zaka' ) ?></a></p>
<?php endif ?>
