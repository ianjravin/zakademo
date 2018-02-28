<?php
/**
 * This used to display the forgot password form. Provided here primarily as a way to make it easier to override using theme templates.
 *

 *
 * @author  Ian Jravin
 * @package Zaka
 * @since
 * @version
 */

// Exit if accessed directly.
if ( ! defined( 'ABSPATH' ) ) { exit; }

/**
 * @var 	zaka_Forgot_Password_Form
 */
$form = $view_args['form'];

?>
<div class="zaka-forgot-password-form">
	<?php
	/**
	* @hook zaka_forgot_password_before
	*/
	do_action( 'zaka_forgot_password_before' );

	?>
	<form id="lostpasswordform" class="zaka-form" method="post">

		<?php do_action( 'zaka_form_before_fields', $form ); ?>

		<div class="zaka-form-fields cf">
			<?php $form->view()->render() ?>
		</div><!-- .zaka-form-fields -->

		<?php do_action( 'zaka_form_after_fields', $form ); ?>

		<div class="zaka-form-field zaka-submit-field">
			<button class="button button-primary lostpassword-button" type="submit"><?php esc_attr_e( 'Reset Password', 'zaka' ) ?></button>
		</div>

	</form>
	<?php

	/**
	* @hook zaka_forgot_password_after
	*/
	do_action( 'zaka_forgot_password_after' );
	?>
</div>
