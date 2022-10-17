import re
import pyperclip as clip

tst_amadeus = clip.paste()

route=re.findall(r'^\s{2}\d{1}\s{2}\w{2}.{55}',tst_amadeus, flags=re.M)
renglon=[]
#vuelo=[]
#elemento=[]


linea = []
for renglon in route:
    # vuelo=renglon.splitlines()
    linea.append(renglon)
    print(renglon)
    print(linea)

'''
for elemento in renglon:
    print(elemento)
'''
