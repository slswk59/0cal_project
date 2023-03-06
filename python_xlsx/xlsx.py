import pandas as pd
import os

#방법 1. 전체 경로 입력
df1=pd.read_excel('C:\k_digital\1.project\데이터 가공')


#방법 2. 작업경로 지정 후 파일 이름 입력
# os.chdir('C:\k_digital\1.project')

# df1=pd.read_excel('데이터 가공')

