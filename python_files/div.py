def div(a,b):
    res = a/b
    try:
        if(b == 0):
             print("bolimaganne give a number for b is more than 1 or less than 1" )

    except ZeroDivisionError as e:

        print(e)
    print(res)


div(4,2)



