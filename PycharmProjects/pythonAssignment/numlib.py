import numpy as np

empid = np.arange(201, 211)
empid = np.add(empid, 100)
np.random.shuffle(empid)

print(empid[0:6:6])
print(empid.size)

indx = np.where(empid > 206)
print(indx)
print(empid[indx])

newemp_id = np.arange(301, 306)
np.random.shuffle(newemp_id)

print(newemp_id)

empid = np.append(empid, newemp_id)
np.random.shuffle(empid)

print(empid)

mark = np.array([9, 6, 3, 7, 8, 5, 2, 4, 7, 6])
np.random.shuffle(mark)

print(np.sort(mark))
print(np.sort(mark)[::-1])
print(-np.sort(-mark))
