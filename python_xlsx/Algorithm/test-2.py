import pandas as pd
import numpy as np

exdt = pd.read_excel(r"C:\k_digital\python_workspace\python_xlsx\데이터 가공_0309.xlsx", sheet_name="구매목록", header=2)

exdt_merge = pd.merge(exdt, pd.read_excel('./data/item_master.xlsx', engine='openpyxl'), on='상품코드', how='left')
exdt_max = exdt_merge.groupby(['아이디.1']).apply(lambda x: x.nlargest(3, '상품수량.1')).reset_index(drop=True)
exdt_max = exdt_max.groupby(['아이디.1'])['상품코드.1'].apply(list).reset_index(name='가장많이구매한상품코드')

exdt_pivot = pd.DataFrame({'아이디.1': exdt_max['아이디.1'], '가장많이구매한상품코드': exdt_max['가장많이구매한상품코드'].apply(lambda x: x[0])})
for i in range(1, 3):
    exdt_pivot[f'가장많이구매한상품코드{i}'] = exdt_max['가장많이구매한상품코드'].apply(lambda x: x[i] if i < len(x) else np.nan)

exdt_corr = exdt_pivot.corr()
print(exdt_corr)
