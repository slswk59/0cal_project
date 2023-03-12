import pandas as pd

exdt = pd.read_excel(r"C:\k_digital\python_workspace\python_xlsx\데이터 가공_0309.xlsx", sheet_name="구매목록", header=2)

print(exdt.columns)

exdt = exdt[['아이디.1', '상품수량.1', '상품코드.1']]
print(exdt)

# 아이디별로 구매한 상품 코드와 수량을 그룹화
exdt_grouped = exdt.groupby(['아이디.1', '상품코드.1']).sum()
print(exdt_grouped)

# 각 아이디별로 가장 많이 구매한 상품 코드
exdt_max = exdt_grouped['상품수량.1'].groupby(level=0).idxmax()
print(exdt_max)

# 가장 많이 구매한 상품 코드를 기준으로 아이디별로 그룹화하고 상관관계 계산
exdt_corr = exdt.groupby(exdt_max)[['상품코드.1', '상품수량.1']].apply(lambda x: x.groupby('상품코드.1')['상품수량.1'].sum())
exdt_corr = exdt_corr.unstack().fillna(0)
exdt_corr = exdt_corr.corr()
print(exdt_corr)





