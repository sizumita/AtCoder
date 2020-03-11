import datetime
target_day = datetime.datetime.strptime(input(), "%Y/%m/%d")
while True:
    if not target_day.year % target_day.month:
        if not (target_day.year / target_day.month) % target_day.day:
            print(target_day.strftime("%Y/%m/%d"))
            exit()
    target_day = target_day + datetime.timedelta(days=1)
