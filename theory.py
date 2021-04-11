import sqlite3


def collect(text):
    #text = main_part(text) пока ещё не готово(
    con = sqlite3.connect('databases/theory_db.sqlite')
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