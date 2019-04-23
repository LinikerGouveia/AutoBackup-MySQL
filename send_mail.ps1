$emailMessage = New-Object System.Net.Mail.MailMessage
$emailMessage.From = "user.name@outlook.com*"
$emailMessage.To.Add("user.name@mail.com*")
$emailMessage.Subject = "mail subject*"
$emailMessage.IsBodyHtml = $true
$Attachment = "log\backup-$(get-date -f yyyyMMdd).txt"
echo $Attachment
$emailMessage.Attachments.Add( $attachment )
$emailMessage.Body = @"
<p> Backup finished!.</p>
<p> Message body.</p>
"@
 
$SMTPServer = "smtp.live.com"
 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
 
$SMTPClient.EnableSsl = $true
 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("user.name@mail.com*", "email-password*");
$SMTPClient.Send($emailMessage)
