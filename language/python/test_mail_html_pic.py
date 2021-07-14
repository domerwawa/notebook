#!/usr/bin/env python3

import smtplib
from email.message import EmailMessage
from email.headerregistry import Address
#from email.utils import make_msgid
import os

msg = EmailMessage()
msg['Subject'] = "test subject"
msg['From'] = Address("test", "test", "nomura.com")
msg['To'] = (Address("adams zhou1", "adams_zhou1", "nomura.com"),
             Address("adams zhou2", "adams_zhou2", "nomura.com"))
msg.set_content("""\
    test content
""")
body = '''
<html>
    <head></head>
    <body>
      <p>test</p>
      <p>Chart:</p>
      {html_image_part}
    </body>
</html>
'''
path = r"c:\XX\pic"
img_files = os.listdir(path)

html_image_port = ""
for index in range(len(img_files)):
    html_image_part = html_image_part + '<img src="cid:image' + str(index + 1) + '">'
body = body.format(html_image_part=html_image_part)
msg.add_alternative(body, subtype='html')

i = 1
for img_file in img_files:
    with open(path + "\\" + img_file, 'rb') as fp:
        msg.get_payload()[1].add_related(fp.read(), 'image', 'png', cid="image" + str(i))
    i = i + 1   
    
with smtplib.SMTP("mailhub.XXX.XXX") as s:
    s.send_message(msg)

