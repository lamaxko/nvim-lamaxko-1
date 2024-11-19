

def test(time, am=False, pm=False):
    if pm:
        return time + 12
    if am:
        return time

print(test(4, pm=True))
