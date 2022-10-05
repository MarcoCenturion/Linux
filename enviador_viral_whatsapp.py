import sys
import autowhatspy

mensaje='/home/marco/mensaje'
contacto='/home/marco/contacto_prueba'
perfil=3513070654
gechodriver='/usr/bin/geckodriver'
gechodriver_log='/home/marco'
imagen='/home/marco/prueba.png'

autowhatspy.message_to_contacts(mensaje,contacto,gechodriver,gechodriver_log,perfil,image=imagen)



'''
import autowhatspy
import os

path = path = os.path.dirname(os.path.realpath(__file__)) + "\\"
msg = path + "msg.txt"
numbers_list = path + "numlist.txt"
gechodriver = path + "gechodriver.exe"
gechodriver_log = path + "gecholog.txt"
user_profile = path + "firefoxprofile"
country_code = "91"
image = path + "image.jpg"


autowhatspy.message_to_numbers(msg, numbers_list, gechodriver, gechodriver_log, user_profile, country_code, image)
'''
