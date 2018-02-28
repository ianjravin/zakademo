<?php
/**

 *

 *
 * @author  Ian Jravin
 * @package zaka
 *
 */

if ( ! defined( 'ABSPATH' ) ) {exit; } // Exit if accessed directly

/**
 * @var 	zaka_Reset_Password_Form
 */
$form = $view_args['form'];

?>
<div class="zaka-reset-password-form">
	<?php
	if ( $form->has_key() ) :

		/**
		 * @hook zaka_reset_password_before
		 */
		do_action( 'zaka_reset_password_before' );

		?>
		<form id="resetpassform" class="zaka-form" method="post" autocomplete="off">

			<?php do_action( 'zaka_form_before_fields', $form ); ?>

			<div class="zaka-form-fields cf">
				<?php $form->view()->render() ?>
				<p class="description"><?php echo wp_get_password_hint() ?></p>
			</div><!-- .zaka-form-fields -->

			<?php do_action( 'zaka_form_after_fields', $form ); ?>

			<div class="zaka-form-field zaka-submit-field resetpass-submit">
				<button id="resetpass-button" class="button button-primary lostpassword-button" type="submit"><?php _e( 'Reset Password', 'zaka' ) ?></button>
			</div>
		</form>
		<?php

		/**
		 * @hook zaka_reset_password_after
		 */
		do_action( 'zaka_reset_password_after' );

	else :

		$errors = zaka_get_notices()->get_errors();

		if ( ! empty( $errors ) ) {
			zaka_template( 'form-fields/errors.php', array(
				'errors' => $errors,
			) );
		}

	endif;

	?>
</div><!-- .zaka-reset-password-form -->
