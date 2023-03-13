import pandas as pd
import numpy as np

exdt = pd.read_excel(r"C:\k_digital\python_workspace\python_xlsx\데이터 가공_0309.xlsx", sheet_name="구매목록", header=2)

print(exdt.columns)

exdt = exdt[['아이디.1', '상품수량.1', '상품코드.1']]
# print(exdt)

# 아이디별로 구매한 상품 코드와 수량을 그룹화
exdt_data = exdt[['아이디.1', '상품코드.1', '상품수량.1']]
exdt_data = exdt_data.groupby(['아이디.1', '상품코드.1']).sum()

exdt_id = exdt_data.reset_index()[['아이디.1', '상품코드.1']]
exdt_id = exdt_id.drop_duplicates()

exdt_merge = pd.merge(exdt_id, exdt_data, on=['아이디.1', '상품코드.1'])
# print(exdt_merge)

# exdt_grouped = exdt.groupby(['아이디.1', '상품코드.1']).sum()
# print(exdt_grouped)

# 아이디 별, 가장많이구매한상품코드 top3추출
exdt_max = exdt_merge.groupby(['아이디.1']).apply(lambda x: x.nlargest(3, '상품수량.1')).reset_index(drop=True)
exdt_max = exdt_max.groupby(['아이디.1'])['상품코드.1'].apply(list).reset_index(name='가장많이구매한상품코드')
# print(exdt_max)

exdt_corr = exdt.merge(exdt_max, on='아이디.1', how='left')
exdt_pivot = pd.pivot_table(exdt_corr, values='상품수량.1', index=['아이디.1'], columns=['가장많이구매한상품코드'], aggfunc=np.sum, fill_value=0)
exdt_corr = exdt_pivot.corr()


# 각 열간의 상관관계 계산
exdt[['아이디.1','가장많이구매한상품코드']].corr()









