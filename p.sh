#!/bin/bash
# Install Postfix and automatically provide answers to prompts
echo "postfix postfix/main_mailer_type select Internet Site" | sudo debconf-set-selections
echo "postfix postfix/mailname string localhost" | sudo debconf-set-selections

# Install Postfix
sudo apt-get update
sudo apt-get install -y postfix

# Remove the default Postfix configuration file
sudo rm /etc/postfix/main.cf

# Create a new Postfix configuration file and add the required configuration
sudo tee /etc/postfix/main.cf > /dev/null <<EOL
# Postfix main configuration file
inet_interfaces = loopback-only
myhostname = localhost
relayhost = 
mydestination = localhost
smtp_sasl_auth_enable = no
smtpd_sasl_auth_enable = no
smtp_sasl_security_options = noanonymous
smtp_tls_security_level = none
queue_directory = /var/spool/postfix
command_directory = /usr/sbin
daemon_directory = /usr/lib/postfix/sbin
mailbox_size_limit = 0
recipient_delimiter = +
EOL

# Restart Postfix to apply the new configuration
sudo service postfix restart

# Install mailutils to enable sending mails
sudo apt-get install -y mailutils

# Prepare email templates and lists
mkdir -p letters
cd letters
# (HTML templates and from/subject lists skipped here for brevity)
#############################################################################
cat <<EOF > "1.html"
  <!doctype html>
<center>
 <a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; font-size:14px; color:#444444">This is an Advertisement </a>
 </center><br>


?<body>

<table align="center" width="600">


<tr>
<td rowspan="2" align="left"><a href="https://t.co/AENj9jsZd0"><img border="0"  src="https://i.imgur.com/VBhhSQ5.png"/></a></td>

</tr>
<tr>
  <td rowspan="2" align="right" valign="middle" class="bodycopy" style="font-family: Arial, Sans-Serif; text-align: right; font-weight: normal; font-size: 30px; padding-right:20px; word-break: keep-all;"><a href="tel:1-855-632-0306" style="text-decoration: none;color:#1D1363;"><strong>1-855-632-0306</strong></a></td>
</tr>

</table>

<table align="center" width="600">

<tr><td align="center">
<p><font size="2" face="Arial" color="#697080"></font></p>
</td></tr>
<tr><td align="center">

<a href="https://t.co/AENj9jsZd0"><img src="https://i.imgur.com/Wy6eAcM.png" width="600" height="1664" border="0" /></a>

<tr><td align="center" width="600">
<p><font size="2" face="Arial" color="#697080"><br>
New Jersey Residents: The product being offered is a service contract and is separate and distinct from any product or service warranty which may be provided by the home builder or manufacturer.
<br>
<br>
*See the plan agreement at ahs.com/contracts for coverage details, including service fees, limitations and exclusions. Coverage limits and charges for non-covered items may apply.
<br>
<br>
American Home Shield<br>
3400 Players Club Parkway, Suite 300, Memphis, TN 38125
<br><a href="https://shorturl.at/epJMZ">Unsubscribe</a> | <a href="https://shorturl.at/dXTCq">Privacy Policy<a/>
<br> <p>&copy; 2025 American Home Shield Corporation. All rights reserved.

</body>
</html>

<center>
 <a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; font-size:14px; color:#444444">This is an Advertisement </a>
 </center><br>




<html>
<head>
  <title>Brinks</title>

</head>

<body>

<table align="center" width="600">
<tr><td align="left"><a href="https://t.co/l5sBKOHjyD"><img border="0"  src="https://i.imgur.com/i61Oxkj.png"/></a></td></tr>
</table>

<table align="center" width="600">

<tr>
  <td rowspan="2" align="center" valign="center" class="bodycopy" style="font-family: Arial, Sans-Serif; text-align: center; font-weight: normal; font-size: 28px; word-break: keep-all;"><a href="tel:1-888-233-3193" style="text-decoration: none;color:006F3B;"><strong>CALL FOR A FREE QUOTE</strong></a></td>
</tr>

<tr>
  <td rowspan="2" align="center" valign="center" class="bodycopy" style="font-family: Arial, Sans-Serif; text-align: center; font-weight: normal; font-size: 28px; word-break: keep-all;"><a href="tel:1-888-233-3193" style="text-decoration: none;color:#006F3B;"><strong>1-888-233-3193</strong></a></td>
</tr>
</table>

<body>

<table align="center">
<tr><td align="center">


<a href="https://t.co/l5sBKOHjyD"><img src="https://i.imgur.com/QW54Zn4.png" width="600" height="1356" border="0" /></a>
</table>


<table align="center">
<tr><td align="justify" width="585">
<font face="Arial, sans-serif" style="font-size:11px;">
*Limited time offer. Offer valid for new residential customers only with the purchase of a new security system with a minimum equipment purchase of $500. Requires acceptance of standard contract terms and conditions with a minimum 36-month initial term, a monitoring plan starting at $49.99/month and acceptance of the Brinks Home Plus service plan at $7.99/month. Additionally taxes and fees may apply. Offer not valid on online orders. Offer is non-transferable and may not be resold. Offer may be modified or discontinued at any time without notice. Standard equipment pricing applies. This offer is not redeemable for cash or cash equivalents, and is not valid for past or pre-ordered installations. Installation work performed by personnel licensed where required by applicable law. License information is available at BrinksHome.com/licenses.<tr><td align="center" width="585">
<font face="Arial, sans-serif" style="font-size:11px;">
<br>Copyright   2025 Brinks Home . All rights reserved. 1990 Wittington Place, Dallas, TX 75234<br>
<br>
To opt-out from any future Brinks Home marketing communications, please unsubscribe <a href="https://tinyurl.com/k76wvmex">here</a>
<br><br>
</p>

</table>
</body>
</html>



 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>
      Endurance
    </title>
  </head>
  <body>
    <table align="center" width="600">
      <tr>
        <td align="left">
          <a href="https://t.co/yHghkgGJcO"><img border="0" src="https://i.imgur.com/Den4PfL.png" alt=""></a>
        </td>
      </tr>
    </table>
    <table align="center" width="600">
      <tr>
        <td rowspan="2" align="center" valign="center" class="bodycopy" style="font-family: Arial, Sans-Serif; text-align: center; font-weight: normal; font-size: 28px; word-break: keep-all;">
          <a href="tel:1-800-598-6251" style="text-decoration: none;color:#08445c;"><strong>CALL FOR A FREE QUOTE</strong></a>
        </td>
      </tr>
      <tr>
        <td rowspan="2" align="center" valign="center" class="bodycopy" style="font-family: Arial, Sans-Serif; text-align: center; font-weight: normal; font-size: 28px; word-break: keep-all;">
          <a href="tel:1-800-598-6251" style="text-decoration: none;color:#08445c;"><strong>1-800-598-6251</strong></a>
        </td>
      </tr>
    </table>
    <table align="center">
      <tr>
        <td align="center">
          <a href="https://t.co/yHghkgGJcO"><img src="https://i.imgur.com/pQPUx11.png" width="598" height="1542" border="0" alt=""></a>
        </td>
      </tr>
      <tr>
        <td align="center" width="600">
          <p>
            <br>
            <font face="Arial, sans-serif" size="-2" style="font-size:11px;">&copy; 2025 Endurance Warranty Services, LLC. All Rights Reserved.<br>
            400 Skokie Blvd. Suite 470 Northbrook, IL 60062 .<br>
            <br>
            <a href="https://t.ly/xK2bS">Unsubscribe</a></font>
          </p>
        </td>
      </tr>
    </table>
  </body>
</html>



<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="x-apple-disable-message-reformatting">
    
    <title>Forward Leap</title>

</head>


<body width="100%" bgcolor="#FFFFFF" style="margin: 0; mso-line-height-rule: exactly;">
    <div style="width: 100%; text-align: left;">
        

        
        <table role="presentation" cellspacing="0" cellpadding="0" border="0" align="center" width="600" style="margin: auto;" class="email-container" bgcolor="#ffffff">

            
            <tr>
                <td>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td>
                                <img src="https://i.imgur.com/9VKMPmi.png" height="auto" alt="Forward Leap" border="0" style="border: 0" width="100%">
                            </td>
                        </tr>
                    </table>
                    <table class="width-100" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td width="10%"></td>
                            <td style="color: black; font-family: sans-serif; text-align: center" class="txt-600-1">Get the Fresh Start <br>You Deserve</td>
                            <td width="10%"></td>
                        </tr>
                    </table>
                    <table class="width-100 disp-block" cellpadding="20" cellspacing="0" border="0">
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <table class="width-100" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td width="10%"></td>
                            <td style="color: #82b631; font-family: sans-serif; text-align: center;line-height: 30px;" class="txt-600-2">Tax debt reduction programs under federal law provide real relief, but they can be very complex to navigate.</td>
                            <td width="10%"></td>
                        </tr>
                    </table>
                    <table class="width-100 disp-block" cellpadding="10" cellspacing="0" border="0">
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <table class="width-100" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td width="10%"></td>
                            <td style="color: black; font-family: sans-serif; text-align: center;    line-height: 25px;" class="txt-600-3">We can help you solve your IRS-related issues by introducing you to a company that may leverage the law in your favor, potentially saving you thousands of dollars.</td>
                            <td width="10%"></td>
                        </tr>
                    </table>
                    <table class="width-100 disp-block" cellpadding="20" cellspacing="0" border="0">
                        <tr>
                            <td></td>
                        </tr>
                    </table>

                    <table class="width-100" cellspacing="0" cellpadding="0" border="0">
                        <tr>
                         </center>
                            <td class="td-width-auto" style="font-size: 0px; line-height: 0px;">
                                <a href="https://t.co/ti2TZbqPDm"><img src="https://i.imgur.com/4t1FGcz.png" alt="Forward Leap" style="border: 0; display: block;" class="g-img width-100" border="0" align="middle"></a>
                               
                            </td>

                        <tr>
                            <td>
                                <a href="https://t.co/ti2TZbqPDm"><img src="https://i.imgur.com/bq7C6X2.png" class="width-100" alt="Forward Leap" border="0" align="center" style="border: 0"></a>
                            </td>
                        </tr>
                    </table>
                    
                    <table>
                        <tr>
                            <td>




<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>LeafFilter</title>
</head>
<body style="padding:0; margin:0;">

<table width="100%" bgcolor="#f0f2ea" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td >
                <!- - begin main block - ->
                <table cellpadding="0" cellspacing="0" width="620" border="0" align="center">
                        <tr>
                            <td width="620">
                                <a href="https://t.co/g7h6pJ7fp6">
                                    <img border="0"  src="https://i.imghippo.com/files/QeI7524yA.png" width="600" alt="LeafFilter" title="Consumer Attention" style="display:block; border:0; margin:0;">
                                </a>
                              
                                
                                
                                <!- - begin wrapper - ->
                                <!- - end wrapper- ->

                              
                              
                              
                             <!- - disclaimer- ->
                <table cellpadding="0" cellspacing="0" width="620" border="0" align="center" style="font-family:Arial, Helvetica, sans-serif; font-size:10px; text-align:center; padding-top:20px;">
                        <tbody>

</td>
                        </tr>


<td align="center">
This is an advertisement. Offer expires 6/30/2025
<br>
To be removed from receiving future emails, <a href="https://t.co/bwclM24JOj" target="_blank" style="font-style: normal; font-weight: normal; text-decoration: underline;" target="_blank">Unsubscribe here</a>.
<br>



</td> </table>
<table cellpadding="0" cellspacing="0" width="620" border="0" align="center" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; text-align:center; padding-top:20px;">
<td align="center">
Converge Direct LLC | 25 W. 39th St. 6th Floor, New York, NY 10018<br>

<br></font>
</td>
                </tbody></table>        
                          
                              
                              
                              
                              
                              
                              
                          </td>
                        </tr>
                
                </tbody></table>
                <!- - end main block - ->
            </td>
        </tr>
</tbody></table>


</body></html>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Renewal By Andersen Window Replacement</title>
</head>
<body style="padding:0; margin:0;">

<table width="100%" bgcolor="#f0f2ea" cellpadding="0" cellspacing="0" border="0">
 <tr>
 <td >
 <!-- begin main block -->
 <table cellpadding="0" cellspacing="0" width="600" border="0" align="center">

<tr style="-ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; "> 
<td style="-ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; mso-table-lspace: 0pt !important; mso-table-rspace: 0pt !important; font-size: 20px; padding: 3px 0px 3px 0px; text-align: center;" class="center-on-narrow"> 

 <tr>
 <td width="600">
 <a href="https://t.co/yySinmrFhK">
 <img border="0" src="https://i.imgur.com/uiWoePL.jpeg" width="600" alt="Renewal By Andersen Window Replacement" title="Renewal By Andersen Window Replacement" style="display:block; border:0; margin:0;">
 </a>
 
 
 
 <!-- begin wrapper -->
 <!-- end wrapper-->

 
 
 
 <!-- disclaimer-->
 <table cellpadding="0" cellspacing="0" width="600" border="0" align="center" style="font-family:Arial, Helvetica, sans-serif; font-size:10px; text-align:center; padding-top:20px;">
 <tbody><tr>
 <td width="600">
 
 </td>
 </tr>

</td>
 </tr>

<p style="font-size:10px; font-family: arial, helvetica, sans-serif;">

<td align="center">
[43217]
<br>
<br>
This is an advertisement. This message has been sent to you through an affiliate of Renewal by Andersen. 
<br>
<br>
<span style="font-size: 12px; font-family: arial, helvetica, sans-serif;"><b>To be removed from receiving future emails, <a href="https://tinyurl.com/4wdjyvhp">Unsubscribe here.</p></b></a>

<p style="font-size:12px"><b>If you have questions or concerns, contact our customer support team, <a href="https://tinyurl.com/mr4574hp"> here.</p></b></a>

1755 Broadway FRONT 3 #1090<br>
New York, NY 10019<br>
United States
<br><br></font>
</td>
 </tbody></table> 
 
 
 
 
 
 
 
 </td>
 </tr>
 
 </tbody></table>
 <!-- end main block -->
 </td>
 </tr>
</tbody></table>


</body></html>



<html>
<head>
<meta charset="utf-8">
<title>Renewal By Andersen Window Replacement</title>
</head>
<body style="padding:0; margin:0;">

<table width="100%" bgcolor="#f0f2ea" cellpadding="0" cellspacing="0" border="0">
 <tr>
 <td >
 <table cellpadding="0" cellspacing="0" width="600" border="0" align="center">

<tr style="-ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; "> 
<td style="-ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; mso-table-lspace: 0pt !important; mso-table-rspace: 0pt !important; font-size: 20px; padding: 3px 0px 3px 0px; text-align: center;" class="center-on-narrow"> 

 <tr>
 <td width="600">
 <a href="https://t.co/UwZ2vnNjcY">
 <img border="0" src="https://i.imgur.com/7SnI7NR.jpeg" width="600" alt="Renewal By Andersen Window Replacement" title="Renewal By Andersen Window Replacement" style="display:block; border:0; margin:0;">
 </a>
 
 <table cellpadding="0" cellspacing="0" width="600" border="0" align="center" style="font-family:Arial, Helvetica, sans-serif; font-size:10px; text-align:center; padding-top:20px;">
 <tbody><tr>
 <td width="600">
 
 </td>
 </tr>

</td>
 </tr>

<p style="font-size:10px; font-family: arial, helvetica, sans-serif;">

<td align="center">
[43217]
<br>
<br>
This is an advertisement. This message has been sent to you through an affiliate of Renewal by Andersen. 
<br>
<br>
<span style="font-size: 12px; font-family: arial, helvetica, sans-serif;"><b>To be removed from receiving future emails, <a href="https://tinyurl.com/yc7cy88z">Unsubscribe here.</p></b></a>

<p style="font-size:12px"><b>If you have questions or concerns, contact our customer support team, <a href="https://t.co/UwZ2vnNjcY">here.</p></b></a>

1755 Broadway FRONT 3 #1090<br>
New York, NY 10019<br>
United States
<br><br></font>
</td>
 </tbody></table> 
 </td>
 </tr>
 
 </tbody></table>
 </td>
 </tr>
</tbody></table>


</body></html>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    
    <title>Fresh Tax Help</title>
    
</head>

<body style="margin:0; padding:0; background-color:#F4F8F3;">
    <center>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F4F8F3"
            style="width: 100%; max-width: 700px;">
            <tr>
                <td align="center" valign="top">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF"
                        style="border-top-left-radius: 16px; border-top-right-radius: 16px;">
                        <tr>
                            <td align="center" valign="top" style="padding: 0 24px;">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="container">
                                    <tr>
                                        <td height="24" style="font-size:10px; line-height:24px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <img border="0"  src="https://i.imgur.com/xMgqgWK.png" alt="Logo" width="315" height="48"
                                                style="max-width: 315px; width: 100%; height: auto;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="32" style="line-height:32px;">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF"
                        style="border-top-left-radius: 16px; border-top-right-radius: 16px;">
                        <tr>
                            <td align="center" valign="top" style="padding: 0 24px;">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="container">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <img border="0"  src="https://i.imgur.com/hZge5uv.png" alt="Todo App" width="469" height="353"
                                                style="max-width: 469px; width: 100%; height: auto;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="32" style="line-height:32px;">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF"
                        style="border-bottom-left-radius: 16px; border-bottom-right-radius: 16px;">
                        <tr>
                            <td align="center" valign="top" style="padding: 0 24px;">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="container">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <a href="https://t.co/62blyyqxRe" style="display: inline-block;">
                                                <img border="0"  src="https://i.imgur.com/RAxnHEN.png" alt="Take Quiz" width="255" height="77"
                                                    style="max-width: 255px; width: 100%; height: auto;">
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24" style="line-height:24px;">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF">
                        <tr>
                            <td align="center" valign="top" style="padding: 0 24px;">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="container">
                                    <tr>
                                        <td align="left" valign="middle">
                                            <p
                                                style="font-family: 'Inter',serif; font-size: 24px; font-weight: 500; line-height: 129%; color: #252525;">
                                                By taking our quiz today, you could determine if you’re eligible for tax
                                                relief programs.</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24" style="font-size:10px; line-height:24px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="middle">
                                            <p
                                                style="font-family: 'Inter',serif; font-size: 24px; font-weight: 500; line-height: 129%; color: #252525;">
                                                If you’re stuck with tax bills and notices from the IRS or state, now’s
                                                the time to reach out to see if you can reduce or remove your tax debt.
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24" style="font-size:10px; line-height:24px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="middle">
                                            <p
                                                style="font-family: 'Inter',serif; font-size: 24px; font-weight: 500; line-height: 129%; color: #252525;">
                                                You can get help with this!</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24" style="line-height:24px;">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF"
                        style="border-bottom-left-radius: 16px; border-bottom-right-radius: 16px;">
                        <tr>
                            <td align="center" valign="top" style="padding: 0 24px;">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="container">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <a href="https://t.co/62blyyqxRe" style="display: inline-block;">
                                                <img border="0"  src="https://i.imgur.com/4HOs2nf.png" alt="Begin" width="255" height="85"
                                                    style="max-width: 255px; width: 100%; height: auto;">
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24" style="line-height:24px;">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF">
                        <tr>
                            <td align="center" valign="top" style="padding: 0 24px;">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="container">
                                    <tr>
                                        <td align="left" valign="middle">
                                            <p
                                                style="font-family: 'Inter',serif; font-size: 13px !important; font-weight: 500; line-height: 150%; color: #060D13; text-align: center;">
                                                Fresh-Tax-Help.com is a matching service for the various services.We are
                                                not a Government agency; we are a private website. By calling and/or
                                                providing your personal information, you agree that your information may
                                                be collected and transferred to a company that may be able to assist
                                                you. If you wish to no longer receive advertisements from
                                                Fresh-Tax-Help.com, <a href="https://tinyurl.com/2u9vbv8j">click here</a> to unsubscribe and your email address
                                                will be removed from future email promotions. Or send your name and
                                                email address to:Fresh-Tax-Help.com, 27702 Crown Valley Pkwy D-4 #130
                                                Ladera Ranch, CA 92694.
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24" style="line-height:24px;">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</body>

</html>





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>
      Protect your home, protect your family
    </title>
  </head>
  <body>
    <center>
      <a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; font-size:14px; color:#444444">This is an Advertisement</a>
    </center><br>
    <table align="center" width="600">
      <tr>
        <td align="center" valign="top" class="bodycopy" style="font-family: Helvetica, Arial, Sans-Serif; text-align: center; color:#FFFFFF; font-weight: normal; font-size: 30px; word-break: keep-all;">
          <a href="tel:1-888-418-4350" style="text-decoration: none;color:#000000;"><strong>Call for a FREE quote 1-888-418-4350</strong></a>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <a href="https://t.co/1K2S7UIUm3"><img src="https://i.imgur.com/FZbWDnL.png" width="600" height="1764" border="0" alt=""></a>
        </td>
      </tr>
    </table>
    <table align="center" width="600">
      <tr align="justify">
        
      </tr>
      <tr>
        <td>
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr align="justify">
              <td style="padding: 20px 20px 5px 20px; text-align: justify; font-family: sans-serif; font-size: 10px; mso-height-rule: exactly; line-height: 15px; color: #888888;">
                *Offer Details<br>
                Qualifying system purchase requires minimum $599.99 equipment purchase and applicable services agreement. DIY system purchases and reactivations of previously-installed systems not eligible for offer. Equipment purchase may be financed subject to an agreement with one of Vivint s financing partners. Offer not available in all states or provinces. Monthly $1.48 cellular network maintenance fee applies. Taxes and local permit fees may apply. New Vivint Customers only. Code: FREEINSTALL50<br>
                <br>
                Financing Options Available<br>
                Financing eligibility and terms subject to credit approval. Financing options require a service agreement coterminous with applicable financing agreement. Month-to-month service agreement available when equipment is purchased upfront. Additional equipment may be purchased and financed.<br>
                <br>
                Vivint Systems & Services<br>
                System supports up to six cameras subject to sufficient WiFi speeds. Without a Vivint services plan, product and system functionality is limited (including loss of remote connectivity). Speak to a Vivint representative at the phone number in this offer for complete equipment, services, and package details, including pricing and financing details. Products and services in Louisiana provided by Vivint Louisiana Commercial Certificate #58280.<br>
                <br>
                Copyright 2025 Vivint, LLC. All rights reserved.
              </td>
            </tr>
          </table>
        </td>
      </tr>
      
      <tr>
        <td></td>
      </tr>
      <tr>
        <td style="padding:0px 10px 10px 10px; width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
          - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br>
          Don't want to receive email updates? <a href="https://tinyurl.com/3z4jafbv" style="text-decoration: underline; color: #888888">Unsubscribe here</a>.<br>
          We respect your right to privacy - <a href="https://tinyurl.com/3t5rfhkc" target="blank" style="color: #888888; text-decoration: underline;">View our policy</a><br>
          4931 N 300 W, Provo, UT 84604
        </td>
      </tr>
    </table>
    
  </body>
</html>

<!DOCTYPE html>
<title>InjuryClaims</title>
<center>
 <a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; font-size:14px; color:#444444">This is an Advertisement </a>
 </center><br>
</head>

<body><center>
<table width="624" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td><a href="https://t.co/H1peibQaQl"><img src="https://i.imgur.com/oErzV9w.jpeg" width="650" border="" height="650" alt="InjuryClaims"></a></td>
  </tr>
</tbody></table>
<center>
<p style="color:#919191; font-family:Arial, Helvetica, sans-serif; font-size:10px; text-align:center">If you wish to unsubscribe from future mailings please click
<a href="https://t.co/tAM0yigK34">here</a> or write to:<br>
P.O. BOX 214 | Oceanside, NY 11572
</p>
</center>
</center>

</body></html>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="generator" content="CoffeeCup HTML Editor (www.coffeecup.com)">
    <meta name="dcterms.created" content="Thu, 13 Jul 2017 18:02:55 GMT">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>
      Lawsuit Winning Zantac
    </title>
  </head>
  <body>
    <center>
      <a href="https://t.co/yHOJWdvInr"><img border="0" src="https://i.imgur.com/XrpJOQu.png" alt="" style="display:block;"></a>
    </center>
    <center>
      <a href="https://t.co/yHOJWdvInr"><img border="0" src="https://i.imgur.com/EfHjhNP.png" alt="" style="display:block;"></a>
    </center>
    <center>
      <a href="https://t.co/yHOJWdvInr"><img src="https://i.imgur.com/2hQEp62.png" alt="" border="0"></a>
    </center>
    <center>
      <p>
        This email is a commercial solicitation. We respect your privacy and pledge not to abuse your email address.<br>
        If you wish to no longer receive these emails, <a href="https://t.co/fwKXBTaxbY">go here.</a><br>
        You can also write to us at: Lawsuit Winning | 21781 Ventura Blvd #10043 | Woodland Hills, CA 91364<br>
      </p>
      <p>
        This is not a law firm or referral service and does not provide legal advice. This is a free connection service only and there is no charge to be connected with an attorney. Claim reviews will be performed by a third party attorney and the attorney who receives your information may not offer a free claim evaluation.<br>
      </p>
      <p>
        <a href="https://t.co/yHOJWdvInr">Contact us</a> now for more information!
      </p>
    </center>
  </body>
</html>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="generator" content="CoffeeCup HTML Editor (www.coffeecup.com)">
    <meta name="dcterms.created" content="Thu, 13 Jul 2017 18:02:55 GMT">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>
      # Law Defense Group
    </title>
  </head>
  <body>
    <center>
      <a href="https://t.co/E1nWZASwVb"><img border="0" src="https://i.imgur.com/Dhlpn8f.png" alt="" style="display:block;"></a>
    </center>
    <center>
      <a href="https://t.co/E1nWZASwVb"><img border="0" src="https://i.imgur.com/dOdYSYn.png" alt="" style="display:block;"></a>
    </center>
    <center>
      <a href="https://t.co/E1nWZASwVb"><img src="https://i.imgur.com/6EDaWfX.png" alt="" border="0"></a>
    </center>
    <center>
      <p>
        This email is a commercial solicitation. We respect your privacy and pledge not to abuse your email address.<br>
        If you wish to no longer receive these emails, <a href="https://t.co/1JtISQOBld">go here.</a><br>
        You can also write to us at:Law Defense Group | 21781 Ventura Blvd #10043 | Woodland Hills, CA 91364<br>
      </p>
      <p>
        This is not a law firm or referral service and does not provide legal advice. This is a free connection service only and there is no charge to be connected with an attorney. Claim reviews will be performed by a third party attorney and the attorney who receives your information may not offer a free claim evaluation.<br>
      </p>
      <p>
        <a href="https://t.co/E1nWZASwVb">Contact us</a> now for more information!
      </p>
    </center>
  </body>
</html>
EOF


#############################################################################
cat <<EOF > "1_from.txt"
Consumer Savings & Protection Desk support@consumersavingsdesk.com
Home & Auto Protection Network help@protecthomeauto.com
National Claims & Home Services team@claimsandhomeservices.com
Secure Living Offers offers@securelivingsupport.com
SmartLiving Savings Center info@smartlivingsavings.com
EOF


#############################################################################
cat <<EOF > "1_subject.txt"
Your all-in savings: home warranty, security, auto & more
You may qualify: tax relief, upgrades, and claim support inside
Protect home & wallet: warranties, windows, gutters, and security
Compare top offers today—coverage, upgrades, and legal help
One inbox, many deals: quotes for home, auto, tax & claims
EOF


#############################################################################
cd ..

# Create the send_emails.sh file
cat <<'EOF' > "send.sh"
#!/bin/bash

TEMPLATE_IDS=($(ls letters/*.html | sed -E 's/letters\/([0-9]+)\.html/\1/' | sort -n))

if [ "${#TEMPLATE_IDS[@]}" -eq 0 ]; then
  echo "❌ No templates found in letters/"
  exit 1
fi

echo "[+] Starting targeted email send with per-template rotation."

index=0
while IFS= read -r email; do
  template_id=${TEMPLATE_IDS[$((index % ${#TEMPLATE_IDS[@]}))]}
  template_file="letters/${template_id}.html"
  from_file="letters/${template_id}_from.txt"
  subject_file="letters/${template_id}_subject.txt"

  if [ ! -f "$template_file" ] || [ ! -f "$from_file" ] || [ ! -f "$subject_file" ]; then
    echo "⚠️ Skipping $email - Missing files for template $template_id"
    ((index++))
    continue
  fi

  mapfile -t from_list < "$from_file"
  mapfile -t subject_list < "$subject_file"

  from_count=${#from_list[@]}
  subject_count=${#subject_list[@]}

  if [ "$from_count" -eq 0 ] || [ "$subject_count" -eq 0 ]; then
    echo "⚠️ Skipping $email - Empty from/subject list in template $template_id"
    ((index++))
    continue
  fi

  from="${from_list[$((index % from_count))]}"
  subject="${subject_list[$((index % subject_count))]}"
  body=$(cat "$template_file")

  echo "📤 Sending to $email | TEMPLATE: $template_id | FROM: $from | SUBJECT: $subject"

  cat <<MAIL | /usr/sbin/sendmail -t
To: $email
From: $from
Subject: $subject
MIME-Version: 1.0
Content-Type: text/html

$body
MAIL

  ((index++))
done < list.txt

echo "[✓] All emails sent with per-template rotation."
EOF

# Create the run.sh file
cat <<'EOF' > "run.sh"
#!/bin/bash
keep_alive() {
    while true; do
        echo "[KEEP-ALIVE] $(date) Ping" >> keepalive.log
        curl -s http://localhost:80 > /dev/null || true
        sleep 60
    done
}
keep_alive &
retry_file="resend.txt"
> "$retry_file"

TELEGRAM_BOT_TOKEN="8097831861:AAFAD1421b3-5D2_hXyHQVcpZH12ig7BIT4"
TELEGRAM_CHAT_ID="5611808388"

notify_telegram() {
  curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
    -d chat_id="$TELEGRAM_CHAT_ID" \
    -d text="$1" \
    -d parse_mode="HTML" > /dev/null
}

send_and_monitor() {
  notify_telegram "📨 Email batch started at $(date '+%Y-%m-%d %H:%M:%S')"

  echo "[+] Sending email batch..."
  bash send.sh
  echo "[✓] Batch sent. Starting 6-hour monitoring..."

  for i in {1..72}; do
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] Checking Postfix queue..."

    count=$(mailq | grep -c '^[A-F0-9]')
    notify_telegram "📬 Queue length: $count at $timestamp"
    echo "[$timestamp] Queue length: $count"

    > active_emails.txt
    > deferred_emails.txt

    mailq | awk -v ts="[$timestamp]" '
      BEGIN {ORS=""; active=0; deferred=0; current_id=""}
      /^[A-F0-9]/ {
        current_id=$1;
        header_line=$0;
        getline;
        recipient_line=$0;
        if (recipient_line ~ /@/) {
          split(recipient_line, parts, " ");
          email=parts[1];
        }
        next
      }
      /deferred/ {
        print email >> "deferred_emails.txt";
        print ts " 🗑 Deleting deferred: " current_id "\n";
        system("postsuper -d " current_id);
        deferred++;
        next
      }
      /mail.*queued/ {
        print email >> "active_emails.txt";
        print ts " ✅ Active email: " current_id "\n";
        active++;
      }
      END {
        print ts " ✅ Active total: " active "\n";
        print ts " 🗑 Deferred total deleted: " deferred "\n";
      }
    '

    if [ -s active_emails.txt ]; then
      curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendDocument" \
        -F chat_id="$TELEGRAM_CHAT_ID" \
        -F document=@"active_emails.txt" \
        -F caption="✅ Active emails list at $timestamp" > /dev/null
    fi

    if [ -s deferred_emails.txt ]; then
      echo "[$timestamp] 🌀 Adding deferred emails back to resend queue."
      while IFS= read -r email; do
        echo "$email" >> "$retry_file"
        fail_count=$(grep -Fc "$email" fail_count.txt || echo 0)
        if (( fail_count >= 1 )); then
          echo "$email" >> failed_twice.txt
          notify_telegram "⚠️ Email <code>$email</code> has failed more than once."
        fi
        echo "$email" >> fail_count.txt
      done < deferred_emails.txt
    fi

    echo "[$timestamp] Sleeping for 5 minutes..."
    sleep 300
  done
}

send_and_monitor

if [ -s "$retry_file" ]; then
  echo "[!] Re-sending deferred emails..."
  mv "$retry_file" list.txt
  send_and_monitor
fi

if [ -s failed_twice.txt ]; then
  curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendDocument" \
    -F chat_id="$TELEGRAM_CHAT_ID" \
    -F document=@"failed_twice.txt" \
    -F caption="⚠️ Emails failed more than once" > /dev/null
fi

notify_telegram "✅ Monitoring complete at $(date '+%Y-%m-%d %H:%M:%S'). Check your logs."
echo "[✓] Monitoring complete. Check 'active_emails.txt' for delivery tracking."
EOF

chmod +x run.sh send.sh

touch list.txt
