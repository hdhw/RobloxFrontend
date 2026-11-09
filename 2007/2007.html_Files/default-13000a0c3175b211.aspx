<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include/sqldbcon.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/include/public/header.php'); 
$getId = $_GET['MessageId'] ?? 6;
$title = "Error: Unknown status";
$text = "The status you requested does not exist.";
if ($getId == 6) {
$title = "Error: Unknown forum";
$text = "The forum you requested does not exist.";
} elseif ($getId == 5) {
$title = "Error: File Not Found";
$text = "The file you requested cannot be found.";
} elseif ($getId == 4) {
$title = "Error: Attempting to Insert a Duplicate Post";
$text = "You have, in the past, attempted to post a question on this forum, or another forum, with the same body. Duplicate posts are not allowed. This rule is sort of irritating but it helps cut down on spam.";
} elseif ($getId == 3) {
$title = "Error: You Are Not Able to Moderate";
$text = "In order to participate in the moderation of posts, you must have been granted adequate permissions from the Web site administrator. That is, the Web site administrator must have explicitly setup your User account to allow for post moderation. Please contact the Web site administrator if you believe you've reached this message in error.";
} elseif ($getId == 2) {
$title = "Error: You are Unable to Edit this Post";
$text = "In order to participate in the moderation of posts, you must have been granted adequate permissions from the Web site administrator. That is, the Web site administrator must have explicitly setup your User account to allow for post moderation. Please contact the Web site administrator if you believe you've reached this message in error.";
} elseif ($getId == 1) {
$title = "Error: You are Unable to Administer";
$text = "In order to perform any administration duties on this Web site, your user account must be marked as having administrator rights. Unfortunately, your account does not have such rights.<br><br>If you believe you've reached this message in error, please notify the Web site administrator.";
} elseif ($getId == 7) {
$title = "New Account Created";
$text = "You will soon receive an email which will contain a randomly generated password. Once you have this information you may login at the <a href=\"/Forum/login.aspx\">ROBLOX Forum Login</a>.<br><br>Once you've logged in, you may wish to visit your user profile and change your password - all of these details will be provided in the email.";
} elseif ($getId == 8) {
$title = "Post Blocked by ROBLOX Rules";
$text = "Your post is breaking some ROBLOX rule. There is probably a word in your post that we do not allow either because it's too harsh for ROBLOX or it breaks our Privacy rules. We also don't allow talking about other online games.<br><br>You should try your post again with different words. Putting dashes, periods, spaces or other breaks in a word to get around the filter is not allowed either. We block these words for a reason which may seem silly to you but these are our rules.";
} elseif ($getId == 9) {
$title = "Error: Post Does Not Exist";
$text = "The post you attempted to view does not exist. Most likely, the message you are trying to view has been deleted by one of the site's administrators.";
} elseif ($getId == 10) {
$title = "Error: PostID Parameter Not Specified";
$text = "You have attempted to visit the Web page to display a forum's post, but, for some reason, the PostID was not successfully passed in.";
} elseif ($getId == 11) {
$title = "Error: There was a Problem Posting your Message";
$text = "There was a problem posting your message. This is most likely due to the fact that while you were replying to a message, it has been deleted by the administrator. We apologize for any inconvenience.";
} elseif ($getId == 12) {
$title = "Error: The post you are attempting to view has not been approved";
$text = "You are unable to view this message due to the fact that it has not been approved. Most likely this is because you are trying to view a post that was posted to a moderated forum and has not yet been approved by one of the forum administrators.<br><br>Once this post has been approved, it will appear in the forum list and you will be able to view its contents.";
} elseif ($getId == 13) {
$title = "Your user profile has been successfully updated";
$text = "Your user information has been updated and will be reflected immediately.<br><br>Please return to the <a href=\"/Forum/Default.aspx\">ROBLOX Forum Home</a>";
} elseif ($getId == 14) {
$title = "Error: User Does Not Exist";
$text = "The user you attempted to view does not exist.";
} elseif ($getId == 15) {
$title = "User Password Updated";
$text = "Your user password has been updated and mailed to you.";
} elseif ($getId == 16) {
$title = "Error: User Password Update Failed";
$text = "Your password update operation failed - your password has not been changed.";
} elseif ($getId == 17) {
$title = "Error: You Are Posting Too Fast";
$text = "You are posting too fast. The flood check has blocked your post. Please press back and try again in a few minutes.";
} elseif ($getId == 18) {
$title = "Error: Your Post is too large";
$text = "Sorry, but you are trying to post too much text. Please reduce the amount of your post and try again.";
}
?>	
<link id="ctl00_Imports" rel="stylesheet" type="text/css" href="/Forum/Skins/Default/Style/Default.css">
<!-- I fucking hate html bro -->
<tr>
			<td style="padding-top: 16px">
				<div style="text-align: center">
					
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
				<tbody><tr valign="bottom">
					<td>
						<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
							<tbody><tr valign="top">
								<!-- left column -->
								<td>&nbsp; &nbsp; &nbsp;</td>
								<!-- center column -->
								<td id="ctl04_CenterColumn" width="95%" class="CenterColumn">
									<p><span id="ctl04_Message1">
<table width="100%">
	<tbody><tr>
		<td align="center">
			<table cellspacing="1" cellpadding="0" width="50%" class="tableBorder">
				<tbody><tr>
					<th align="left">
						&nbsp;<span id="ctl04_Message1_ctl00_MessageTitle" class="tableHeaderText"><?= $title ?></span>
					</th>
				</tr>
				<tr>
					<td class="forumRow">
						<table cellpadding="3" cellspacing="0">
							<tbody><tr>
								<td>
									&nbsp;
								</td>
								<td>
									<span id="ctl04_Message1_ctl00_MessageBody" class="normalTextSmall"><?= $text ?></span>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
			</tbody></table>
		</td>
	</tr>
	<tr>
		<td align="center">
			<br>
			
		</td>
	</tr>
</tbody></table>
</span></p>
								</td>

								<td class="CenterColumn">&nbsp;&nbsp;&nbsp;</td>
								<!-- right margin -->
								<td class="RightColumn">&nbsp;&nbsp;&nbsp;</td>
								
							</tr>
						</tbody></table>
					</td>
				</tr>
			</tbody></table>
		
				</div>
			</td>
		</tr>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . '/include/public/footer.php'); ?>