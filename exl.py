import sqlite3
par={'u':11,'p':22}

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