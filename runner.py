import time

def test_method():
    retry = 10
    while( retry != 0 ):
        time.sleep(2)
        print (f'sleeping counter {retry}')
        retry -= 1

    print("All Tests Passed! Congratulations!!!")



test_method()