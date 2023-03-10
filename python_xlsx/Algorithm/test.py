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

# bbini1109 아이디와 많이 구매한 상품 코드에 대한 상관관계 계산
bbini_corr = exdt_corr.loc['bbini1109']

# 다른 아이디들과의 상관관계 계산 후, 상위 3개 아이디 구하기
top_3_corr = bbini_corr.drop('bbini1109').nlargest(3)
top_3_ids = top_3_corr.index.tolist()

print(top_3_ids)


