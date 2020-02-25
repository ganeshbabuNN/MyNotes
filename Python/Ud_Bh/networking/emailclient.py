import smtplib
from email.mime.text import MIMEText

body = "This is a test email.How are you"

msg = MIMEText(body)
msg['From'] = "springxyzabc@gmail.com"
msg['To'] = "springxyzabc@gmail.com"
msg['Subject'] = "Hello"

server = smtplib.SMTP('smtp.gmail.com',587)

server.starttls()

server.login("springxyzabc@gmail.com","xyzabc123")

server.send_message(msg)

print("Mail sent")

server.quit()

