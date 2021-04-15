import sqlite3
import os.path


def collect(text):
    el1, el2 = text
    #text = main_part(text) пока ещё не готово(
    con = sqlite3.connect(load_path('data.sqlite'))
    cur = con.cursor()
    result = cur.execute(f"""SELECT descrp FROM Chains AS c
    WHERE el1 LIKE '{el1}' AND  WHERE el2 LIKE '{el2}'""") #поиск по бд searching data base
    return result
    con.close()



def main_part(s, s2): #кто-то может написать индексы не правильно, тогда программа все равно правильно сработает
    s3 = s1 = ''
    for j in s:
        if j.isalpha() :
            s1 += j
    for j in s2:
        if j.isalpha() :
            s3 += j
    return (s1, s3)


def load_path(name):
    fullname = os.path.join("databases", name)
    return fullname