<?php

	$fname = @trim(stripslashes($_POST['fname']));
	$email = @trim(stripslashes($_POST['email']));
	$phone = @trim(stripslashes($_POST['phone']));
	$comment = @trim(stripslashes($_POST['comments']));

	$email_from = $email;
	$email_to = 'ian@nouveta.tech';//replace with your email

	$body = 'Name: ' . $fname . "\n\n" . 'Email: ' . $email . "\n\n" . 'Phone: ' . $phone .  "\n\n" . 'Comments: ' . $comments;

	$success = @mail($email_to, $body, 'Name: ' . $fname . "\n\n" . 'Email: ' . $email . "\n\n" . 'Phone: ' . $phone . "\n\n" . 'Comments: ' . $comments);

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<script>alert("Thank you for contact us. As early as possible  we will contact you.");</script>
	<meta HTTP-EQUIV="REFRESH" content="0; url=../index.html">
</head>
