login_id = 'A001'  # 로그인한 아이디
df_login = exdt[exdt['아이디'] == login_id]  # 아이디가 로그인한 아이디인 데이터만 필터링

corr_with_login = exdt.corrwith(df_login).sort_values(ascending=False)  
# 로그인한 아이디와 상관관계가 높은 다른 아이디를 찾음
corr_with_login = corr_with_login.drop(login_id)  # 자기 자신은 제외

recommended_items = set()  # 추천 상품을 담을 집합 생성
for id2, corr in corr_with_login.items():
    df_id2 = exdt[exdt['아이디'] == id2]  # 아이디가 다른 아이디인 데이터만 필터링
    diff_items = set(df_id2['상품명']) - set(df_login['상품명'])  # 다른 아이디가 구매한 상품 중에서 로그인한 아이디가 구매하지 않은 상품 추출
    recommended_items |= diff_items  # 추천 상품에 추가
print(f"{login_id}님께 추천하는 상품:", list(recommended_items))