import pyautogui, time

while True:
    pyautogui.moveRel(0, 50, duration = 1) 
    pyautogui.moveRel(50, 0, duration = 1) 
    pyautogui.moveRel(0, -50, duration = 1) 
    pyautogui.moveRel(-50, 0, duration = 1)
    time.sleep(10)