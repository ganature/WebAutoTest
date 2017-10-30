import sqlite3
par={'u':11,'p':22}
import time
import requests

r=requests.post(url='http://120.77.216.30/ptt/a/ptt/user/pttUser/save',)
header={
        "Accept":"text/html,application/xhtml+xml,application/xml;",
        "Accept-Encoding":"gzip",
        "Accept-Language":"zh-CN,zh;q=0.8",
        "Referer":'http://120.77.216.30/ptt/a?login',
        "User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36"
            }
print r.status_code
with open('get.txt','w') as g:
    g.write(r.content)

'''
def data():
    con=sqlite3.connect(database='test.db')
    cur=con.cursor()
    creatSql='CREATE TABLE user(username VARCHAR(30),passwd VARCHAR(30))'

    cur.execute(creatSql)


def a(par):
    print par['u']
class A():
    a=1
    b=2
class B(A):
    a=3
    b=4


def extendList (val, list=[]):
    list.append (val)
    return  list

list1 = extendList (10)
print list1
list2 = extendList (123, [])
print list2
list3 = extendList ('a')
print list3

print"list1 = %s" % list1
print"list2 = %s" % list2
print"list3 = %s" % list3
'''


