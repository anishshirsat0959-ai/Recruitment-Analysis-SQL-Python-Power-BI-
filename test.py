import pandas as pd
import random

companies = ["TCS", "Infosys", "Wipro", "Accenture", "Cognizant"]
status_list = ["Selected", "Rejected", "Pending"]

data = []

for i in range(1, 51):   # 50 records
    data.append([
        i,
        f"Candidate_{i}",
        random.choice(companies),
        random.choice(status_list)
    ])

df = pd.DataFrame(data, columns=["id", "name", "company", "status"])
df.to_csv("recruitment_data.csv", index=False)

print("Big dataset created")