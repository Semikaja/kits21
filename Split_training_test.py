import os
import numpy as np
import shutil 
from sklearn.model_selection import train_test_split
#'kits21/kits21/data/'


#root_dir= r'C:\Users\kaja_\Prosjektoppgave\Kode\kits21\kits21\data'
root_dir= '/cluster/home/kajako/Prosjekt/kits21/kits21/data'
new_root= 'AllDatasets/'
os.makedirs('/cluster/home/kajako/Prosjekt/kits21/' + new_root + 'train/')
#os.makedirs('kits21' + new_root + 'val/')
os.makedirs('/cluster/home/kajako/Prosjekt/kits21/'+ new_root + 'test/')

#train_des= r'C:\Users\kaja_\Prosjektoppgave\Kode\kits21\AllDatasets\train'
#test_des = r'C:\Users\kaja_\Prosjektoppgave\Kode\kits21\AllDatasets\test'
train_des= '/cluster/home/kajako/Prosjekt/kits21/AllDatasets/train'
test_des = '/cluster/home/kajako/Prosjekt/kits21/AllDatasets/test'
allFilenames = os.listdir(root_dir)
#print(allFilenames)
train_data, test_data= train_test_split(allFilenames, test_size=50, train_size=250, random_state=25)
print(train_data[0])
#print('test data:   ', test_data)
#print('train data:    ', train_data)
train_FileNames = [root_dir+ "/" +name for name in train_data]
test_FileNames = [root_dir+ "/" + name for name in test_data]

for i,t in enumerate(test_FileNames):
    #print(test_des)
    print(f"t is: {t}")
    shutil.copytree(t,test_des + f'/{test_data[i]}',dirs_exist_ok=True)
for i,t in enumerate(train_FileNames):
    shutil.copytree(t,train_des+f'/{train_data[i]}', dirs_exist_ok=True)




"""
#val_FileNames = [root_dir + name for name in val_FileNames.tolist()]
#print(test_FileNames)
#print(train_FileNames)

for i, name in enumerate(train_FileNames):
    #print(train_des+'/'+train_data[i])
    #print(name)
    shutil.copytree(name, train_des)
#    shutil.copytree(name, train_des+'/'+train_data[i], dirs_exist_ok=True)

#for i, name in enumerate(test_FileNames):
#    shutil.copytree(name, test_des+'/'+test_data[i], dirs_exist_ok=True)




"""








# Inspiration gotten from https://stackoverflow.com/questions/53074712/how-to-split-folder-of-images-into-test-training-validation-sets-with-stratified