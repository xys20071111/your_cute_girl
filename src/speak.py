import sys
import time
import random
import dialog
DIALOG_TYPE = [1, 2]
MORNING = [5, 6, 7, 8, 9, 10]
NOON = [11, 12, 13]
AFTERNOON = [14, 15, 16, 17]
NIGHT = [18, 19, 20, 21]
MIDNIGHT = [0, 1, 2, 3, 4, 22, 23]


def get_python_version():
    return sys.version


def speak():
    dialog_type = random.choice(DIALOG_TYPE)
    if dialog_type == 1:
        return random.choice(dialog.normal_dialog)
    if dialog_type == 2:
        localtime = time.localtime(time.time())
        if localtime[3] in MORNING:
            return random.choice(dialog.dialog_morning)
        if localtime[3] in NOON:
            return random.choice(dialog.dialog_noon)
        if localtime[3] in AFTERNOON:
            return random.choice(dialog.dialog_afternoon)
        if localtime[3] in NIGHT:
            return random.choice(dialog.dialog_night)
        if localtime[3] in MIDNIGHT:
            return random.choice(dialog.dialog_midnight)
