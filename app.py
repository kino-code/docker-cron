import datetime
import pandas as pd

dt_now = str(datetime.datetime.now().strftime('%Y%m%d-%H%M%S'))
df = pd.DataFrame(
    [[dt_now, "kinocode", "Hello cron"]],
    columns=['datetime', 'name', 'greet'])

df.to_csv('/usr/src/app/' + dt_now + '.csv')
print(dt_now, ' Hello world from crond')
