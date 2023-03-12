import pandas as pd

exdt = pd.read_excel(r"C:\k_digital\python_workspace\python_xlsx\데이터 가공_0309.xlsx", sheet_name="알고리즘필터")

print(exdt.columns)

exdt = exdt[['id', 'date_of_birthday', 'gender']]
print(exdt)

# 성별이 여자인 아이디만 출력
female_ids = exdt.loc[exdt['gender'] == 'F', 'id']
print(female_ids)

# 성별이 남성인 아이디만 출력
male_ids = exdt.loc[exdt['gender'] == 'M', 'id']
print(male_ids)

# 10대, 20대, 30대를 구분하기 위한 함수
def get_age_group(birthday):
    year = int(str(birthday)[:4])
    age = 2023 - year + 1
    if age < 20:
        return "10대"
    elif age < 30:
        return "20대"
    else:
        return "30대 이상"

# 데이터프레임에 age_group 컬럼 추가
exdt['age_group'] = exdt['date_of_birthday'].apply(get_age_group)

# 각 연령대별 아이디 출력
for age_group in ['10대', '20대', '30대 이상']:
    print(f"{age_group} 아이디: {', '.join(exdt.loc[exdt['age_group'] == age_group, 'id'])}")

# 성별 및 연령대에 따라 아이디 출력
for gender in ['F', 'M']:
    for age_group in ['10대', '20대', '30대 이상']:
        ids = exdt.loc[(exdt['gender'] == gender) & (exdt['age_group'] == age_group), 'id']
        print(f"{gender} {age_group} 아이디: {', '.join(ids)}")


