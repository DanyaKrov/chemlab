import sqlite3


def collect(text):
    text1, text2 = text
    #text = main_part(text) пока ещё не готово(
    con = sqlite3.connect('databases/theory_db.sqlite')
    cur = con.cursor()
    result = cur.execute("""SELECT t.descrp FROM Theory AS t
    WHERE t.title """) #поиск по бд searching data base
    for elem in result:
        print(elem[0])
    con.close()



def main_part(s): #кто-то может написать индексы не правильно, тогда программа все равно правильно сработает
    s1 = ''
    for j in s:
        if j.isalpha() :
            s1 += j
    return s1