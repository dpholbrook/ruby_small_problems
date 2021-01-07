age_1 = {molly: 27, drew: 32}
age_2 = {tims: 35, lauren: 35}

merge = age_1.merge(age_2)

p merge
p age_1
p age_2

destructive_merge = age_1.merge!(age_2)

p destructive_merge
p age_1
p age_2
