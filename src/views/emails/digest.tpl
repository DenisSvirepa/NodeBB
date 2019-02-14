<!-- IMPORT emails/partials/header.tpl -->

<!-- Email Body : BEGIN -->
<table role="presentation" cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="max-width: 600px;">

	<!-- 1 Column Text + Button : BEGIN -->
	<tr>
		<td bgcolor="#fff">
			<table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
				<tr>
					<td style="padding: 40px 40px 6px 40px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 15px; line-height: 20px; color: #555555;">
						<h1 style="margin: 0; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 24px; line-height: 27px; color: #333333; font-weight: normal;">[[email:greeting_with_name, {username}]]</h1>
					</td>
				</tr>
				<tr>
					<td style="padding: 0px 40px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 15px; line-height: 20px; color: #555555;">
						<h1 style="margin: 0 0 10px 0; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 18px; line-height: 21px; color: #aaaaaa; font-weight: normal;">Your Daily Digest</h1>
					</td>
				</tr>
				<!-- IF notifications.length -->
				<tr>
					<td style="padding: 0px 40px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 15px; line-height: 20px; color: #555555;">
						<ul style="margin: 0;">
							<!-- BEGIN notifications -->
							<li style="text-decoration: none; list-style-type: none; padding-bottom: 0.5em;">
								<table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
									<tr>
										<td style="padding: 16px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; width: 32px;">
											<!-- IF notifications.image -->
											<img style="vertical-align: middle; width: 32px; height: 32px; padding-right: 8px; border-radius: 50%" src="{notifications.image}" />
											<!-- ELSE -->
											<div style="vertical-align: middle; width: 32px; height: 32px; line-height: 32px; font-size: 16px; margin-right: 8px; background-color: {notifications.user.icon:bgColor}; color: white; text-align: center; display: inline-block; border-radius: 50%">{notifications.user.icon:text}</div>
											<!-- ENDIF notifications.image -->
										</td>
										<td style="padding: 16px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; line-height: 16px; color: #333333;">
											<p style="margin: 0;"><a style="text-decoration:none !important; text-decoration:none; color: #333333;" href="{url}{notifications.path}">{notifications.bodyShort}</a></p>
										</td>
									</tr>
								</table>
							</li>
							<!-- END notifications -->
						</ul>
					</td>
				</tr>
				<!-- ENDIF notifications.length -->
				<!-- IF recent.length -->
				<tr>
					<td style="padding: 0px 40px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 15px; line-height: 20px; color: #555555;">
						<h1 style="margin: 16px 0 24px 0; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 18px; line-height: 21px; color: #aaaaaa; font-weight: normal;">[[email:digest.latest_topics, {site_title}]]</h1>
						<ul style="margin: 0;">
							<!-- BEGIN recent -->
							<li style="text-decoration: none; list-style-type: none; padding-bottom: 0.5em;">
								<table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
									<tr>
										<td style="padding: 6px 16px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; width: 32px; vertical-align: top;">{function.renderDigestAvatar}</td>
										<td style="padding: 6px 16px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; line-height: 16px; color: #333333;">
											<p style="margin: 0;"><a style="text-decoration:none !important; text-decoration:none; color: #333333;" href="{url}/uid/{recent.user.uid}"><strong>{recent.teaser.user.username}</strong></a></p>
											<p style="margin: 0;"><a style="text-decoration:none !important; text-decoration:none; color: #aaaaaa; font-size: 12px; line-height: 16px;" href="{url}/{recent.slug}"><strong>{recent.title}</strong></a></p>
										</td>
									</tr>
									<tr>
										<td colspan="2" style="padding: 8px 16px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; line-height: 16px; color: #333333;">
											<p style="margin: 0; padding: 6px 0px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 13px; line-height: 26px; color: #666666;">{recent.teaser.content}</p>
											<p style="margin: 0; padding: 6px 0px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 12px; line-height: 16px;">
												<a style="text-decoration:none !important; text-decoration:none; color: #666666; font-size: 12px; line-height: 16px;" href="{url}/{recent.slug}">
													<strong><span style="color: #aaaaaa;">&rsaquo;</span> [[global:read_more]]</strong>
												</a>
											</p>
										</td>
									</tr>
								</table>
							</li>
							<!-- IF !@last -->
							<li style="text-decoration: none; list-style-type: none; margin: 0px 64px 16px 64px; border-bottom: 1px solid #dddddd"></li>
							<!-- END -->
							<!-- END -->
						</ul>
					</td>
				</tr>
				<!-- END -->
				<tr>
					<td style="padding: 32px 40px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 15px; line-height: 20px; color: #555555;">
						<!-- Button : BEGIN -->
						<table role="presentation" cellspacing="0" cellpadding="0" border="0" align="center" style="margin: auto;">
							<tr>
								<td style="border-radius: 3px; background: #222222; text-align: center;" class="button-td">
									<a href="{url}" style="background: #222222; border: 15px solid #222222; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;" class="button-a">
										<span style="color:#ffffff;" class="button-link">&nbsp;&nbsp;&nbsp;&nbsp;[[email:digest.cta, {site_title}]]&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</a>
								</td>
							</tr>
						</table>
						<!-- Button : END -->
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<!-- 1 Column Text + Button : END -->

</table>
<!-- Email Body : END -->

<!-- IMPORT emails/partials/footer.tpl -->
