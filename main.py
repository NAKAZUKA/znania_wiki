import main_funcs as mf
from pprint import pprint

import os
from flask import Flask, flash, request, redirect, url_for, render_template, make_response
# объясняется ниже
from werkzeug.utils import secure_filename

ALLOWED_EXTENSIONS = {'txt', 'sql', 'sqlite'}

app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 1024 * 1000 * 1000


def main(filename):
    text = mf.get_texts("my_wiki.sql")
    # pprint(text, depth=2, width=150, compact=True)
    Blists = mf.get_blacklists()
    # pprint(Blists, depth=2, compact=True)
    Bwords = mf.get_blackwords()
    # pprint(Bwords, depth=2, compact=True)
    tex = ''
    for i in text:
        Y = mf.check(text=i['text'], blacklists=Blists, blackwords=Bwords)
        if type(Y) != type(True):
            tex += '<h2 class="card-title text-center mb-4">' + i['title'] + '</h2><br>'
            tex += '<p>' + Y + '</p><br><br>'
    return tex


@app.route('/transform', methods=["POST"])
def transform_view():
    request_file = request.files['data_file']
    if not request_file:
        return "No file"

    file_contents = request_file.stream.read()

    result = file_contents

    with open('UPLOAD/' + request_file.filename, 'wb') as f:
        f.write(result)
    return render_template('report.html', DATA=main('UPLOAD/' + request_file.filename))

@app.route('/')
def show():
    return render_template('main.html')

if __name__ == '__main__':
    app.run()
