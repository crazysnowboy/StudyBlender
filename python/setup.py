#!/usr/bin/python2.7
# -*- coding: utf-8 -*-
import os
import sys
reload(sys) 
sys.setdefaultencoding('utf-8')

def Filter_Lists(lists,not_included,and_included,or_include):
    dst_lists = []
    for obj in lists:
        flag=True
        for n_inc in not_included:
            if n_inc in obj:
                flag=False
                break
        if flag==True:  
            for inc in and_included:
                if inc not in obj:
                   flag=False 
                   break
            if flag==True: 
                for inc in or_include:
                    if inc  in obj: 
                        dst_lists.append(obj)

    return dst_lists

def GetFileList(root_dir,dirs,fileList):
    for dir in dirs:
        if '.' is not dir[0]:
            new_dir = root_dir+ '/' + dir
            if os.path.isfile(new_dir):
                fileList.append(new_dir)
            else: 
                sub_dirs = os.listdir(new_dir) 
                new_root = new_dir
                GetFileList(new_root,sub_dirs,fileList)
    return fileList

def GetDirFromFilePath(file_path):
    for i in range(0,len(file_path),1):
        j = len(file_path)-1-i;
        if file_path[j]=='/':
            return file_path[0:j]
        
    
if __name__ == '__main__':
    
    # root_path = '/home/collin/Space_1_5_T/MyDocument/code/AAAAAA/Blender'
    root_path = '/home/collin/Documents/MyProjects/Blender'

    dirs = os.listdir(root_path) 

    files = GetFileList(root_path,dirs,[]) 

    not_included=['intern','extern','.pyc','.css','cmake','.o','build'] #not include
    and_include = []
    or_include =['.h']
    h_files = Filter_Lists(files,not_included,and_include,or_include)



    and_include=['test']
    or_include=['.cc','.c','.cpp']
    c_files = Filter_Lists(files,not_included,and_include,or_include)
    


    for file in c_files:
        print "file = ",(file)
        print "file = ",GetDirFromFilePath(file)





