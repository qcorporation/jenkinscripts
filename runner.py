import time

def test_method():
    retry = 10
    while( retry != 0 ):
        time.sleep(5)
        print (f'sleeping counter {retry}')
        retry -= 1



test_method()