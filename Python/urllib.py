import smtplib as mail
mailserver = mail.SMTP("example.net")
mailserver.login("testusr","testpassword")
msg = '''From: Sender Name <sender@example.net>
To: <reciepient@example.net>
Subject: A Test email Message!
Content-type: text/html
MIME-Version:1.0

This will be the body of your email message'''
mailserver.sendmail("sender@example.net","reciepient@example.net",msg)
