import sqlite3
import os.path


def collect(text):
    #text = main_part(text) пока ещё не готово(
    con = sqlite3.connect(load_path('data.sqlite'))
    cur = con.cursor()
    result = cur.execute(f"""SELECT descrp FROM Theory AS t
    WHERE title LIKE '{text}'""") #поиск по бд searching data base
    return result
    con.close()



def main_part(s): #кто-то может написать индексы не правильно, тогда программа все равно правильно сработает
    s1 = ''
    for j in s:
        if j.isalpha() :
            s1 += j
    return s1


def load_path(name):
    fullname = os.path.join("databases", name)
    return fullname
