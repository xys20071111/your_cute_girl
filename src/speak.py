import sys
import time
import random

DIALOG_TYPE = [1,2]

def get_version():
    return sys.version

def speak():
    dialog_type = random.choice(DIALOG_TYPE)
    if dialog_type == 1:
        return random.choice(["有什么事吗，主人","哇啊，主人不要突然摸我啊","主人？","主人来看我，我很高兴呢","最喜欢主人了"])
    if dialog_type == 2:
        localtime = time.localtime(time.time())
        if localtime[3] in [5,6,7,8,9]:
            return random.choice(["早上好，主人","又是崭新的一天呢，主人"])
        if localtime[3] in [10,11,12]:
            return random.choice(["啊，已经是中午了呢，主人","到中午了，主人，该准备吃午饭了"])
        if localtime[3] in [13,14,15,16]:
            return random.choice(["主人，到下午了啊，有点懒洋洋的不想动","到下午了呢，主人也适当休息一下吧"])
        if localtime[3] in [17,18,19,20]:
            return random.choice(["到晚上了，主人，今天辛苦了","到晚上了，主人"])
        if localtime[3] in [0,1,2,3,4,21,22,23]:
            return random.choice(["已经很晚了，主人，该睡觉了","时间不早了，该睡觉了，主人"])
    