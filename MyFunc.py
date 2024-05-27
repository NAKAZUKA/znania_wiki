from pprint import pprint
from ruwordnet import RuWordNet

wn = RuWordNet(filename_or_session='BD_words/ruwordnet-2021.db')


def get_synsets(word):
    global wn
    sin = list()
    for i in wn.get_synsets(word):
        t = i.title.lower()
        t = t.split(', ')
        for j in t:
            k = j.lower()
            k = k.replace(')', '')
            k = k.split('(')
            for p in k:
                sin.append(p.strip())
    if not sin:
        return [word.lower()]
    return sin


def get_hypernyms(word):
    global wn
    sin = list()
    for i in (wn.get_synsets(word)):
        for j in i.hypernyms:
            t = j.title.lower()
            t = t.split(', ')
            for j in t:
                k = j.lower()
                k = k.replace(')', '')
                k = k.split('(')
                for p in k:
                    sin.append(p.strip())
    if not sin:
        return [word.lower()]
    return sin


import Shingle


def sravn_text(text1, text2):
    return Shingle.main(text1, text2)


def normalize_text(text):
    text = text.split()
    for i in Shingle.stop_symbols:
        for j in range(len(text)):
            text[j] = text[j].removesuffix('.')
            if text[j] == i:
                text[j] = text[j].replace(i, '').removesuffix('.')
    for i in Shingle.stop_words:
        for j in range(len(text)):
            text[j] = text[j].removesuffix('.')
            if text[j] == i:
                text[j] = text[j].replace(i, '')
    text = " ".join(text)
    text = text.strip()
    return text.lower()

# pprint(get_synsets('член'))
# pprint(get_hypernyms('член'))
#
# print(normalize_text("4 привет как делаt nythtn th nyjth", " rntnhnhdgghdb nhnhn ytr nytnt привет как дела"))
