import pprint

import MyFunc
import MyFunc as mf
import BD
import re


def get_from_dump(bd):
    lis = u = list()
    with open(bd, 'r', encoding='ANSI') as f:
        t = f.read()
        t = t.split("\n")
        lis = t
    for i in range(len(lis)):
        d = "INSERT INTO searchindex_content (docid, c0si_title, c1si_text) VALUES ("
        if lis[i] != str(lis[i]).removeprefix(d):
            z = lis[i].removeprefix(d)
            z = z.removesuffix("');")
            z = z.split("', '")
            z[0] = z[0].split("'")[1]
            u.append({"title": z[0], "text": z[1]})
    return u


def get_texts(bd):
    if ".sqlite" in bd:
        BD.DATABASE = bd
        texts = BD.get_question(f"SELECT * FROM searchindex_content")
        lis = list()
        for i in texts:
            lis.append({"title": i['c0si_title'], "text": i['c1si_text']})
        return lis
    else:
        return get_from_dump(bd)


def get_blacklists(bd="blacklist.txt"):
    t = ""
    with open(bd, 'r', encoding='utf-8') as f:
        t = f.read()
    t = t.split("\n")
    for i in range(len(t)):
        t[i] = t[i].split("#")[0].strip()
    while ("" in t):
        t.remove("")
    return t


def get_blackwords(bd="blackwords.txt"):
    t = ""
    with open(bd, 'r', encoding='utf-8') as f:
        t = f.read()
    t = t.split("\n")
    for i in range(len(t)):
        t[i] = t[i].split("#")[0].strip()
    while ("" in t):
        t.remove("")
    return t


def check(text='', blacklists=[], blackwords=[]):
    norm = mf.normalize_text(text).replace("?", "")
    # print(norm)
    ot = []
    for i in blacklists:
        if re.match(i, norm):
            urls = [match for match in re.findall(i, norm)]
            for u in urls:
                norm = norm.replace(u, "<mark>" + u.strip() + "</mark>")
    for i in blackwords:
        norm = norm.replace(i, "<mark>" + i.strip() + "</mark>")
        for ty in MyFunc.get_synsets(i):
            if ty in norm:
                norm = norm.replace(ty, "<mark>" + ty.strip() + "</mark>")
        for ty in MyFunc.get_hypernyms(i):
            if ty in norm:
                norm = norm.replace(ty, "<mark>" + ty.strip() + "</mark>")
    return norm