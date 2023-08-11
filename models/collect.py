#!/bin/bash
from datetime import datetime
from yahoo_fin.stock_info import get_data
import pandas as pd

number_year = int(input('Which period do you want (d-1)?: '))

end = datetime.today()

start = datetime(end.year-number_year, end.month, end.day)

stocks = input('Which cryptocurrencies do you want to download?: ').split(" ")

for i in stocks:
    
    print(i)
    
    data = get_data(i, start_date=start, end_date=end, index_as_date = True, interval="1d")
    
    data.to_csv('../database/raw/'+ str(i) + '.csv')