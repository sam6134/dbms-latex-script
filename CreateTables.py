import pyautogui
import time
time.sleep(4)
sql_file = open("createTable.sql")
sql_as_string = sql_file.read()

commandList = list(sql_as_string.split(";"))
for i in range(len(commandList)):
    commandList[i]=commandList[i].lstrip("\n")
for command in commandList[:-1]:
    pyautogui.typewrite(command+";")
    pyautogui.press('enter')