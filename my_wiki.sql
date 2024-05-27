--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.4 в Пн май 27 11:23:00 2024
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: actor
CREATE TABLE IF NOT EXISTS "actor" (
 actor_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 actor_user INTEGER UNSIGNED DEFAULT NULL,
 actor_name BLOB NOT NULL
 );
INSERT INTO actor (actor_id, actor_user, actor_name) VALUES (1, 1, 'Wiki');
INSERT INTO actor (actor_id, actor_user, actor_name) VALUES (2, 2, 'MediaWiki default');

-- Таблица: archive
CREATE TABLE IF NOT EXISTS "archive" (
 ar_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 ar_namespace INTEGER DEFAULT 0 NOT NULL,
 ar_title BLOB DEFAULT '' NOT NULL, ar_comment_id BIGINT UNSIGNED NOT NULL,
 ar_actor BIGINT UNSIGNED NOT NULL,
 ar_timestamp BLOB NOT NULL, ar_minor_edit SMALLINT DEFAULT 0 NOT NULL,
 ar_rev_id INTEGER UNSIGNED NOT NULL,
 ar_deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 ar_len INTEGER UNSIGNED DEFAULT NULL,
 ar_page_id INTEGER UNSIGNED DEFAULT NULL,
 ar_parent_id INTEGER UNSIGNED DEFAULT NULL,
 ar_sha1 BLOB DEFAULT '' NOT NULL
 );

-- Таблица: bot_passwords
CREATE TABLE IF NOT EXISTS "bot_passwords" (
 bp_user INTEGER UNSIGNED NOT NULL,
 bp_app_id BLOB NOT NULL,
 bp_password BLOB NOT NULL,
 bp_token BLOB DEFAULT '' NOT NULL,
 bp_restrictions BLOB NOT NULL,
 bp_grants BLOB NOT NULL,
 PRIMARY KEY(bp_user, bp_app_id)
 );

-- Таблица: category
CREATE TABLE IF NOT EXISTS "category" (
 cat_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 cat_title BLOB NOT NULL, cat_pages INTEGER DEFAULT 0 NOT NULL,
 cat_subcats INTEGER DEFAULT 0 NOT NULL,
 cat_files INTEGER DEFAULT 0 NOT NULL
 );
INSERT INTO category (cat_id, cat_title, cat_pages, cat_subcats, cat_files) VALUES (1, 'Страницы_с_неработающими_файловыми_ссылками', 1, 0, 0);

-- Таблица: categorylinks
CREATE TABLE IF NOT EXISTS "categorylinks" (
 cl_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 cl_to BLOB DEFAULT '' NOT NULL,
 cl_sortkey BLOB DEFAULT '' NOT NULL,
 cl_sortkey_prefix BLOB DEFAULT '' NOT NULL,
 cl_timestamp DATETIME NOT NULL,
 cl_collation BLOB DEFAULT '' NOT NULL,
 cl_type TEXT DEFAULT 'page' NOT NULL,
 PRIMARY KEY(cl_from, cl_to)
 );
INSERT INTO categorylinks (cl_from, cl_to, cl_sortkey, cl_sortkey_prefix, cl_timestamp, cl_collation, cl_type) VALUES (5, 'Страницы_с_неработающими_файловыми_ссылками', 'САНКТ-ПЕТЕРБУРГ', '', 20240527080522, 'uppercase', 'page');

-- Таблица: change_tag
CREATE TABLE IF NOT EXISTS "change_tag" (
 ct_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 ct_rc_id INTEGER UNSIGNED DEFAULT NULL,
 ct_log_id INTEGER UNSIGNED DEFAULT NULL,
 ct_rev_id INTEGER UNSIGNED DEFAULT NULL,
 ct_params BLOB DEFAULT NULL, ct_tag_id INTEGER UNSIGNED NOT NULL
 );

-- Таблица: change_tag_def
CREATE TABLE IF NOT EXISTS "change_tag_def" (
 ctd_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 ctd_name BLOB NOT NULL, ctd_user_defined SMALLINT NOT NULL,
 ctd_count BIGINT UNSIGNED DEFAULT 0 NOT NULL
 );

-- Таблица: comment
CREATE TABLE IF NOT EXISTS "comment" (
 comment_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 comment_hash INTEGER NOT NULL, comment_text BLOB NOT NULL,
 comment_data BLOB DEFAULT NULL
 );
INSERT INTO comment (comment_id, comment_hash, comment_text, comment_data) VALUES (1, 0, '', NULL);
INSERT INTO comment (comment_id, comment_hash, comment_text, comment_data) VALUES (2, 2062091226, 'Новая страница: ««Википедия» — это самая крупная и популярная в мире онлайн-энциклопедия. Её название происходит от двух слов: гавайского wiki («быстрый») и латинского encyclopedia («энциклопедия»). По статистике на август 2023 года, «Википедия» содержит 61 млн статей на 334 языках....»', NULL);
INSERT INTO comment (comment_id, comment_hash, comment_text, comment_data) VALUES (3, -1253053092, 'Новая страница: «Програ?мма (от греч. ??? — пред, греч. ?????? — запись) — термин, в переводе означающий «предписание», то есть заданную последовательность действий. Данное понятие непосредственно связано с понятием алгоритм.»', NULL);
INSERT INTO comment (comment_id, comment_hash, comment_text, comment_data) VALUES (4, -1215480346, 'Новая страница: «Ро?бот (чеш. robot, от robota — «подневольный труд») — автоматическое устройство, предназначенное для осуществления различного рода действий, обычно выполняемых человеком.  Робот обычно получает информацию о состоянии окружающего пространства посредство...»', NULL);
INSERT INTO comment (comment_id, comment_hash, comment_text, comment_data) VALUES (5, -1119973154, 'Новая страница: «Санкт-Петербу?рг (в 1914—1924 годах — Петрогра?д, в 1924—1991 годах[b] — Ленингра?д, разг. — Пи?тер, Петербу?рг, СПб) — второй по численности населения город России[6]. Город федерального значения. Административный центр Северо-Западного федерального округа. О...»', NULL);

-- Таблица: content
CREATE TABLE IF NOT EXISTS "content" (
 content_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 content_size INTEGER UNSIGNED NOT NULL,
 content_sha1 BLOB NOT NULL, content_model SMALLINT UNSIGNED NOT NULL,
 content_address BLOB NOT NULL
 );
INSERT INTO content (content_id, content_size, content_sha1, content_model, content_address) VALUES (1, 1030, 'mbpqtir3kv6nje91ox8qhit10ifhnuu', 1, 'tt:1');
INSERT INTO content (content_id, content_size, content_sha1, content_model, content_address) VALUES (2, 889, 'dgf43e975d6all6m5b1t38lnre06us0', 1, 'tt:2');
INSERT INTO content (content_id, content_size, content_sha1, content_model, content_address) VALUES (3, 383, 'oker55wbk8rpkghv678nqb5h5atp6yz', 1, 'tt:3');
INSERT INTO content (content_id, content_size, content_sha1, content_model, content_address) VALUES (4, 2008, 'qos819pv46pc1lxydwv3ixm5ehg2vqx', 1, 'tt:4');
INSERT INTO content (content_id, content_size, content_sha1, content_model, content_address) VALUES (5, 5914, 'h9hki9mgq26riyv5ygtpjucsayg29b4', 1, 'tt:5');
INSERT INTO content (content_id, content_size, content_sha1, content_model, content_address) VALUES (6, 5921, 'me010ltb1tqsex9gsnntqce58h9bx05', 1, 'tt:6');

-- Таблица: content_models
CREATE TABLE IF NOT EXISTS "content_models" (
 model_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 model_name BLOB NOT NULL
 );
INSERT INTO content_models (model_id, model_name) VALUES (1, 'wikitext');

-- Таблица: externallinks
CREATE TABLE IF NOT EXISTS "externallinks" (
 el_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 el_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 el_to_domain_index BLOB DEFAULT '' NOT NULL,
 el_to_path BLOB DEFAULT NULL
 );

-- Таблица: filearchive
CREATE TABLE IF NOT EXISTS "filearchive" (
 fa_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 fa_name BLOB DEFAULT '' NOT NULL, fa_archive_name BLOB DEFAULT '',
 fa_storage_group BLOB DEFAULT NULL,
 fa_storage_key BLOB DEFAULT '', fa_deleted_user INTEGER DEFAULT NULL,
 fa_deleted_timestamp BLOB DEFAULT NULL,
 fa_deleted_reason_id BIGINT UNSIGNED NOT NULL,
 fa_size BIGINT UNSIGNED DEFAULT 0,
 fa_width INTEGER DEFAULT 0, fa_height INTEGER DEFAULT 0,
 fa_metadata BLOB DEFAULT NULL, fa_bits INTEGER DEFAULT 0,
 fa_media_type TEXT DEFAULT NULL, fa_major_mime TEXT DEFAULT 'unknown',
 fa_minor_mime BLOB DEFAULT 'unknown',
 fa_description_id BIGINT UNSIGNED NOT NULL,
 fa_actor BIGINT UNSIGNED NOT NULL,
 fa_timestamp BLOB DEFAULT NULL, fa_deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 fa_sha1 BLOB DEFAULT '' NOT NULL
 );

-- Таблица: image
CREATE TABLE IF NOT EXISTS "image" (
 img_name BLOB DEFAULT '' NOT NULL,
 img_size BIGINT UNSIGNED DEFAULT 0 NOT NULL,
 img_width INTEGER DEFAULT 0 NOT NULL,
 img_height INTEGER DEFAULT 0 NOT NULL,
 img_metadata BLOB NOT NULL,
 img_bits INTEGER DEFAULT 0 NOT NULL,
 img_media_type TEXT DEFAULT NULL,
 img_major_mime TEXT DEFAULT 'unknown' NOT NULL,
 img_minor_mime BLOB DEFAULT 'unknown' NOT NULL,
 img_description_id BIGINT UNSIGNED NOT NULL,
 img_actor BIGINT UNSIGNED NOT NULL,
 img_timestamp BLOB NOT NULL,
 img_sha1 BLOB DEFAULT '' NOT NULL,
 PRIMARY KEY(img_name)
 );

-- Таблица: imagelinks
CREATE TABLE IF NOT EXISTS "imagelinks" (
 il_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 il_to BLOB DEFAULT '' NOT NULL,
 il_from_namespace INTEGER DEFAULT 0 NOT NULL,
 PRIMARY KEY(il_from, il_to)
 );
INSERT INTO imagelinks (il_from, il_to, il_from_namespace) VALUES (5, 'Upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Palace_Bridge_SPB_(img2)_Crop.jpg/1024px-Palace_Bridge_SPB_(img2)_Crop.jpg', 0);

-- Таблица: interwiki
CREATE TABLE IF NOT EXISTS "interwiki" (
 iw_prefix VARCHAR(32) NOT NULL,
 iw_url BLOB NOT NULL,
 iw_api BLOB NOT NULL,
 iw_wikiid VARCHAR(64) NOT NULL,
 iw_local SMALLINT NOT NULL,
 iw_trans SMALLINT DEFAULT 0 NOT NULL,
 PRIMARY KEY(iw_prefix)
 );
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('acronym', 'https://www.acronymfinder.com/~/search/af.aspx?string=exact&Acronym=$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('advogato', 'http://www.advogato.org/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('arxiv', 'https://www.arxiv.org/abs/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('c2find', 'http://c2.com/cgi/wiki?FindPage&value=$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('cache', 'https://www.google.com/search?q=cache:$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('commons', 'https://commons.wikimedia.org/wiki/$1', 'https://commons.wikimedia.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('dictionary', 'http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('doi', 'https://dx.doi.org/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('drumcorpswiki', 'http://www.drumcorpswiki.com/$1', 'http://drumcorpswiki.com/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('dwjwiki', 'http://www.suberic.net/cgi-bin/dwj/wiki.cgi?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('elibre', 'http://enciclopedia.us.es/index.php/$1', 'http://enciclopedia.us.es/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('emacswiki', 'https://www.emacswiki.org/emacs/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('foldoc', 'https://foldoc.org/?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('foxwiki', 'https://fox.wikis.com/wc.dll?Wiki~$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('freebsdman', 'https://www.FreeBSD.org/cgi/man.cgi?apropos=1&query=$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('gentoo-wiki', 'http://gentoo-wiki.com/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('google', 'https://www.google.com/search?q=$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('googlegroups', 'https://groups.google.com/groups?q=$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('hammondwiki', 'http://www.dairiki.org/HammondWiki/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('hrwiki', 'http://www.hrwiki.org/wiki/$1', 'http://www.hrwiki.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('imdb', 'http://www.imdb.com/find?q=$1&tt=on', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('kmwiki', 'https://kmwiki.wikispaces.com/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('linuxwiki', 'http://linuxwiki.de/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('lojban', 'https://mw.lojban.org/papri/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('lqwiki', 'http://wiki.linuxquestions.org/wiki/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('meatball', 'http://meatballwiki.org/wiki/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('mediawikiwiki', 'https://www.mediawiki.org/wiki/$1', 'https://www.mediawiki.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('memoryalpha', 'http://en.memory-alpha.org/wiki/$1', 'http://en.memory-alpha.org/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('metawiki', 'http://sunir.org/apps/meta.pl?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('metawikimedia', 'https://meta.wikimedia.org/wiki/$1', 'https://meta.wikimedia.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('mozillawiki', 'https://wiki.mozilla.org/$1', 'https://wiki.mozilla.org/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('mw', 'https://www.mediawiki.org/wiki/$1', 'https://www.mediawiki.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('oeis', 'https://oeis.org/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('openwiki', 'http://openwiki.com/ow.asp?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('pmid', 'https://www.ncbi.nlm.nih.gov/pubmed/$1?dopt=Abstract', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('pythoninfo', 'https://wiki.python.org/moin/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('rfc', 'https://tools.ietf.org/html/rfc$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('s23wiki', 'http://s23.org/wiki/$1', 'http://s23.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('seattlewireless', 'http://seattlewireless.net/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('senseislibrary', 'https://senseis.xmp.net/?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('shoutwiki', 'http://www.shoutwiki.com/wiki/$1', 'http://www.shoutwiki.com/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('squeak', 'http://wiki.squeak.org/squeak/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('tmbw', 'http://www.tmbw.net/wiki/$1', 'http://tmbw.net/wiki/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('tmnet', 'http://www.technomanifestos.net/?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('theopedia', 'https://www.theopedia.com/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('twiki', 'http://twiki.org/cgi-bin/view/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('uncyclopedia', 'https://en.uncyclopedia.co/wiki/$1', 'https://en.uncyclopedia.co/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('unreal', 'https://wiki.beyondunreal.com/$1', 'https://wiki.beyondunreal.com/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('usemod', 'http://www.usemod.com/cgi-bin/wiki.pl?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wiki', 'http://c2.com/cgi/wiki?$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikia', 'http://www.wikia.com/wiki/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikibooks', 'https://en.wikibooks.org/wiki/$1', 'https://en.wikibooks.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikidata', 'https://www.wikidata.org/wiki/$1', 'https://www.wikidata.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikif1', 'http://www.wikif1.org/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikihow', 'https://www.wikihow.com/$1', 'https://www.wikihow.com/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikinfo', 'http://wikinfo.co/English/index.php/$1', '', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikimedia', 'https://foundation.wikimedia.org/wiki/$1', 'https://foundation.wikimedia.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikinews', 'https://en.wikinews.org/wiki/$1', 'https://en.wikinews.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikipedia', 'https://en.wikipedia.org/wiki/$1', 'https://en.wikipedia.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikiquote', 'https://en.wikiquote.org/wiki/$1', 'https://en.wikiquote.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikisource', 'https://wikisource.org/wiki/$1', 'https://wikisource.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikispecies', 'https://species.wikimedia.org/wiki/$1', 'https://species.wikimedia.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikiversity', 'https://en.wikiversity.org/wiki/$1', 'https://en.wikiversity.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikivoyage', 'https://en.wikivoyage.org/wiki/$1', 'https://en.wikivoyage.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wikt', 'https://en.wiktionary.org/wiki/$1', 'https://en.wiktionary.org/w/api.php', '', 0, 0);
INSERT INTO interwiki (iw_prefix, iw_url, iw_api, iw_wikiid, iw_local, iw_trans) VALUES ('wiktionary', 'https://en.wiktionary.org/wiki/$1', 'https://en.wiktionary.org/w/api.php', '', 0, 0);

-- Таблица: ip_changes
CREATE TABLE IF NOT EXISTS "ip_changes" (
 ipc_rev_id INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 ipc_rev_timestamp BLOB NOT NULL,
 ipc_hex BLOB DEFAULT '' NOT NULL,
 PRIMARY KEY(ipc_rev_id)
 );

-- Таблица: ipblocks
CREATE TABLE IF NOT EXISTS "ipblocks" (
 ipb_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 ipb_address BLOB NOT NULL, ipb_user INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 ipb_by_actor BIGINT UNSIGNED NOT NULL,
 ipb_reason_id BIGINT UNSIGNED NOT NULL,
 ipb_timestamp BLOB NOT NULL, ipb_auto SMALLINT DEFAULT 0 NOT NULL,
 ipb_anon_only SMALLINT DEFAULT 0 NOT NULL,
 ipb_create_account SMALLINT DEFAULT 1 NOT NULL,
 ipb_enable_autoblock SMALLINT DEFAULT 1 NOT NULL,
 ipb_expiry BLOB NOT NULL, ipb_range_start BLOB NOT NULL,
 ipb_range_end BLOB NOT NULL, ipb_deleted SMALLINT DEFAULT 0 NOT NULL,
 ipb_block_email SMALLINT DEFAULT 0 NOT NULL,
 ipb_allow_usertalk SMALLINT DEFAULT 0 NOT NULL,
 ipb_parent_block_id INTEGER UNSIGNED DEFAULT NULL,
 ipb_sitewide SMALLINT DEFAULT 1 NOT NULL
 );

-- Таблица: ipblocks_restrictions
CREATE TABLE IF NOT EXISTS "ipblocks_restrictions" (
 ir_ipb_id INTEGER UNSIGNED NOT NULL,
 ir_type SMALLINT NOT NULL,
 ir_value INTEGER UNSIGNED NOT NULL,
 PRIMARY KEY(ir_ipb_id, ir_type, ir_value)
 );

-- Таблица: iwlinks
CREATE TABLE IF NOT EXISTS "iwlinks" (
 iwl_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 iwl_prefix BLOB DEFAULT '' NOT NULL,
 iwl_title BLOB DEFAULT '' NOT NULL,
 PRIMARY KEY(iwl_from, iwl_prefix, iwl_title)
 );

-- Таблица: job
CREATE TABLE IF NOT EXISTS "job" (
 job_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 job_cmd BLOB DEFAULT '' NOT NULL, job_namespace INTEGER NOT NULL,
 job_title BLOB NOT NULL, job_timestamp BLOB DEFAULT NULL,
 job_params BLOB NOT NULL, job_random INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 job_attempts INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 job_token BLOB DEFAULT '' NOT NULL,
 job_token_timestamp BLOB DEFAULT NULL,
 job_sha1 BLOB DEFAULT '' NOT NULL
 );

-- Таблица: l10n_cache
CREATE TABLE IF NOT EXISTS "l10n_cache" (
 lc_lang BLOB NOT NULL,
 lc_key VARCHAR(255) NOT NULL,
 lc_value BLOB NOT NULL,
 PRIMARY KEY(lc_lang, lc_key)
 );

-- Таблица: langlinks
CREATE TABLE IF NOT EXISTS "langlinks" (
 ll_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 ll_lang BLOB DEFAULT '' NOT NULL,
 ll_title BLOB DEFAULT '' NOT NULL,
 PRIMARY KEY(ll_from, ll_lang)
 );

-- Таблица: linktarget
CREATE TABLE IF NOT EXISTS "linktarget" (
 lt_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 lt_namespace INTEGER NOT NULL, lt_title BLOB NOT NULL
 );

-- Таблица: log_search
CREATE TABLE IF NOT EXISTS "log_search" (
 ls_field BLOB NOT NULL,
 ls_value VARCHAR(255) NOT NULL,
 ls_log_id INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 PRIMARY KEY(ls_field, ls_value, ls_log_id)
 );
INSERT INTO log_search (ls_field, ls_value, ls_log_id) VALUES ('associated_rev_id', '1', 1);
INSERT INTO log_search (ls_field, ls_value, ls_log_id) VALUES ('associated_rev_id', '2', 2);
INSERT INTO log_search (ls_field, ls_value, ls_log_id) VALUES ('associated_rev_id', '3', 3);
INSERT INTO log_search (ls_field, ls_value, ls_log_id) VALUES ('associated_rev_id', '4', 4);
INSERT INTO log_search (ls_field, ls_value, ls_log_id) VALUES ('associated_rev_id', '5', 5);

-- Таблица: logging
CREATE TABLE IF NOT EXISTS "logging" (
 log_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 log_type BLOB DEFAULT '' NOT NULL, log_action BLOB DEFAULT '' NOT NULL,
 log_timestamp BLOB DEFAULT '19700101000000' NOT NULL,
 log_actor BIGINT UNSIGNED NOT NULL,
 log_namespace INTEGER DEFAULT 0 NOT NULL,
 log_title BLOB DEFAULT '' NOT NULL,
 log_page INTEGER UNSIGNED DEFAULT NULL,
 log_comment_id BIGINT UNSIGNED NOT NULL,
 log_params BLOB NOT NULL, log_deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL
 );
INSERT INTO logging (log_id, log_type, log_action, log_timestamp, log_actor, log_namespace, log_title, log_page, log_comment_id, log_params, log_deleted) VALUES (1, 'create', 'create', '20240527075240', 2, 0, 'Заглавная_страница', 1, 1, 'a:1:{s:17:"associated_rev_id";i:1;}', 0);
INSERT INTO logging (log_id, log_type, log_action, log_timestamp, log_actor, log_namespace, log_title, log_page, log_comment_id, log_params, log_deleted) VALUES (2, 'create', 'create', '20240527075650', 1, 0, 'Wiki', 2, 2, 'a:1:{s:17:"associated_rev_id";i:2;}', 0);
INSERT INTO logging (log_id, log_type, log_action, log_timestamp, log_actor, log_namespace, log_title, log_page, log_comment_id, log_params, log_deleted) VALUES (3, 'create', 'create', '20240527075745', 1, 0, 'Программа', 3, 3, 'a:1:{s:17:"associated_rev_id";i:3;}', 0);
INSERT INTO logging (log_id, log_type, log_action, log_timestamp, log_actor, log_namespace, log_title, log_page, log_comment_id, log_params, log_deleted) VALUES (4, 'create', 'create', '20240527075819', 1, 0, 'Робот', 4, 4, 'a:1:{s:17:"associated_rev_id";i:4;}', 0);
INSERT INTO logging (log_id, log_type, log_action, log_timestamp, log_actor, log_namespace, log_title, log_page, log_comment_id, log_params, log_deleted) VALUES (5, 'create', 'create', '20240527080129', 1, 0, 'Санкт-Петербург', 5, 5, 'a:1:{s:17:"associated_rev_id";i:5;}', 0);

-- Таблица: module_deps
CREATE TABLE IF NOT EXISTS "module_deps" (
 md_module BLOB NOT NULL,
 md_skin BLOB NOT NULL,
 md_deps BLOB NOT NULL,
 PRIMARY KEY(md_module, md_skin)
 );

-- Таблица: objectcache
CREATE TABLE IF NOT EXISTS "objectcache" (
 keyname BLOB DEFAULT '' NOT NULL,
 value BLOB DEFAULT NULL,
 exptime BLOB NOT NULL,
 modtoken VARCHAR(17) DEFAULT '00000000000000000' NOT NULL,
 flags INTEGER UNSIGNED DEFAULT NULL,
 PRIMARY KEY(keyname)
 );

-- Таблица: oldimage
CREATE TABLE IF NOT EXISTS "oldimage" (
 oi_name BLOB DEFAULT '' NOT NULL, oi_archive_name BLOB DEFAULT '' NOT NULL,
 oi_size BIGINT UNSIGNED DEFAULT 0 NOT NULL,
 oi_width INTEGER DEFAULT 0 NOT NULL,
 oi_height INTEGER DEFAULT 0 NOT NULL,
 oi_bits INTEGER DEFAULT 0 NOT NULL,
 oi_description_id BIGINT UNSIGNED NOT NULL,
 oi_actor BIGINT UNSIGNED NOT NULL,
 oi_timestamp BLOB NOT NULL, oi_metadata BLOB NOT NULL,
 oi_media_type TEXT DEFAULT NULL, oi_major_mime TEXT DEFAULT 'unknown' NOT NULL,
 oi_minor_mime BLOB DEFAULT 'unknown' NOT NULL,
 oi_deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 oi_sha1 BLOB DEFAULT '' NOT NULL
 );

-- Таблица: page
CREATE TABLE IF NOT EXISTS "page" (
 page_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 page_namespace INTEGER NOT NULL, page_title BLOB NOT NULL,
 page_is_redirect SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 page_is_new SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 page_random DOUBLE PRECISION NOT NULL,
 page_touched BLOB NOT NULL, page_links_updated BLOB DEFAULT NULL,
 page_latest INTEGER UNSIGNED NOT NULL,
 page_len INTEGER UNSIGNED NOT NULL,
 page_content_model BLOB DEFAULT NULL,
 page_lang BLOB DEFAULT NULL
 );
INSERT INTO page (page_id, page_namespace, page_title, page_is_redirect, page_is_new, page_random, page_touched, page_links_updated, page_latest, page_len, page_content_model, page_lang) VALUES (1, 0, 'Заглавная_страница', 0, 1, 0.965067973214, '20240527075240', NULL, 1, 1030, 'wikitext', NULL);
INSERT INTO page (page_id, page_namespace, page_title, page_is_redirect, page_is_new, page_random, page_touched, page_links_updated, page_latest, page_len, page_content_model, page_lang) VALUES (2, 0, 'Wiki', 0, 1, 0.651952154545, '20240527075650', '20240527075650', 2, 889, 'wikitext', NULL);
INSERT INTO page (page_id, page_namespace, page_title, page_is_redirect, page_is_new, page_random, page_touched, page_links_updated, page_latest, page_len, page_content_model, page_lang) VALUES (3, 0, 'Программа', 0, 1, 0.147454456384, '20240527075745', '20240527075745', 3, 383, 'wikitext', NULL);
INSERT INTO page (page_id, page_namespace, page_title, page_is_redirect, page_is_new, page_random, page_touched, page_links_updated, page_latest, page_len, page_content_model, page_lang) VALUES (4, 0, 'Робот', 0, 1, 0.376546372795, '20240527075819', '20240527075819', 4, 2008, 'wikitext', NULL);
INSERT INTO page (page_id, page_namespace, page_title, page_is_redirect, page_is_new, page_random, page_touched, page_links_updated, page_latest, page_len, page_content_model, page_lang) VALUES (5, 0, 'Санкт-Петербург', 0, 0, 0.640402531156, '20240527080522', '20240527080522', 6, 5921, 'wikitext', NULL);

-- Таблица: page_props
CREATE TABLE IF NOT EXISTS "page_props" (
 pp_page INTEGER UNSIGNED NOT NULL,
 pp_propname BLOB NOT NULL,
 pp_value BLOB NOT NULL,
 pp_sortkey DOUBLE PRECISION DEFAULT NULL,
 PRIMARY KEY(pp_page, pp_propname)
 );

-- Таблица: page_restrictions
CREATE TABLE IF NOT EXISTS "page_restrictions" (
 pr_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 pr_page INTEGER UNSIGNED NOT NULL,
 pr_type BLOB NOT NULL, pr_level BLOB NOT NULL,
 pr_cascade SMALLINT NOT NULL, pr_expiry BLOB DEFAULT NULL
 );

-- Таблица: pagelinks
CREATE TABLE IF NOT EXISTS "pagelinks" (
 pl_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 pl_namespace INTEGER DEFAULT 0 NOT NULL,
 pl_title BLOB DEFAULT '' NOT NULL,
 pl_from_namespace INTEGER DEFAULT 0 NOT NULL,
 pl_target_id BIGINT UNSIGNED DEFAULT NULL,
 PRIMARY KEY(pl_from, pl_namespace, pl_title)
 );

-- Таблица: protected_titles
CREATE TABLE IF NOT EXISTS "protected_titles" (
 pt_namespace INTEGER NOT NULL,
 pt_title BLOB NOT NULL,
 pt_user INTEGER UNSIGNED NOT NULL,
 pt_reason_id BIGINT UNSIGNED NOT NULL,
 pt_timestamp BLOB NOT NULL,
 pt_expiry BLOB NOT NULL,
 pt_create_perm BLOB NOT NULL,
 PRIMARY KEY(pt_namespace, pt_title)
 );

-- Таблица: querycache
CREATE TABLE IF NOT EXISTS "querycache" (
 qc_type BLOB NOT NULL, qc_value INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 qc_namespace INTEGER DEFAULT 0 NOT NULL,
 qc_title BLOB DEFAULT '' NOT NULL
 );

-- Таблица: querycache_info
CREATE TABLE IF NOT EXISTS "querycache_info" (
 qci_type BLOB DEFAULT '' NOT NULL,
 qci_timestamp BLOB DEFAULT '19700101000000' NOT NULL,
 PRIMARY KEY(qci_type)
 );
INSERT INTO querycache_info (qci_type, qci_timestamp) VALUES ('activeusers', '20240527080522');

-- Таблица: querycachetwo
CREATE TABLE IF NOT EXISTS "querycachetwo" (
 qcc_type BLOB NOT NULL, qcc_value INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 qcc_namespace INTEGER DEFAULT 0 NOT NULL,
 qcc_title BLOB DEFAULT '' NOT NULL,
 qcc_namespacetwo INTEGER DEFAULT 0 NOT NULL,
 qcc_titletwo BLOB DEFAULT '' NOT NULL
 );
INSERT INTO querycachetwo (qcc_type, qcc_value, qcc_namespace, qcc_title, qcc_namespacetwo, qcc_titletwo) VALUES ('activeusers', 1716796610, 2, 'Wiki', 0, '');

-- Таблица: recentchanges
CREATE TABLE IF NOT EXISTS "recentchanges" (
 rc_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 rc_timestamp BLOB NOT NULL, rc_actor BIGINT UNSIGNED NOT NULL,
 rc_namespace INTEGER DEFAULT 0 NOT NULL,
 rc_title BLOB DEFAULT '' NOT NULL, rc_comment_id BIGINT UNSIGNED NOT NULL,
 rc_minor SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rc_bot SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rc_new SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rc_cur_id INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 rc_this_oldid INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 rc_last_oldid INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 rc_type SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rc_source BLOB DEFAULT '' NOT NULL,
 rc_patrolled SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rc_ip BLOB DEFAULT '' NOT NULL, rc_old_len INTEGER DEFAULT NULL,
 rc_new_len INTEGER DEFAULT NULL, rc_deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rc_logid INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 rc_log_type BLOB DEFAULT NULL, rc_log_action BLOB DEFAULT NULL,
 rc_params BLOB DEFAULT NULL
 );
INSERT INTO recentchanges (rc_id, rc_timestamp, rc_actor, rc_namespace, rc_title, rc_comment_id, rc_minor, rc_bot, rc_new, rc_cur_id, rc_this_oldid, rc_last_oldid, rc_type, rc_source, rc_patrolled, rc_ip, rc_old_len, rc_new_len, rc_deleted, rc_logid, rc_log_type, rc_log_action, rc_params) VALUES (1, '20240527075650', 1, 0, 'Wiki', 2, 0, 0, 1, 2, 2, 0, 1, 'mw.new', 2, '127.0.0.1', 0, 889, 0, 0, NULL, '', '');
INSERT INTO recentchanges (rc_id, rc_timestamp, rc_actor, rc_namespace, rc_title, rc_comment_id, rc_minor, rc_bot, rc_new, rc_cur_id, rc_this_oldid, rc_last_oldid, rc_type, rc_source, rc_patrolled, rc_ip, rc_old_len, rc_new_len, rc_deleted, rc_logid, rc_log_type, rc_log_action, rc_params) VALUES (2, '20240527075745', 1, 0, 'Программа', 3, 0, 0, 1, 3, 3, 0, 1, 'mw.new', 2, '127.0.0.1', 0, 383, 0, 0, NULL, '', '');
INSERT INTO recentchanges (rc_id, rc_timestamp, rc_actor, rc_namespace, rc_title, rc_comment_id, rc_minor, rc_bot, rc_new, rc_cur_id, rc_this_oldid, rc_last_oldid, rc_type, rc_source, rc_patrolled, rc_ip, rc_old_len, rc_new_len, rc_deleted, rc_logid, rc_log_type, rc_log_action, rc_params) VALUES (3, '20240527075819', 1, 0, 'Робот', 4, 0, 0, 1, 4, 4, 0, 1, 'mw.new', 2, '127.0.0.1', 0, 2008, 0, 0, NULL, '', '');
INSERT INTO recentchanges (rc_id, rc_timestamp, rc_actor, rc_namespace, rc_title, rc_comment_id, rc_minor, rc_bot, rc_new, rc_cur_id, rc_this_oldid, rc_last_oldid, rc_type, rc_source, rc_patrolled, rc_ip, rc_old_len, rc_new_len, rc_deleted, rc_logid, rc_log_type, rc_log_action, rc_params) VALUES (4, '20240527080129', 1, 0, 'Санкт-Петербург', 5, 0, 0, 1, 5, 5, 0, 1, 'mw.new', 2, '127.0.0.1', 0, 5914, 0, 0, NULL, '', '');
INSERT INTO recentchanges (rc_id, rc_timestamp, rc_actor, rc_namespace, rc_title, rc_comment_id, rc_minor, rc_bot, rc_new, rc_cur_id, rc_this_oldid, rc_last_oldid, rc_type, rc_source, rc_patrolled, rc_ip, rc_old_len, rc_new_len, rc_deleted, rc_logid, rc_log_type, rc_log_action, rc_params) VALUES (5, '20240527080522', 1, 0, 'Санкт-Петербург', 1, 0, 0, 0, 5, 6, 5, 0, 'mw.edit', 2, '127.0.0.1', 5914, 5921, 0, 0, NULL, '', '');

-- Таблица: redirect
CREATE TABLE IF NOT EXISTS "redirect" (
 rd_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 rd_namespace INTEGER DEFAULT 0 NOT NULL,
 rd_title BLOB DEFAULT '' NOT NULL,
 rd_interwiki VARCHAR(32) DEFAULT NULL,
 rd_fragment BLOB DEFAULT NULL,
 PRIMARY KEY(rd_from)
 );

-- Таблица: revision
CREATE TABLE IF NOT EXISTS "revision" (
 rev_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 rev_page INTEGER UNSIGNED NOT NULL,
 rev_comment_id BIGINT UNSIGNED DEFAULT 0 NOT NULL,
 rev_actor BIGINT UNSIGNED DEFAULT 0 NOT NULL,
 rev_timestamp BLOB NOT NULL, rev_minor_edit SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rev_deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
 rev_len INTEGER UNSIGNED DEFAULT NULL,
 rev_parent_id INTEGER UNSIGNED DEFAULT NULL,
 rev_sha1 BLOB DEFAULT '' NOT NULL
 );
INSERT INTO revision (rev_id, rev_page, rev_comment_id, rev_actor, rev_timestamp, rev_minor_edit, rev_deleted, rev_len, rev_parent_id, rev_sha1) VALUES (1, 1, 1, 2, '20240527075240', 0, 0, 1030, 0, 'mbpqtir3kv6nje91ox8qhit10ifhnuu');
INSERT INTO revision (rev_id, rev_page, rev_comment_id, rev_actor, rev_timestamp, rev_minor_edit, rev_deleted, rev_len, rev_parent_id, rev_sha1) VALUES (2, 2, 2, 1, '20240527075650', 0, 0, 889, 0, 'dgf43e975d6all6m5b1t38lnre06us0');
INSERT INTO revision (rev_id, rev_page, rev_comment_id, rev_actor, rev_timestamp, rev_minor_edit, rev_deleted, rev_len, rev_parent_id, rev_sha1) VALUES (3, 3, 3, 1, '20240527075745', 0, 0, 383, 0, 'oker55wbk8rpkghv678nqb5h5atp6yz');
INSERT INTO revision (rev_id, rev_page, rev_comment_id, rev_actor, rev_timestamp, rev_minor_edit, rev_deleted, rev_len, rev_parent_id, rev_sha1) VALUES (4, 4, 4, 1, '20240527075819', 0, 0, 2008, 0, 'qos819pv46pc1lxydwv3ixm5ehg2vqx');
INSERT INTO revision (rev_id, rev_page, rev_comment_id, rev_actor, rev_timestamp, rev_minor_edit, rev_deleted, rev_len, rev_parent_id, rev_sha1) VALUES (5, 5, 5, 1, '20240527080129', 0, 0, 5914, 0, 'h9hki9mgq26riyv5ygtpjucsayg29b4');
INSERT INTO revision (rev_id, rev_page, rev_comment_id, rev_actor, rev_timestamp, rev_minor_edit, rev_deleted, rev_len, rev_parent_id, rev_sha1) VALUES (6, 5, 1, 1, '20240527080522', 0, 0, 5921, 5, 'me010ltb1tqsex9gsnntqce58h9bx05');

-- Таблица: searchindex
CREATE VIRTUAL TABLE IF NOT EXISTS "searchindex" USING FTS3(
 si_title,
 si_text
 );
INSERT INTO searchindex (si_title, si_text) VALUES ('wiki', ' «википедия» — это самая крупная и популярная в мире онлайн-энциклопедия. её название происходит от двух слов гавайского wiki «быстрый» и латинского encyclopedia «энциклопедия» . по статистике на август 2023 года «википедия» содержит 61 млн статей на 334 языках. на русском языке создано почти 2 млн страниц. каждый день в «википедию» заходят 32 8 млн уникальных пользователей со всего мира из них 1 6 млн — россияне. в 2003 году для управления «википедией» был создан некоммерческий фонд «викимедиа» ');
INSERT INTO searchindex (si_title, si_text) VALUES ('программа', ' програ?мма от греч. ??? — пред греч. ?????? — запись — термин в переводе означающий «предписание» то есть заданную последовательность действий. данное понятие непосредственно связано с понятием алгоритм. ');
INSERT INTO searchindex (si_title, si_text) VALUES ('робот', ' ро?бот чеш. robot от robota — «подневольный труд» — автоматическое устройство предназначенное для осуществления различного рода действий обычно выполняемых человеком. робот обычно получает информацию о состоянии окружающего пространства посредством датчиков технических аналогов органов чувств живых организмов . робот может самостоятельно осуществлять производственные и иные операции частично или полностью заменяя труд человека 1 2 . при этом робот может как иметь связь с оператором получая от него команды ручное управление так и действовать автономно в соответствии с заложенной программой автоматическое управление . назначения роботов могут быть самыми разнообразными от увеселительных и прикладных и до сугубо производственных. внешний вид роботов разнообразен по форме и содержанию может быть каким угодно хотя нередко в конструкциях узлов заимствуют элементы анатомии различных живых существ подходящие для выполняемой задачи. в информационных технологиях «роботами» также называют некоторые автономно действующие программы например боты или поисковые роботы. ');
INSERT INTO searchindex (si_title, si_text) VALUES ('санкт-петербург', ' санкт-петербу?рг в 1914—1924 годах — петрогра?д в 1924—1991 годах b — ленингра?д разг. — пи?тер петербу?рг спб — второй по численности населения город россии 6 . город федерального значения. административный центр северо-западного федерального округа. основан 16 27 мая 1703 года царём петром i. в 1714—1728 и 1732—1918 годах — столица российского государства c 7 . назван в честь святого петра 8 — небесного покровителя царя-основателя но со временем стал всё больше ассоциироваться с именем самого петра i. город исторически и культурно связан с рождением российской империи и вхождением россии в современную историю в роли европейской великой державы 9 перейти к разделу «#история». расположен на северо-западе страны на побережье финского залива и в устье реки невы. граничит с ленинградской областью также имеет морские границы с финляндией и эстониейперейти к разделу «#физико-географическая характеристика». в санкт-петербурге находятся конституционный суд рф геральдический совет при президенте рф полпредство северо-западного федерального округа органы власти ленинградской области 10 межпарламентская ассамблея снг. также размещены главное командование вмф рф и штаб ленинградского военного округа вс рф. был центром трёх революций 1905—1907 годов февральской октябрьской 11 . в ходе великой отечественной войны в 1941—1944 годах 872 дня находился в блокаде в результате которой погибло около миллиона человек. 1 мая 1945 года ленинград был объявлен городом-героемперейти к разделу «#история». в составе города федерального значения санкт-петербурга также находятся 3 города воинской славы кронштадт колпино и ломоносов. население 5 597 763 2 2024 человек. санкт-петербург — самый северный в мире город с населением более миллиона человек. также санкт-петербург является самым западным городом-миллионником россии. среди городов полностью расположенных в европе он является третьим по населению уступая лишь москве и лондону а также первым по численности жителей городом не являющимся столицей 12 . инновационный сценарий «стратегия развития санкт-петербурга до 2030 года» предполагает что к 2030 году население составит 5 9 миллиона человек 13 перейти к разделу «#население». город — центр санкт-петербургской городской агломерации. площадь города 1439 14 км? после расширения территории москвы 1 июля 2012 года санкт-петербург является вторым по площади и населению городом страны. санкт-петербург — важный экономический научный и культурный центр россии крупный транспортный узелперейти к разделу «#транспорт». исторический центр города и связанные с ним комплексы памятников входят в список объектов всемирного наследия юнеско 15 ; это один из самых важных в стране центров туризма. среди наиболее значимых культурно-туристических объектов эрмитаж кунсткамера мариинский театр российская национальная библиотека русский музей петропавловская крепость исаакиевский собор 16 невский проспектперейти к разделу «#культура и искусство». на сохранение объектов культурного наследия направлена в том числе программа сохранения и развития исторического центра санкт-петербурга. в 2019 году санкт-петербург посетили около 10 4 миллиона туристов file upload.wikimedia.org wikipedia commons thumb f fd palace_bridge_spb_ 28img2 29_crop.jpg 1024px-palace_bridge_spb_ 28img2 29_crop.jpg thumb ');

-- Таблица: searchindex_content
CREATE TABLE IF NOT EXISTS 'searchindex_content'(docid INTEGER PRIMARY KEY, 'c0si_title', 'c1si_text');
INSERT INTO searchindex_content (docid, c0si_title, c1si_text) VALUES (2, 'wiki', ' «википедия» — это самая крупная и популярная в мире онлайн-энциклопедия. её название происходит от двух слов гавайского wiki «быстрый» и латинского encyclopedia «энциклопедия» . по статистике на август 2023 года «википедия» содержит 61 млн статей на 334 языках. на русском языке создано почти 2 млн страниц. каждый день в «википедию» заходят 32 8 млн уникальных пользователей со всего мира из них 1 6 млн — россияне. в 2003 году для управления «википедией» был создан некоммерческий фонд «викимедиа» ');
INSERT INTO searchindex_content (docid, c0si_title, c1si_text) VALUES (3, 'программа', ' програ?мма от греч. ??? — пред греч. ?????? — запись — термин в переводе означающий «предписание» то есть заданную последовательность действий. данное понятие непосредственно связано с понятием алгоритм. ');
INSERT INTO searchindex_content (docid, c0si_title, c1si_text) VALUES (4, 'робот', ' ро?бот чеш. robot от robota — «подневольный труд» — автоматическое устройство предназначенное для осуществления различного рода действий обычно выполняемых человеком. робот обычно получает информацию о состоянии окружающего пространства посредством датчиков технических аналогов органов чувств живых организмов . робот может самостоятельно осуществлять производственные и иные операции частично или полностью заменяя труд человека 1 2 . при этом робот может как иметь связь с оператором получая от него команды ручное управление так и действовать автономно в соответствии с заложенной программой автоматическое управление . назначения роботов могут быть самыми разнообразными от увеселительных и прикладных и до сугубо производственных. внешний вид роботов разнообразен по форме и содержанию может быть каким угодно хотя нередко в конструкциях узлов заимствуют элементы анатомии различных живых существ подходящие для выполняемой задачи. в информационных технологиях «роботами» также называют некоторые автономно действующие программы например боты или поисковые роботы. ');
INSERT INTO searchindex_content (docid, c0si_title, c1si_text) VALUES (5, 'санкт-петербург', ' санкт-петербу?рг в 1914—1924 годах — петрогра?д в 1924—1991 годах b — ленингра?д разг. — пи?тер петербу?рг спб — второй по численности населения город россии 6 . город федерального значения. административный центр северо-западного федерального округа. основан 16 27 мая 1703 года царём петром i. в 1714—1728 и 1732—1918 годах — столица российского государства c 7 . назван в честь святого петра 8 — небесного покровителя царя-основателя но со временем стал всё больше ассоциироваться с именем самого петра i. город исторически и культурно связан с рождением российской империи и вхождением россии в современную историю в роли европейской великой державы 9 перейти к разделу «#история». расположен на северо-западе страны на побережье финского залива и в устье реки невы. граничит с ленинградской областью также имеет морские границы с финляндией и эстониейперейти к разделу «#физико-географическая характеристика». в санкт-петербурге находятся конституционный суд рф геральдический совет при президенте рф полпредство северо-западного федерального округа органы власти ленинградской области 10 межпарламентская ассамблея снг. также размещены главное командование вмф рф и штаб ленинградского военного округа вс рф. был центром трёх революций 1905—1907 годов февральской октябрьской 11 . в ходе великой отечественной войны в 1941—1944 годах 872 дня находился в блокаде в результате которой погибло около миллиона человек. 1 мая 1945 года ленинград был объявлен городом-героемперейти к разделу «#история». в составе города федерального значения санкт-петербурга также находятся 3 города воинской славы кронштадт колпино и ломоносов. население 5 597 763 2 2024 человек. санкт-петербург — самый северный в мире город с населением более миллиона человек. также санкт-петербург является самым западным городом-миллионником россии. среди городов полностью расположенных в европе он является третьим по населению уступая лишь москве и лондону а также первым по численности жителей городом не являющимся столицей 12 . инновационный сценарий «стратегия развития санкт-петербурга до 2030 года» предполагает что к 2030 году население составит 5 9 миллиона человек 13 перейти к разделу «#население». город — центр санкт-петербургской городской агломерации. площадь города 1439 14 км? после расширения территории москвы 1 июля 2012 года санкт-петербург является вторым по площади и населению городом страны. санкт-петербург — важный экономический научный и культурный центр россии крупный транспортный узелперейти к разделу «#транспорт». исторический центр города и связанные с ним комплексы памятников входят в список объектов всемирного наследия юнеско 15 ; это один из самых важных в стране центров туризма. среди наиболее значимых культурно-туристических объектов эрмитаж кунсткамера мариинский театр российская национальная библиотека русский музей петропавловская крепость исаакиевский собор 16 невский проспектперейти к разделу «#культура и искусство». на сохранение объектов культурного наследия направлена в том числе программа сохранения и развития исторического центра санкт-петербурга. в 2019 году санкт-петербург посетили около 10 4 миллиона туристов file upload.wikimedia.org wikipedia commons thumb f fd palace_bridge_spb_ 28img2 29_crop.jpg 1024px-palace_bridge_spb_ 28img2 29_crop.jpg thumb ');

-- Таблица: searchindex_segdir
CREATE TABLE IF NOT EXISTS 'searchindex_segdir'(level INTEGER,idx INTEGER,start_block INTEGER,leaves_end_block INTEGER,end_block INTEGER,root BLOB,PRIMARY KEY(level, idx));
INSERT INTO searchindex_segdir (level, idx, start_block, leaves_end_block, end_block, root) VALUES (0, 0, 0, 0, '0 1099', X'000131050201013F00000132050201012D00010330303305020101450002023233050201011E000002333205020101350001023334050201012600000136050201014000010131050201012200000138050201013600000C656E6379636C6F7065646961050201011800000477696B69060202010114000012C2ABD0B1D18BD181D182D180D18BD0B9C2BB0502010115000313B2D0B8D0BAD0B8D0BCD0B5D0B4D0B8D0B0C2BB050201014E000B0DBFD0B5D0B4D0B8D0B5D0B9C2BB0502010149001204D18EC2BB05020101330013038FC2BB06020101022000021AD18DD0BDD186D0B8D0BAD0BBD0BED0BFD0B5D0B4D0B8D18FC2BB050201011900000CD0B0D0B2D0B3D183D181D182050201011D000105B1D18BD0BB050201014A000101B207020101092B14000208D181D0B5D0B3D0BE050201013B000113B3D0B0D0B2D0B0D0B9D181D0BAD0BED0B3D0BE0502010113000305BED0B4D0B0050201011F000602D1830502010146000107B4D0B2D183D1850502010111000305B5D0BDD18C0502010131000303BBD18F0502010147000103B5D191050201010D00010DB7D0B0D185D0BED0B4D18FD1820502010134000101B8060201010711000202D0B7050201013D00010BBAD0B0D0B6D0B4D18BD0B9050201013000020CD180D183D0BFD0BDD0B0D18F0502010106000113BBD0B0D182D0B8D0BDD181D0BAD0BED0B3D0BE0502010117000107BCD0B8D180D0B0050201013C000701B5050201010A000303BBD0BD08020101230D0B0C000103BDD0B0070201011C0B0500040CD0B7D0B2D0B0D0BDD0B8D0B5050201010E000319B5D0BAD0BED0BCD0BCD0B5D180D187D0B5D181D0BAD0B8D0B9050201014C000303B8D185050201013E00010BBED0BDD0BBD0B0D0B9D0BD050201010B000202D1820502010110000103BFD0BE050201011A000416D0BBD18CD0B7D0BED0B2D0B0D182D0B5D0BBD0B5D0B9050201013900050FBFD183D0BBD18FD180D0BDD0B0D18F0502010108000406D187D182D0B8050201012C000212D180D0BED0B8D181D185D0BED0B4D0B8D182050201010F000010D180D0BED181D181D0B8D18FD0BDD0B5050201014300020CD183D181D181D0BAD0BED0BC050201012900010981D0B0D0BCD0B0D18F0502010105000305BBD0BED0B20502010112000301BE050201013A00040CD0B4D0B5D180D0B6D0B8D1820502010121000507B7D0B4D0B0D0BD050201014B000C02D0BE050201012B00020AD182D0B0D182D0B5D0B9050201012400090BB8D181D182D0B8D0BAD0B5050201011B00040AD180D0B0D0BDD0B8D186050201012F00011383D0BDD0B8D0BAD0B0D0BBD18CD0BDD18BD1850502010138000311BFD180D0B0D0B2D0BBD0B5D0BDD0B8D18F050201014800010784D0BED0BDD0B4050201014D0001178DD0BDD186D0B8D0BAD0BBD0BED0BFD0B5D0B4D0B8D18F050201010C000204D182D0BE050201010400010B8FD0B7D18BD0BAD0B0D1850502010127000901B5050201012A000003E2809406020101034100');
INSERT INTO searchindex_segdir (level, idx, start_block, leaves_end_block, end_block, root) VALUES (0, 1, 0, 0, '0 496', X'001AC2ABD0BFD180D0B5D0B4D0BFD0B8D181D0B0D0BDD0B8D0B5C2BB050301011100000CCEB3CF81CEACCEBCCEBCCEB10503010109000006CF80CF81CEBF0503010105000010D0B0D0BBD0B3D0BED180D0B8D182D0BC050301011D000101B2050301010E000107B3D180D0B5D18706030101040600010BB4D0B0D0BDD0BDD0BED0B5050301011700030DB5D0B9D181D182D0B2D0B8D0B90503010116000107B5D181D182D18C050301011300010FB7D0B0D0B4D0B0D0BDD0BDD183D18E0503010114000507BFD0B8D181D18C050301010B00011DBDD0B5D0BFD0BED181D180D0B5D0B4D181D182D0B2D0B5D0BDD0BDD0BE0503010119000113BED0B7D0BDD0B0D187D0B0D18ED189D0B8D0B90503010110000202D182050301010300010FBFD0B5D180D0B5D0B2D0BED0B4D0B5050301010F00030BBED0BDD18FD182D0B8D0B50503010118000E02D0BC050301011C000420D181D0BBD0B5D0B4D0BED0B2D0B0D182D0B5D0BBD18CD0BDD0BED181D182D18C0503010115000206D180D0B5D0B4050301010700050FBED0B3D180D0B0CC81D0BCD0BCD0B00503010102000C06D0BCD0BCD0B0030302000002D181050301011B00020CD0B2D18FD0B7D0B0D0BDD0BE050301011A00010B82D0B5D180D0BCD0B8D0BD050301010D000301BE0503010112000003E280940703010106060400');
INSERT INTO searchindex_segdir (level, idx, start_block, leaves_end_block, end_block, root) VALUES (0, 2, 0, 0, '0 2041', X'0001310504010134000001320504010135000005726F626F74050401010400050161050401010600001AC2ABD0BFD0BED0B4D0BDD0B5D0B2D0BED0BBD18CD0BDD18BD0B90504010108000212D180D0BED0B1D0BED182D0B0D0BCD0B8C2BB050401017C00001CD0B0D0B2D182D0BED0BCD0B0D182D0B8D187D0B5D181D0BAD0BED0B5060401010B45000909BDD0BED0BCD0BDD0BE06040101483A00030DBDD0B0D0BBD0BED0B3D0BED0B2050401012100060AD182D0BED0BCD0B8D0B80504010171000107B1D0BED182D18B060401018401000206D18BD182D18C060401015316000101B20704010149250F000204D0B8D0B4050401015F00030BBDD0B5D188D0BDD0B8D0B9050401015E000214D18BD0BFD0BED0BBD0BDD18FD0B5D0BCD0BED0B90504010177001204D18BD185050401011400010FB4D0B0D182D187D0B8D0BAD0BED0B2050401011F00030DB5D0B9D181D182D0B2D0B8D0B90504010112000D09BED0B2D0B0D182D18C0504010147000C0AD183D18ED189D0B8D0B5060401018101000303BBD18F060401010E6A000301BE050401015B000109B6D0B8D0B2D18BD18506040101245100010BB7D0B0D0B4D0B0D187D0B8050401017800050FB8D0BCD181D182D0B2D183D18ED182050401016F00050FBBD0BED0B6D0B5D0BDD0BDD0BED0B9050401014C000509BCD0B5D0BDD18FD18F0504010131000101B8090401012B1D14040C000204D0BBD0B8060401012F58000307BCD0B5D182D18C050401013B000319BDD184D0BED180D0BCD0B0D186D0B8D0BED0BDD0BDD18BD185050401017A001202D18E05040101190005038BD0B5050401012C000105BAD0B0D0BA050401013A000604D0B8D0BC050401016800030BBED0BCD0B0D0BDD0B4D18B0504010142000513BDD181D182D180D183D0BAD186D0B8D18FD185050401016D000109BCD0BED0B3D183D1820504010152000505B6D0B5D1820704010127142F000113BDD0B0D0B7D0BDD0B0D187D0B5D0BDD0B8D18F050401015000060AD18BD0B2D0B0D18ED182050401017E00050BBFD180D0B8D0BCD0B5D180060401018301000305B5D0B3D0BE050401014100050DBAD0BED182D0BED180D18BD0B5050401017F00040AD180D0B5D0B4D0BAD0BE050401016B000101BE050401011A00020AD0B1D18BD187D0BDD0BE060401011306000313BAD180D183D0B6D0B0D18ED189D0B5D0B3D0BE050401011C000311BFD0B5D180D0B0D182D0BED180D0BED0BC050401013E000B0586D0B8D0B8050401012D000212D180D0B3D0B0D0BDD0B8D0B7D0BCD0BED0B20504010125000B03BED0B2050401012200031781D183D189D0B5D181D182D0B2D0BBD0B5D0BDD0B8D18F050401010F001206D18FD182D18C05040101290003018207040101053D18000103BFD0BE0504010162000410D0B4D185D0BED0B4D18FD189D0B8D0B5050401017500050DB8D181D0BAD0BED0B2D18BD0B506040101860100050DBBD0BDD0BED181D182D18CD18E050401013000060AD183D187D0B0D0B5D1820504010118000C02D18F050401013F000412D181D180D0B5D0B4D181D182D0B2D0BED0BC050401011E00021CD180D0B5D0B4D0BDD0B0D0B7D0BDD0B0D187D0B5D0BDD0BDD0BED0B5050401010D000501B8050401013600060ED0BAD0BBD0B0D0B4D0BDD18BD185050401015900050FBED0B3D180D0B0D0BCD0BCD0BED0B9050401014D001002D18B060401018201000719B8D0B7D0B2D0BED0B4D181D182D0B2D0B5D0BDD0BDD18BD0B5050401012A001E02D185050401015D000612D181D182D180D0B0D0BDD181D182D0B2D0B0050401011D000014D180D0B0D0B7D0BBD0B8D187D0BDD0BED0B3D0BE0504010110000E04D18BD1850504010172000711BDD0BED0BED0B1D180D0B0D0B7D0B5D0BD0504010161001507BDD18BD0BCD0B80504010155000309BECC81D0B1D0BED1820504010102000406D0B1D0BED1820804020101161214000A04D0BED0B2060401015111000A02D18B060401018701000503B4D0B0050401011100020AD183D187D0BDD0BED0B5050401014300010181060401013D1000021AD0B0D0BCD0BED181D182D0BED18FD182D0B5D0BBD18CD0BDD0BE0504010128000606D18BD0BCD0B80504010154000307B2D18FD0B7D18C050401013C000311BED0B4D0B5D180D0B6D0B0D0BDD0B8D18E0504010165000513BED182D0B2D0B5D182D181D182D0B2D0B8D0B8050401014A00040ED181D182D0BED18FD0BDD0B8D0B8050401011B00020AD183D0B3D183D0B1D0BE050401015C00040AD189D0B5D181D182D0B2050401017400010582D0B0D0BA0504010145000604D0B6D0B5050401017D000313B5D185D0BDD0B8D187D0B5D181D0BAD0B8D185050401012000090DBED0BBD0BED0B3D0B8D18FD185050401017B000206D180D183D0B40504010132000802C2BB050401010900011B83D0B2D0B5D181D0B5D0BBD0B8D182D0B5D0BBD18CD0BDD18BD1850504010157000309B3D0BED0B4D0BDD0BE0504010169000307B7D0BBD0BED0B2050401016E000311BFD180D0B0D0B2D0BBD0B5D0BDD0B8D0B506040101440D000212D181D182D180D0BED0B9D181D182D0B2D0BE050401010C00010984D0BED180D0BCD0B5050401016300010785D0BED182D18F050401016A00010F87D0B0D181D182D0B8D187D0BDD0BE050401012E00030DB5D0BBD0BED0B2D0B5D0BAD0B00504010133000F03BED0BC0504010115000402D188050401010300020AD183D0B2D181D182D0B2050401012300010F8DD0BBD0B5D0BCD0B5D0BDD182D18B0504010170000206D182D0BED0BC0504010137000003E2809406040101070500');
INSERT INTO searchindex_segdir (level, idx, start_block, leaves_end_block, end_block, root) VALUES (0, 3, 1, 2, '2 5137', X'010105D181D0BED0');
INSERT INTO searchindex_segdir (level, idx, start_block, leaves_end_block, end_block, root) VALUES (0, 4, 3, 4, '4 5365', X'010303D181D0');

-- Таблица: searchindex_segments
CREATE TABLE IF NOT EXISTS 'searchindex_segments'(blockid INTEGER PRIMARY KEY, block BLOB);
INSERT INTO searchindex_segments (blockid, block) VALUES (1, X'00013108050101CD01810100010130080501019F019C020001013106050101B8010001013206050101A2020001013306050101B6020001013406050101C602000202333906050101C5020001013506050101FB02000101360705010126F40200010337303305050101290002093134E2809431373238050501012F0002093332E2809431393138050501013100010A393035E280943139303706050101B4010002093134E280943139323405050101050002093234E2809431393931050501010A0002093431E280943139343406050101BF010003013506050101CF010000013206050101EF0100010330313206050101CE020003013906050101B303000202323406050101F001000202333007050101A902070001013705050101270000013306050101E3010000013406050101BA030000013507050101EC0148000102393706050101ED0100000136050501011B000001370505010138000102363306050101EE0100000138050501013E000102373206050101C101000001390705010164D10100000162050501010C00000163050501013700000169060501012D24000002C2AB0A050101682054643136000212D181D182D180D0B0D182D0B5D0B3D0B8D18F06050101A502000002D0B0060501019802000214D0B3D0BBD0BED0BCD0B5D180D0B0D186D0B8D0B806050101C20200031DB4D0BCD0B8D0BDD0B8D181D182D180D0B0D182D0B8D0B2D0BDD18BD0B9050501011F000210D181D181D0B0D0BCD0B1D0BBD0B5D18F06050101A101000717BED186D0B8D0B8D180D0BED0B2D0B0D182D18CD181D18F050501014A000113B1D0B8D0B1D0BBD0B8D0BED182D0B5D0BAD0B006050101910300030BBBD0BED0BAD0B0D0B4D0B506050101C501000307BED0BBD0B5D0B506050101FC01000606D18CD188D0B50505010149000204D18BD0BB07050101B00124000101B2170501010407270E2405171831070804161F176B0E280D00020AD0B0D0B6D0BDD18BD0B906050101DD02000A02D18506050101800300030BB5D0BBD0B8D0BAD0BED0B906050101625B000309BBD0B0D181D182D0B8060501019C01000303BCD18406050101A70100030DBED0B5D0BDD0BDD0BED0B3D0BE06050101AC0100050BB8D0BDD181D0BAD0BED0B906050101E501000505B9D0BDD18B06050101BD0100020ED180D0B5D0BCD0B5D0BDD0B5D0BC05050101460003018106050101AE01000410D0B5D0BCD0B8D180D0BDD0BED0B3D0BE06050101F802000402D191050501014800030982D0BED180D0BED0B90505010115000804D18BD0BC06050101D30200030985D0BED0B4D18FD18206050101F40200070DB6D0B4D0B5D0BDD0B8D0B5D0BC050501015A00011BB3D0B5D0BED0B3D180D0B0D184D0B8D187D0B5D181D0BAD0B0D18F060501018801000418D180D0B0D0BBD18CD0B4D0B8D187D0B5D181D0BAD0B8D0B9060501019101000713BED0B5D0BCD0BFD0B5D180D0B5D0B9D182D0B806050101D50100030BBBD0B0D0B2D0BDD0BED0B506050101A501000305BED0B4D0B0090501012AA8018101000802C2BB06050101AA02000802D185090501010607299001000703BED0B206050101B501000602D18308050101AF028701000406D180D0BED0B40A050101190536AB0145000A02D0B009050101DC010A622B000B03BED0B2060501018902000D01BC09050101D401331B3C000A08D181D0BAD0BED0B906050101C10200051181D183D0B4D0B0D180D181D182D0B2D0B0050501013600020CD180D0B0D0BDD0B8D186D18B050501017F000B0587D0B8D182050501017800010DB4D0B5D180D0B6D0B0D0B2D18B0505010163000303BDD18F06050101C201000301BE06050101A80200010BB5D0B2D180D0BED0BFD0B5060501018D02000C0AD0B9D181D0BAD0BED0B9050501016100010DB6D0B8D182D0B5D0BBD0B5D0B9060501019D0200010BB7D0B0D0BBD0B8D0B2D0B00505010172000507BFD0B0D0B4D0B5050501016D000B07BDD0BED0B3D0BE060501012278000C04D18BD0BC06050101840200030DBDD0B0D187D0B5D0BDD0B8D18F070501011EC201000907B8D0BCD18BD185060501018703000101B8110501013024091C1129422F420C10330F000202D0B706050101FE02000307BCD0B5D0B5D182050501017D000705BDD0B5D0BC050501014C000509BFD0B5D180D0B8D0B80505010158000317BDD0BDD0BED0B2D0B0D186D0B8D0BED0BDD0BDD18BD0B906050101A302000216D181D0B0D0B0D0BAD0B8D0B5D0B2D181D0BAD0B8D0B906050101960300050FBAD183D181D181D182D0B2D0BEC2BB06050101A003000412D182D0BED180D0B8D187D0B5D181D0BAD0B80505010151001602D0B906050101EB02001505BED0B3D0BE06050101AE03000D018E050501015E000D038FC2BB0605010169720003058ED0BBD18F06050101CD02000101BA0B050101662054590D3136000204D0BCC2B206050101C70200030BBED0BBD0BFD0B8D0BDD0BE06050101E801000513BCD0B0D0BDD0B4D0BED0B2D0B0D0BDD0B8D0B506050101A60100070BBFD0BBD0B5D0BAD181D18B06050101F202000519BDD181D182D0B8D182D183D186D0B8D0BED0BDD0BDD18BD0B9060501018E0100040AD182D0BED180D0BED0B906050101C80100020ED180D0B5D0BFD0BED181D182D18C06050101950300050DBED0BDD188D182D0B0D0B4D18206050101E70100040AD183D0BFD0BDD18BD0B906050101E40200030D83D0BBD18CD182D183D180D0B0060501019E03000F03BDD0BE0705010153B702001204D0B3D0BE06050101A403001004D18BD0B906050101E102000511BDD181D182D0BAD0B0D0BCD0B5D180D0B0060501018C03000113BBD0B5D0BDD0B8D0BDD0B3D180D0B0CC81D0B4050501010E001002D0B406050101D10100120AD181D0BAD0BED0B3D0BE06050101AB01001901B9060501017A25000305B8D188D18C06050101940200030FBED0BCD0BED0BDD0BED181D0BED0B206050101EA01000509BDD0B4D0BED0BDD183060501019702000113BCD0B0D180D0B8D0B8D0BDD181D0BAD0B8D0B9060501018D030005018F0705010128A80100031DB5D0B6D0BFD0B0D180D0BBD0B0D0BCD0B5D0BDD182D181D0BAD0B0D18F06050101A00100030DB8D0BBD0BBD0B8D0BED0BDD0B00A050101CB0134398901000F09BDD0B8D0BAD0BED0BC060501018602000404D180D0B506050101F80100030BBED180D181D0BAD0B8D0B5050501017E00050781D0BAD0B2D0B5060501019502000A02D18B06050101CB02000208D183D0B7D0B5D0B9060501019303000103BDD0B0080501016B06B402000408D0B7D0B2D0B0D0BD050501013900050BB8D0B1D0BED0BBD0B5D0B506050101860300050FBFD180D0B0D0B2D0BBD0B5D0BDD0B006050101A60300040ED181D0B5D0BBD0B5D0BDD0B8D0B507050101EB0147001202C2BB06050101BB02001202D0BC06050101FB01001002D18E070501019202470011018F0505010118000709BBD0B5D0B4D0B8D18F07050101F9022E00050983D187D0BDD18BD0B906050101DF0200050D85D0BED0B4D0B8D0BBD181D18F06050101C301000A08D18FD182D181D18F070501018D015700051386D0B8D0BED0BDD0B0D0BBD18CD0BDD0B0D18F060501019003000301B5060501019F0200040ED0B1D0B5D181D0BDD0BED0B3D0BE0505010140000509B2D181D0BAD0B8D0B90605010199030007018B0505010177000303B8D0BC06050101F102000301BE050501014400010DBED0B1D0BBD0B0D181D182D0B8060501019E01000C04D18CD18E050501017B00040CD18AD0B5D0BAD182D0BED0B208050101F702151B00060AD18FD0B2D0BBD0B5D0BD06050101D301000305B4D0B8D0BD06050101FD02000307BAD0BED0BBD0BE08050101CA01F001000408D180D183D0B3D0B00705010124781500051182D18FD0B1D180D18CD181D0BAD0BED0B906050101B701000301BD060501018E0200020AD180D0B3D0B0D0BDD18B060501019B0100030B81D0BDD0BED0B2D0B0D0BD0505010125000C08D182D0B5D0BBD18F050501014300031782D0B5D187D0B5D181D182D0B2D0B5D0BDD0BDD0BED0B906050101BC01000113BFD0B0D0BCD18FD182D0BDD0B8D0BAD0BED0B206050101F302000309B5D180D0B2D18BD0BC060501019A02000707B5D0B9D182D0B80705010165D40100050F82D0B5D180D0B1D183CC81D180D0B3060501010311000E04D180D0B30B05030101F30110520C5D001202D0B008050101E001D301001301B5060501018C01001208D181D0BAD0BED0B906050101C002000604D180D0B0060501013D1300090BBED0B3D180D0B0CC81D0B40505010108000B01BC050501012C000B13BFD0B0D0B2D0BBD0BED0B2D181D0BAD0B0D18F060501019403000309B8CC81D182D0B5D180050501011100030BBBD0BED189D0B0D0B4D0B806050101D502000C02D18C06050101C302000301BE0905010116FD010C3B00040ED0B1D0B5D180D0B5D0B6D18CD0B50505010170000509B3D0B8D0B1D0BBD0BE06050101C901000511BAD180D0BED0B2D0B8D182D0B5D0BBD18F050501014100050DBBD0BDD0BED181D182D18CD18E060501018A0200070FBFD180D0B5D0B4D181D182D0B2D0BE06050101960100040CD181D0B5D182D0B8D0BBD0B806050101B703000703BBD0B506050101C802000216D180D0B5D0B4D0BFD0BED0BBD0B0D0B3D0B0D0B5D18206050101AB0200070DB7D0B8D0B4D0B5D0BDD182D0B5060501019401000501B806050101930100050DBED0B3D180D0B0D0BCD0BCD0B006050101AA03000618D181D0BFD0B5D0BAD182D0BFD0B5D180D0B5D0B9D182D0B8060501019A03000010D180D0B0D0B7D0B2D0B8D182D0B8D18F08050101A6028901000701B3050501010F000707B4D0B5D0BBD1830A05010167205464313600070BBCD0B5D189D0B5D0BDD18B06050101A401000410D181D0BFD0BED0BBD0BED0B6D0B5D0BD050501016A001406D0BDD18BD185060501018B0200060ED188D0B8D180D0B5D0BDD0B8D18F06050101C90200030FB5D0B2D0BED0BBD18ED186D0B8D0B906050101B30100050FB7D183D0BBD18CD182D0B0D182D0B506050101C701000503BAD0B8050501017600030FBED0B6D0B4D0B5D0BDD0B8D0B5D0BC0505010156000503BBD0B80505010160000408D181D181D0B8D0B8090501011A43AE015E000B09B9D181D0BAD0B0D18F060501018F03001105BED0B3D0BE0505010135001301B9050501015700020CD183D181D181D0BAD0B8D0B906050101920300030184090501019001071509000101810A0501014B0C26097C7800020AD0B0D0BCD0BED0B3D0BE050501014D000604D18BD0B906050101F501000901BC060501018302000802D18506050101FF02000505BDD0BAD1821005020101028B0156151041130C5807000A17E28091D0BFD0B5D182D0B5D180D0B1D183D180D0B3D0B006050101A702000309B2D18FD0B7D0B0D0BD0505010154000C06D0BDD18BD0B506050101EF02000608D182D0BED0B3D0BE050501013C00030DB5D0B2D0B5D180D0BDD18BD0B906050101F601000B01BE07050101214D2D000307BBD0B0D0B2D18B06050101E601000303BDD0B306050101A201000301BE050501014500');
INSERT INTO searchindex_segments (blockid, block) VALUES (2, X'000AD181D0BED0B1D0BED180060501019703000505B2D0B5D182060501019201000610D180D0B5D0BCD0B5D0BDD0BDD183D18E050501015D00040AD181D182D0B0D0B2D0B506050101DB01000D03B8D18206050101B10200050F85D180D0B0D0BDD0B5D0BDD0B8D0B506050101A203001202D18F06050101AB03000303BFD0B10505010113000507B8D181D0BED0BA06050101F602000208D180D0B5D0B4D0B80705010188027F00030582D0B0D0BB0505010147000509BED0BBD0B8D186D0B00505010134000D03B5D0B906050101A102000408D180D0B0D0BDD0B5060501018203000A02D18B070501016EED0100030383D0B4060501018F0100030D86D0B5D0BDD0B0D180D0B8D0B906050101A40200010982D0B0D0BAD0B6D0B5090501017C2940201C000307B5D0B0D182D180060501018E03000410D180D180D0B8D182D0BED180D0B8D0B806050101CA02000303BED0BC06050101A803000212D180D0B0D0BDD181D0BFD0BED180D182C2BB06050101EA02001206D0BDD18BD0B906050101E502000509B5D182D18CD0B8D0BC060501019002000404D191D18506050101B20100030B83D180D0B8D0B7D0BCD0B0060501018403000812D181D182D0B8D187D0B5D181D0BAD0B8D185060501018903000D03BED0B206050101BC0300011583D0B7D0B5D0BBD0BFD0B5D180D0B5D0B9D182D0B806050101E60200020CD181D182D183D0BFD0B0D18F0605010193020007038CD0B5050501017500011584D0B5D0B2D180D0B0D0BBD18CD181D0BAD0BED0B906050101B601000513B4D0B5D180D0B0D0BBD18CD0BDD0BED0B3D0BE080501011D087846000309B8D0B7D0B8D0BAD0BE06050101870100050FBDD0BBD18FD0BDD0B4D0B8D0B5D0B906050101810100060AD181D0BAD0BED0B3D0BE050501017100011D85D0B0D180D0B0D0BAD182D0B5D180D0B8D181D182D0B8D0BAD0B0C2BB060501018901000305BED0B4D0B506050101BA0100010786D0B0D180D18F050501014200070391D0BC050501012B000307B5D0BDD182D1800905010120A002260C000A02D0B006050101AF03000B03BED0B2060501018303000D01BC06050101B10100010D87D0B5D0BBD0BED0B2D0B5D0BA09050101CC01270F39000406D181D182D18C050501013B000307B8D181D0BBD0B506050101A903000A0CD0BDD0BDD0BED181D182D0B807050101178702000204D182D0BE06050101AC0200010788D182D0B0D0B106050101AA010001198DD0BAD0BED0BDD0BED0BCD0B8D187D0B5D181D0BAD0B8D0B906050101DE0200020CD180D0BCD0B8D182D0B0D0B6060501018B0300031B81D182D0BED0BDD0B8D0B5D0B9D0BFD0B5D180D0B5D0B9D182D0B806050101830100030382D0BE06050101FC0200010B8ED0BDD0B5D181D0BAD0BE06050101FA0200010F8FD0B2D0BBD18FD0B5D182D181D18F0805010182020F4500080CD18ED189D0B8D0BCD181D18F06050101A002000003E280940E05010107080506210EB7014B2100');
INSERT INTO searchindex_segments (blockid, block) VALUES (3, X'00013108050101CD01810100010130080501019F019C020002043234707806050101CD030001013106050101B8010001013206050101A2020001013306050101B6020001013406050101C602000202333906050101C5020001013506050101FB02000101360705010126F40200010337303305050101290002093134E2809431373238050501012F0002093332E2809431393138050501013100010A393035E280943139303706050101B4010002093134E280943139323405050101050002093234E2809431393931050501010A0002093431E280943139343406050101BF010003013506050101CF010000013206050101EF0100010330313206050101CE020003013906050101B303000202323406050101F001000202333007050101A9020700010137050501012700010538696D673207050101C9030A0001013907050101CA030A0000013306050101E3010000013406050101BA030000013507050101EC0148000102393706050101ED0100000136050501011B000001370505010138000102363306050101EE0100000138050501013E000102373206050101C101000001390705010164D10100000162050501010C000105726964676507050101C7030A0000016305050101370001066F6D6D6F6E7306050101C203000103726F7007050101CB030A0000016606050101C4030001016406050101C503000103696C6506050101BD0300000169060501012D240000036A706707050101CC030A0000036F726706050101C00300000670616C61636507050101C6030A00000373706207050101C8030A0000057468756D6207050101C3031400000675706C6F616406050101BE0300000977696B696D6564696106050101BF03000405706564696106050101C103000002C2AB0A050101682054643136000212D181D182D180D0B0D182D0B5D0B3D0B8D18F06050101A502000002D0B0060501019802000214D0B3D0BBD0BED0BCD0B5D180D0B0D186D0B8D0B806050101C20200031DB4D0BCD0B8D0BDD0B8D181D182D180D0B0D182D0B8D0B2D0BDD18BD0B9050501011F000210D181D181D0B0D0BCD0B1D0BBD0B5D18F06050101A101000717BED186D0B8D0B8D180D0BED0B2D0B0D182D18CD181D18F050501014A000113B1D0B8D0B1D0BBD0B8D0BED182D0B5D0BAD0B006050101910300030BBBD0BED0BAD0B0D0B4D0B506050101C501000307BED0BBD0B5D0B506050101FC01000606D18CD188D0B50505010149000204D18BD0BB07050101B00124000101B2170501010407270E2405171831070804161F176B0E280D00020AD0B0D0B6D0BDD18BD0B906050101DD02000A02D18506050101800300030BB5D0BBD0B8D0BAD0BED0B906050101625B000309BBD0B0D181D182D0B8060501019C01000303BCD18406050101A70100030DBED0B5D0BDD0BDD0BED0B3D0BE06050101AC0100050BB8D0BDD181D0BAD0BED0B906050101E501000505B9D0BDD18B06050101BD0100020ED180D0B5D0BCD0B5D0BDD0B5D0BC05050101460003018106050101AE01000410D0B5D0BCD0B8D180D0BDD0BED0B3D0BE06050101F802000402D191050501014800030982D0BED180D0BED0B90505010115000804D18BD0BC06050101D30200030985D0BED0B4D18FD18206050101F40200070DB6D0B4D0B5D0BDD0B8D0B5D0BC050501015A00011BB3D0B5D0BED0B3D180D0B0D184D0B8D187D0B5D181D0BAD0B0D18F060501018801000418D180D0B0D0BBD18CD0B4D0B8D187D0B5D181D0BAD0B8D0B9060501019101000713BED0B5D0BCD0BFD0B5D180D0B5D0B9D182D0B806050101D50100030BBBD0B0D0B2D0BDD0BED0B506050101A501000305BED0B4D0B0090501012AA8018101000802C2BB06050101AA02000802D185090501010607299001000703BED0B206050101B501000602D18308050101AF028701000406D180D0BED0B40A050101190536AB0145000A02D0B009050101DC010A622B000B03BED0B2060501018902000D01BC09050101D401331B3C000A08D181D0BAD0BED0B906050101C10200051181D183D0B4D0B0D180D181D182D0B2D0B0050501013600020CD180D0B0D0BDD0B8D186D18B050501017F000B0587D0B8D182050501017800010DB4D0B5D180D0B6D0B0D0B2D18B0505010163000303BDD18F06050101C201000301BE06050101A80200010BB5D0B2D180D0BED0BFD0B5060501018D02000C0AD0B9D181D0BAD0BED0B9050501016100010DB6D0B8D182D0B5D0BBD0B5D0B9060501019D0200010BB7D0B0D0BBD0B8D0B2D0B00505010172000507BFD0B0D0B4D0B5050501016D000B07BDD0BED0B3D0BE060501012278000C04D18BD0BC06050101840200030DBDD0B0D187D0B5D0BDD0B8D18F070501011EC201000907B8D0BCD18BD185060501018703000101B8110501013024091C1129422F420C10330F000202D0B706050101FE02000307BCD0B5D0B5D182050501017D000705BDD0B5D0BC050501014C000509BFD0B5D180D0B8D0B80505010158000317BDD0BDD0BED0B2D0B0D186D0B8D0BED0BDD0BDD18BD0B906050101A302000216D181D0B0D0B0D0BAD0B8D0B5D0B2D181D0BAD0B8D0B906050101960300050FBAD183D181D181D182D0B2D0BEC2BB06050101A003000412D182D0BED180D0B8D187D0B5D181D0BAD0B80505010151001602D0B906050101EB02001505BED0B3D0BE06050101AE03000D018E050501015E000D038FC2BB0605010169720003058ED0BBD18F06050101CD02000101BA0B050101662054590D3136000204D0BCC2B206050101C70200030BBED0BBD0BFD0B8D0BDD0BE06050101E801000513BCD0B0D0BDD0B4D0BED0B2D0B0D0BDD0B8D0B506050101A60100070BBFD0BBD0B5D0BAD181D18B06050101F202000519BDD181D182D0B8D182D183D186D0B8D0BED0BDD0BDD18BD0B9060501018E0100040AD182D0BED180D0BED0B906050101C80100020ED180D0B5D0BFD0BED181D182D18C06050101950300050DBED0BDD188D182D0B0D0B4D18206050101E70100040AD183D0BFD0BDD18BD0B906050101E40200030D83D0BBD18CD182D183D180D0B0060501019E03000F03BDD0BE0705010153B702001204D0B3D0BE06050101A403001004D18BD0B906050101E102000511BDD181D182D0BAD0B0D0BCD0B5D180D0B0060501018C03000113BBD0B5D0BDD0B8D0BDD0B3D180D0B0CC81D0B4050501010E001002D0B406050101D10100120AD181D0BAD0BED0B3D0BE06050101AB01001901B9060501017A25000305B8D188D18C06050101940200030FBED0BCD0BED0BDD0BED181D0BED0B206050101EA01000509BDD0B4D0BED0BDD183060501019702000113BCD0B0D180D0B8D0B8D0BDD181D0BAD0B8D0B9060501018D030005018F0705010128A80100031DB5D0B6D0BFD0B0D180D0BBD0B0D0BCD0B5D0BDD182D181D0BAD0B0D18F06050101A00100030DB8D0BBD0BBD0B8D0BED0BDD0B00A050101CB0134398901000F09BDD0B8D0BAD0BED0BC060501018602000404D180D0B506050101F80100030BBED180D181D0BAD0B8D0B5050501017E00050781D0BAD0B2D0B5060501019502000A02D18B06050101CB02000208D183D0B7D0B5D0B9060501019303000103BDD0B0080501016B06B402000408D0B7D0B2D0B0D0BD050501013900050BB8D0B1D0BED0BBD0B5D0B506050101860300050FBFD180D0B0D0B2D0BBD0B5D0BDD0B006050101A60300040ED181D0B5D0BBD0B5D0BDD0B8D0B507050101EB0147001202C2BB06050101BB02001202D0BC06050101FB01001002D18E070501019202470011018F0505010118000709BBD0B5D0B4D0B8D18F07050101F9022E00050983D187D0BDD18BD0B906050101DF0200050D85D0BED0B4D0B8D0BBD181D18F06050101C301000A08D18FD182D181D18F070501018D015700051386D0B8D0BED0BDD0B0D0BBD18CD0BDD0B0D18F060501019003000301B5060501019F0200040ED0B1D0B5D181D0BDD0BED0B3D0BE0505010140000509B2D181D0BAD0B8D0B90605010199030007018B0505010177000303B8D0BC06050101F102000301BE050501014400010DBED0B1D0BBD0B0D181D182D0B8060501019E01000C04D18CD18E050501017B00040CD18AD0B5D0BAD182D0BED0B208050101F702151B00060AD18FD0B2D0BBD0B5D0BD06050101D301000305B4D0B8D0BD06050101FD02000307BAD0BED0BBD0BE08050101CA01F001000408D180D183D0B3D0B00705010124781500051182D18FD0B1D180D18CD181D0BAD0BED0B906050101B701000301BD060501018E0200020AD180D0B3D0B0D0BDD18B060501019B0100030B81D0BDD0BED0B2D0B0D0BD0505010125000C08D182D0B5D0BBD18F050501014300031782D0B5D187D0B5D181D182D0B2D0B5D0BDD0BDD0BED0B906050101BC01000113BFD0B0D0BCD18FD182D0BDD0B8D0BAD0BED0B206050101F302000309B5D180D0B2D18BD0BC060501019A02000707B5D0B9D182D0B80705010165D40100050F82D0B5D180D0B1D183CC81D180D0B3060501010311000E04D180D0B30B05030101F30110520C5D001202D0B008050101E001D301001301B5060501018C01001208D181D0BAD0BED0B906050101C002000604D180D0B0060501013D1300090BBED0B3D180D0B0CC81D0B40505010108000B01BC050501012C000B13BFD0B0D0B2D0BBD0BED0B2D181D0BAD0B0D18F060501019403000309B8CC81D182D0B5D180050501011100030BBBD0BED189D0B0D0B4D0B806050101D502000C02D18C06050101C302000301BE0905010116FD010C3B00040ED0B1D0B5D180D0B5D0B6D18CD0B50505010170000509B3D0B8D0B1D0BBD0BE06050101C901000511BAD180D0BED0B2D0B8D182D0B5D0BBD18F050501014100050DBBD0BDD0BED181D182D18CD18E060501018A0200070FBFD180D0B5D0B4D181D182D0B2D0BE06050101960100040CD181D0B5D182D0B8D0BBD0B806050101B703000703BBD0B506050101C802000216D180D0B5D0B4D0BFD0BED0BBD0B0D0B3D0B0D0B5D18206050101AB0200070DB7D0B8D0B4D0B5D0BDD182D0B5060501019401000501B806050101930100050DBED0B3D180D0B0D0BCD0BCD0B006050101AA03000618D181D0BFD0B5D0BAD182D0BFD0B5D180D0B5D0B9D182D0B8060501019A03000010D180D0B0D0B7D0B2D0B8D182D0B8D18F08050101A6028901000701B3050501010F000707B4D0B5D0BBD1830A05010167205464313600070BBCD0B5D189D0B5D0BDD18B06050101A401000410D181D0BFD0BED0BBD0BED0B6D0B5D0BD050501016A001406D0BDD18BD185060501018B0200060ED188D0B8D180D0B5D0BDD0B8D18F06050101C90200030FB5D0B2D0BED0BBD18ED186D0B8D0B906050101B30100050FB7D183D0BBD18CD182D0B0D182D0B506050101C701000503BAD0B8050501017600030FBED0B6D0B4D0B5D0BDD0B8D0B5D0BC0505010156000503BBD0B80505010160000408D181D181D0B8D0B8090501011A43AE015E000B09B9D181D0BAD0B0D18F060501018F03001105BED0B3D0BE0505010135001301B9050501015700020CD183D181D181D0BAD0B8D0B906050101920300030184090501019001071509000101810A0501014B0C26097C7800');
INSERT INTO searchindex_segments (blockid, block) VALUES (4, X'000CD181D0B0D0BCD0BED0B3D0BE050501014D000604D18BD0B906050101F501000901BC060501018302000802D18506050101FF02000505BDD0BAD1821005020101028B0156151041130C5807000A17E28091D0BFD0B5D182D0B5D180D0B1D183D180D0B3D0B006050101A702000309B2D18FD0B7D0B0D0BD0505010154000C06D0BDD18BD0B506050101EF02000608D182D0BED0B3D0BE050501013C00030DB5D0B2D0B5D180D0BDD18BD0B906050101F601000B01BE07050101214D2D000307BBD0B0D0B2D18B06050101E601000303BDD0B306050101A201000301BE0505010145000406D0B1D0BED180060501019703000505B2D0B5D182060501019201000610D180D0B5D0BCD0B5D0BDD0BDD183D18E050501015D00040AD181D182D0B0D0B2D0B506050101DB01000D03B8D18206050101B10200050F85D180D0B0D0BDD0B5D0BDD0B8D0B506050101A203001202D18F06050101AB03000303BFD0B10505010113000507B8D181D0BED0BA06050101F602000208D180D0B5D0B4D0B80705010188027F00030582D0B0D0BB0505010147000509BED0BBD0B8D186D0B00505010134000D03B5D0B906050101A102000408D180D0B0D0BDD0B5060501018203000A02D18B070501016EED0100030383D0B4060501018F0100030D86D0B5D0BDD0B0D180D0B8D0B906050101A40200010982D0B0D0BAD0B6D0B5090501017C2940201C000307B5D0B0D182D180060501018E03000410D180D180D0B8D182D0BED180D0B8D0B806050101CA02000303BED0BC06050101A803000212D180D0B0D0BDD181D0BFD0BED180D182C2BB06050101EA02001206D0BDD18BD0B906050101E502000509B5D182D18CD0B8D0BC060501019002000404D191D18506050101B20100030B83D180D0B8D0B7D0BCD0B0060501018403000812D181D182D0B8D187D0B5D181D0BAD0B8D185060501018903000D03BED0B206050101BC0300011583D0B7D0B5D0BBD0BFD0B5D180D0B5D0B9D182D0B806050101E60200020CD181D182D183D0BFD0B0D18F0605010193020007038CD0B5050501017500011584D0B5D0B2D180D0B0D0BBD18CD181D0BAD0BED0B906050101B601000513B4D0B5D180D0B0D0BBD18CD0BDD0BED0B3D0BE080501011D087846000309B8D0B7D0B8D0BAD0BE06050101870100050FBDD0BBD18FD0BDD0B4D0B8D0B5D0B906050101810100060AD181D0BAD0BED0B3D0BE050501017100011D85D0B0D180D0B0D0BAD182D0B5D180D0B8D181D182D0B8D0BAD0B0C2BB060501018901000305BED0B4D0B506050101BA0100010786D0B0D180D18F050501014200070391D0BC050501012B000307B5D0BDD182D1800905010120A002260C000A02D0B006050101AF03000B03BED0B2060501018303000D01BC06050101B10100010D87D0B5D0BBD0BED0B2D0B5D0BA09050101CC01270F39000406D181D182D18C050501013B000307B8D181D0BBD0B506050101A903000A0CD0BDD0BDD0BED181D182D0B807050101178702000204D182D0BE06050101AC0200010788D182D0B0D0B106050101AA010001198DD0BAD0BED0BDD0BED0BCD0B8D187D0B5D181D0BAD0B8D0B906050101DE0200020CD180D0BCD0B8D182D0B0D0B6060501018B0300031B81D182D0BED0BDD0B8D0B5D0B9D0BFD0B5D180D0B5D0B9D182D0B806050101830100030382D0BE06050101FC0200010B8ED0BDD0B5D181D0BAD0BE06050101FA0200010F8FD0B2D0BBD18FD0B5D182D181D18F0805010182020F4500080CD18ED189D0B8D0BCD181D18F06050101A002000003E280940E05010107080506210EB7014B2100');

-- Таблица: site_identifiers
CREATE TABLE IF NOT EXISTS "site_identifiers" (
 si_type BLOB NOT NULL,
 si_key BLOB NOT NULL,
 si_site INTEGER UNSIGNED NOT NULL,
 PRIMARY KEY(si_type, si_key)
 );

-- Таблица: site_stats
CREATE TABLE IF NOT EXISTS "site_stats" (
 ss_row_id INTEGER UNSIGNED NOT NULL,
 ss_total_edits BIGINT UNSIGNED DEFAULT NULL,
 ss_good_articles BIGINT UNSIGNED DEFAULT NULL,
 ss_total_pages BIGINT UNSIGNED DEFAULT NULL,
 ss_users BIGINT UNSIGNED DEFAULT NULL,
 ss_active_users BIGINT UNSIGNED DEFAULT NULL,
 ss_images BIGINT UNSIGNED DEFAULT NULL,
 PRIMARY KEY(ss_row_id)
 );
INSERT INTO site_stats (ss_row_id, ss_total_edits, ss_good_articles, ss_total_pages, ss_users, ss_active_users, ss_images) VALUES (1, 5, 0, 4, 1, 1, 0);

-- Таблица: sites
CREATE TABLE IF NOT EXISTS "sites" (
 site_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 site_global_key BLOB NOT NULL,
 site_type BLOB NOT NULL,
 site_group BLOB NOT NULL,
 site_source BLOB NOT NULL,
 site_language BLOB NOT NULL,
 site_protocol BLOB NOT NULL,
 site_domain VARCHAR(255) NOT NULL,
 site_data BLOB NOT NULL,
 site_forward SMALLINT NOT NULL,
 site_config BLOB NOT NULL
 );

-- Таблица: slot_roles
CREATE TABLE IF NOT EXISTS "slot_roles" (
 role_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 role_name BLOB NOT NULL
 );
INSERT INTO slot_roles (role_id, role_name) VALUES (1, 'main');

-- Таблица: slots
CREATE TABLE IF NOT EXISTS "slots" (
 slot_revision_id BIGINT UNSIGNED NOT NULL,
 slot_role_id SMALLINT UNSIGNED NOT NULL,
 slot_content_id BIGINT UNSIGNED NOT NULL,
 slot_origin BIGINT UNSIGNED NOT NULL,
 PRIMARY KEY(slot_revision_id, slot_role_id)
 );
INSERT INTO slots (slot_revision_id, slot_role_id, slot_content_id, slot_origin) VALUES (1, 1, 1, 1);
INSERT INTO slots (slot_revision_id, slot_role_id, slot_content_id, slot_origin) VALUES (2, 1, 2, 2);
INSERT INTO slots (slot_revision_id, slot_role_id, slot_content_id, slot_origin) VALUES (3, 1, 3, 3);
INSERT INTO slots (slot_revision_id, slot_role_id, slot_content_id, slot_origin) VALUES (4, 1, 4, 4);
INSERT INTO slots (slot_revision_id, slot_role_id, slot_content_id, slot_origin) VALUES (5, 1, 5, 5);
INSERT INTO slots (slot_revision_id, slot_role_id, slot_content_id, slot_origin) VALUES (6, 1, 6, 6);

-- Таблица: templatelinks
CREATE TABLE IF NOT EXISTS "templatelinks" (
 tl_from INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 tl_target_id BIGINT UNSIGNED NOT NULL,
 tl_from_namespace INTEGER DEFAULT 0 NOT NULL,
 PRIMARY KEY(tl_from, tl_target_id)
 );

-- Таблица: text
CREATE TABLE IF NOT EXISTS "text" (
 old_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 old_text BLOB NOT NULL, old_flags BLOB NOT NULL
 );
INSERT INTO text (old_id, old_text, old_flags) VALUES (1, '<strong>MediaWiki успешно установлена.</strong>

Информацию по работе с этой вики можно найти в [https://www.mediawiki.org/wiki/Special:MyLanguage/Help:Contents справочном руководстве].

== Начало работы ==
* [https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Configuration_settings Список возможных настроек];
* [https://www.mediawiki.org/wiki/Manual:FAQ/ru Часто задаваемые вопросы и ответы по MediaWiki];
* [https://lists.wikimedia.org/postorius/lists/mediawiki-announce.lists.wikimedia.org/ Рассылка уведомлений о выходе новых версий MediaWiki].
* [https://www.mediawiki.org/wiki/Special:MyLanguage/Localisation#Translation_resources Перевод MediaWiki на свой язык]
* [https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Combating_spam Узнайте, как бороться со спамом в вашей вики]', 'utf-8');
INSERT INTO text (old_id, old_text, old_flags) VALUES (2, '«Википедия» — это самая крупная и популярная в мире онлайн-энциклопедия.
Её название происходит от двух слов: гавайского wiki («быстрый») и латинского encyclopedia («энциклопедия»).
По статистике на август 2023 года, «Википедия» содержит 61 млн статей на 334 языках. На русском языке создано почти 2 млн страниц.
Каждый день в «Википедию» заходят 32,8 млн уникальных пользователей со всего мира, из них 1,6 млн — россияне.
В 2003 году для управления «Википедией» был создан некоммерческий фонд «Викимедиа»', 'utf-8');
INSERT INTO text (old_id, old_text, old_flags) VALUES (3, 'Програ?мма (от греч. ??? — пред, греч. ?????? — запись) — термин, в переводе означающий «предписание», то есть заданную последовательность действий. Данное понятие непосредственно связано с понятием алгоритм.', 'utf-8');
INSERT INTO text (old_id, old_text, old_flags) VALUES (4, 'Ро?бот (чеш. robot, от robota — «подневольный труд») — автоматическое устройство, предназначенное для осуществления различного рода действий, обычно выполняемых человеком.

Робот обычно получает информацию о состоянии окружающего пространства посредством датчиков (технических аналогов органов чувств живых организмов). Робот может самостоятельно осуществлять производственные и иные операции, частично или полностью заменяя труд человека[1][2]. При этом робот может как иметь связь с оператором, получая от него команды (ручное управление), так и действовать автономно, в соответствии с заложенной программой (автоматическое управление).

Назначения роботов могут быть самыми разнообразными, от увеселительных и прикладных и до сугубо производственных. Внешний вид роботов разнообразен по форме и содержанию, может быть каким угодно, хотя нередко в конструкциях узлов заимствуют элементы анатомии различных живых существ, подходящие для выполняемой задачи.

В информационных технологиях «роботами» также называют некоторые автономно действующие программы, например, боты или поисковые роботы.', 'utf-8');
INSERT INTO text (old_id, old_text, old_flags) VALUES (5, 'Санкт-Петербу?рг (в 1914—1924 годах — Петрогра?д, в 1924—1991 годах[b] — Ленингра?д, разг. — Пи?тер, Петербу?рг, СПб) — второй по численности населения город России[6]. Город федерального значения. Административный центр Северо-Западного федерального округа. Основан 16 (27) мая 1703 года царём Петром I. В 1714—1728 и 1732—1918 годах — столица Российского государства[c][7].

Назван в честь святого Петра[8] — небесного покровителя царя-основателя, но со временем стал всё больше ассоциироваться с именем самого Петра I. Город исторически и культурно связан с рождением Российской империи и вхождением России в современную историю в роли европейской великой державы[9]Перейти к разделу «#История».

Расположен на северо-западе страны на побережье Финского залива и в устье реки Невы. Граничит с Ленинградской областью, также имеет морские границы с Финляндией и ЭстониейПерейти к разделу «#Физико-географическая характеристика».

В Санкт-Петербурге находятся: конституционный суд РФ, геральдический совет при президенте РФ, полпредство Северо-Западного федерального округа, органы власти Ленинградской области[10], межпарламентская ассамблея СНГ. Также размещены: главное командование ВМФ РФ и штаб Ленинградского военного округа ВС РФ.

Был центром трёх революций: 1905—1907 годов, Февральской, Октябрьской[11]. В ходе Великой Отечественной войны в 1941—1944 годах 872 дня находился в блокаде, в результате которой погибло около миллиона человек. 1 мая 1945 года Ленинград был объявлен городом-героемПерейти к разделу «#История». В составе города федерального значения Санкт-Петербурга также находятся 3 города воинской славы: Кронштадт, Колпино и Ломоносов.

Население: 5 597 763[2] (2024) человек. Санкт-Петербург — самый северный в мире город с населением более миллиона человек. Также Санкт-Петербург является самым западным городом-миллионником России. Среди городов, полностью расположенных в Европе, он является третьим по населению (уступая лишь Москве и Лондону), а также первым по численности жителей городом, не являющимся столицей[12]. Инновационный сценарий «Стратегия развития Санкт-Петербурга до 2030 года» предполагает, что к 2030 году население составит 5,9 миллиона человек[13]Перейти к разделу «#Население». Город — центр Санкт-Петербургской городской агломерации. Площадь города 1439[14] км?, после расширения территории Москвы 1 июля 2012 года Санкт-Петербург является вторым по площади и населению городом страны.

Санкт-Петербург — важный экономический, научный и культурный центр России, крупный транспортный узелПерейти к разделу «#Транспорт». Исторический центр города и связанные с ним комплексы памятников входят в список объектов всемирного наследия ЮНЕСКО[15]; это один из самых важных в стране центров туризма. Среди наиболее значимых культурно-туристических объектов: Эрмитаж, Кунсткамера, Мариинский театр, Российская национальная библиотека, Русский музей, Петропавловская крепость, Исаакиевский собор[16], Невский проспектПерейти к разделу «#Культура и искусство». На сохранение объектов культурного наследия направлена, в том числе, программа сохранения и развития исторического центра Санкт-Петербурга. В 2019 году Санкт-Петербург посетили около 10,4 миллиона туристов

https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Palace_Bridge_SPB_%28img2%29_Crop.jpg/1024px-Palace_Bridge_SPB_%28img2%29_Crop.jpg', 'utf-8');
INSERT INTO text (old_id, old_text, old_flags) VALUES (6, 'Санкт-Петербу?рг (в 1914—1924 годах — Петрогра?д, в 1924—1991 годах[b] — Ленингра?д, разг. — Пи?тер, Петербу?рг, СПб) — второй по численности населения город России[6]. Город федерального значения. Административный центр Северо-Западного федерального округа. Основан 16 (27) мая 1703 года царём Петром I. В 1714—1728 и 1732—1918 годах — столица Российского государства[c][7].

Назван в честь святого Петра[8] — небесного покровителя царя-основателя, но со временем стал всё больше ассоциироваться с именем самого Петра I. Город исторически и культурно связан с рождением Российской империи и вхождением России в современную историю в роли европейской великой державы[9]Перейти к разделу «#История».

Расположен на северо-западе страны на побережье Финского залива и в устье реки Невы. Граничит с Ленинградской областью, также имеет морские границы с Финляндией и ЭстониейПерейти к разделу «#Физико-географическая характеристика».

В Санкт-Петербурге находятся: конституционный суд РФ, геральдический совет при президенте РФ, полпредство Северо-Западного федерального округа, органы власти Ленинградской области[10], межпарламентская ассамблея СНГ. Также размещены: главное командование ВМФ РФ и штаб Ленинградского военного округа ВС РФ.

Был центром трёх революций: 1905—1907 годов, Февральской, Октябрьской[11]. В ходе Великой Отечественной войны в 1941—1944 годах 872 дня находился в блокаде, в результате которой погибло около миллиона человек. 1 мая 1945 года Ленинград был объявлен городом-героемПерейти к разделу «#История». В составе города федерального значения Санкт-Петербурга также находятся 3 города воинской славы: Кронштадт, Колпино и Ломоносов.

Население: 5 597 763[2] (2024) человек. Санкт-Петербург — самый северный в мире город с населением более миллиона человек. Также Санкт-Петербург является самым западным городом-миллионником России. Среди городов, полностью расположенных в Европе, он является третьим по населению (уступая лишь Москве и Лондону), а также первым по численности жителей городом, не являющимся столицей[12]. Инновационный сценарий «Стратегия развития Санкт-Петербурга до 2030 года» предполагает, что к 2030 году население составит 5,9 миллиона человек[13]Перейти к разделу «#Население». Город — центр Санкт-Петербургской городской агломерации. Площадь города 1439[14] км?, после расширения территории Москвы 1 июля 2012 года Санкт-Петербург является вторым по площади и населению городом страны.

Санкт-Петербург — важный экономический, научный и культурный центр России, крупный транспортный узелПерейти к разделу «#Транспорт». Исторический центр города и связанные с ним комплексы памятников входят в список объектов всемирного наследия ЮНЕСКО[15]; это один из самых важных в стране центров туризма. Среди наиболее значимых культурно-туристических объектов: Эрмитаж, Кунсткамера, Мариинский театр, Российская национальная библиотека, Русский музей, Петропавловская крепость, Исаакиевский собор[16], Невский проспектПерейти к разделу «#Культура и искусство». На сохранение объектов культурного наследия направлена, в том числе, программа сохранения и развития исторического центра Санкт-Петербурга. В 2019 году Санкт-Петербург посетили около 10,4 миллиона туристов

[[File:upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Palace_Bridge_SPB_%28img2%29_Crop.jpg/1024px-Palace_Bridge_SPB_%28img2%29_Crop.jpg|thumb]]', 'utf-8');

-- Таблица: updatelog
CREATE TABLE IF NOT EXISTS "updatelog" (
 ul_key VARCHAR(255) NOT NULL,
 ul_value BLOB DEFAULT NULL,
 PRIMARY KEY(ul_key)
 );
INSERT INTO updatelog (ul_key, ul_value) VALUES ('fts3', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('filearchive-fa_major_mime-patch-fa_major_mime-chemical.sql', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('image-img_major_mime-patch-img_major_mime-chemical.sql', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('oldimage-oi_major_mime-patch-oi_major_mime-chemical.sql', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('user_former_groups-ufg_group-patch-ufg_group-length-increase-255.sql', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('user_groups-ug_group-patch-ug_group-length-increase-255.sql', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('user_properties-up_property-patch-up_property.sql', NULL);
INSERT INTO updatelog (ul_key, ul_value) VALUES ('PingBack', 'd0143bfe84d64d027291d19641fc5759');
INSERT INTO updatelog (ul_key, ul_value) VALUES ('Pingback-1.41.1', 1716796407);

-- Таблица: uploadstash
CREATE TABLE IF NOT EXISTS "uploadstash" (
 us_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 us_user INTEGER UNSIGNED NOT NULL,
 us_key VARCHAR(255) NOT NULL,
 us_orig_path VARCHAR(255) NOT NULL,
 us_path VARCHAR(255) NOT NULL,
 us_source_type VARCHAR(50) DEFAULT NULL,
 us_timestamp BLOB NOT NULL,
 us_status VARCHAR(50) NOT NULL,
 us_chunk_inx INTEGER UNSIGNED DEFAULT NULL,
 us_props BLOB DEFAULT NULL,
 us_size BIGINT UNSIGNED NOT NULL,
 us_sha1 VARCHAR(31) NOT NULL,
 us_mime VARCHAR(255) DEFAULT NULL,
 us_media_type TEXT DEFAULT NULL,
 us_image_width INTEGER UNSIGNED DEFAULT NULL,
 us_image_height INTEGER UNSIGNED DEFAULT NULL,
 us_image_bits SMALLINT UNSIGNED DEFAULT NULL
 );

-- Таблица: user
CREATE TABLE IF NOT EXISTS "user" (
 user_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 user_name BLOB DEFAULT '' NOT NULL,
 user_real_name BLOB DEFAULT '' NOT NULL,
 user_password BLOB NOT NULL, user_newpassword BLOB NOT NULL,
 user_newpass_time BLOB DEFAULT NULL,
 user_email CLOB NOT NULL, user_touched BLOB NOT NULL,
 user_token BLOB DEFAULT '' NOT NULL,
 user_email_authenticated BLOB DEFAULT NULL,
 user_email_token BLOB DEFAULT NULL,
 user_email_token_expires BLOB DEFAULT NULL,
 user_registration BLOB DEFAULT NULL,
 user_editcount INTEGER UNSIGNED DEFAULT NULL,
 user_password_expires BLOB DEFAULT NULL,
 user_is_temp SMALLINT DEFAULT 0 NOT NULL
 );
INSERT INTO user (user_id, user_name, user_real_name, user_password, user_newpassword, user_newpass_time, user_email, user_touched, user_token, user_email_authenticated, user_email_token, user_email_token_expires, user_registration, user_editcount, user_password_expires, user_is_temp) VALUES (1, 'Wiki', '', ':pbkdf2:sha512:30000:64:rJy5TR83N0Clnp2jsEzHvw==:qkz6IFWWgUVyqXf6uVrwPjnNQ/QNfSIEQmZ0RbErE2gvo1bpVXF1aBWuD5UyGoIepjQ0fbqPHY5+i346byBaEA==', '', NULL, 'moalev@yandex.ru', '20240527075555', '1a269666545484ff3d0bce84a083cfc0', NULL, NULL, NULL, '20240527075240', 5, NULL, 0);
INSERT INTO user (user_id, user_name, user_real_name, user_password, user_newpassword, user_newpass_time, user_email, user_touched, user_token, user_email_authenticated, user_email_token, user_email_token_expires, user_registration, user_editcount, user_password_expires, user_is_temp) VALUES (2, 'MediaWiki default', '', '', '', NULL, '', '20240527075240', '*** INVALID ***', NULL, NULL, NULL, '20240527075240', 0, NULL, 0);

-- Таблица: user_autocreate_serial
CREATE TABLE IF NOT EXISTS "user_autocreate_serial" (
 uas_shard INTEGER UNSIGNED NOT NULL,
 uas_value INTEGER UNSIGNED NOT NULL,
 PRIMARY KEY(uas_shard)
 );

-- Таблица: user_former_groups
CREATE TABLE IF NOT EXISTS "user_former_groups" (
 ufg_user INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 ufg_group BLOB DEFAULT '' NOT NULL,
 PRIMARY KEY(ufg_user, ufg_group)
 );

-- Таблица: user_groups
CREATE TABLE IF NOT EXISTS "user_groups" (
 ug_user INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 ug_group BLOB DEFAULT '' NOT NULL,
 ug_expiry BLOB DEFAULT NULL,
 PRIMARY KEY(ug_user, ug_group)
 );
INSERT INTO user_groups (ug_user, ug_group, ug_expiry) VALUES (1, 'sysop', NULL);
INSERT INTO user_groups (ug_user, ug_group, ug_expiry) VALUES (1, 'bureaucrat', NULL);
INSERT INTO user_groups (ug_user, ug_group, ug_expiry) VALUES (1, 'interface-admin', NULL);

-- Таблица: user_newtalk
CREATE TABLE IF NOT EXISTS "user_newtalk" (
 user_id INTEGER UNSIGNED DEFAULT 0 NOT NULL,
 user_ip BLOB DEFAULT '' NOT NULL, user_last_timestamp BLOB DEFAULT NULL
 );

-- Таблица: user_properties
CREATE TABLE IF NOT EXISTS "user_properties" (
 up_user INTEGER UNSIGNED NOT NULL,
 up_property BLOB NOT NULL,
 up_value BLOB DEFAULT NULL,
 PRIMARY KEY(up_user, up_property)
 );
INSERT INTO user_properties (up_user, up_property, up_value) VALUES (1, 'rcfilters-wl-collapsed', '0');
INSERT INTO user_properties (up_user, up_property, up_value) VALUES (1, 'rcfilters-wl-saved-queries', '{"queries":{},"version":"2"}');

-- Таблица: watchlist
CREATE TABLE IF NOT EXISTS "watchlist" (
 wl_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 wl_user INTEGER UNSIGNED NOT NULL,
 wl_namespace INTEGER DEFAULT 0 NOT NULL,
 wl_title BLOB DEFAULT '' NOT NULL, wl_notificationtimestamp BLOB DEFAULT NULL
 );
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (1, 1, 0, 'Wiki', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (2, 1, 1, 'Wiki', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (3, 1, 0, 'Программа', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (4, 1, 1, 'Программа', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (5, 1, 0, 'Робот', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (6, 1, 1, 'Робот', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (7, 1, 0, 'Санкт-Петербург', NULL);
INSERT INTO watchlist (wl_id, wl_user, wl_namespace, wl_title, wl_notificationtimestamp) VALUES (8, 1, 1, 'Санкт-Петербург', NULL);

-- Таблица: watchlist_expiry
CREATE TABLE IF NOT EXISTS "watchlist_expiry" (
 we_item INTEGER UNSIGNED NOT NULL,
 we_expiry BLOB NOT NULL,
 PRIMARY KEY(we_item)
 );

-- Индекс: actor_name
CREATE UNIQUE INDEX IF NOT EXISTS actor_name ON "actor" (actor_name);

-- Индекс: actor_user
CREATE UNIQUE INDEX IF NOT EXISTS actor_user ON "actor" (actor_user);

-- Индекс: ar_actor_timestamp
CREATE INDEX IF NOT EXISTS ar_actor_timestamp ON "archive" (ar_actor, ar_timestamp);

-- Индекс: ar_name_title_timestamp
CREATE INDEX IF NOT EXISTS ar_name_title_timestamp ON "archive" (
 ar_namespace, ar_title, ar_timestamp
 );

-- Индекс: ar_revid_uniq
CREATE UNIQUE INDEX IF NOT EXISTS ar_revid_uniq ON "archive" (ar_rev_id);

-- Индекс: cat_pages
CREATE INDEX IF NOT EXISTS cat_pages ON "category" (cat_pages);

-- Индекс: cat_title
CREATE UNIQUE INDEX IF NOT EXISTS cat_title ON "category" (cat_title);

-- Индекс: cl_collation_ext
CREATE INDEX IF NOT EXISTS cl_collation_ext ON "categorylinks" (
 cl_collation, cl_to, cl_type, cl_from
 );

-- Индекс: cl_sortkey
CREATE INDEX IF NOT EXISTS cl_sortkey ON "categorylinks" (
 cl_to, cl_type, cl_sortkey, cl_from
 );

-- Индекс: cl_timestamp
CREATE INDEX IF NOT EXISTS cl_timestamp ON "categorylinks" (cl_to, cl_timestamp);

-- Индекс: comment_hash
CREATE INDEX IF NOT EXISTS comment_hash ON "comment" (comment_hash);

-- Индекс: ct_log_tag_id
CREATE UNIQUE INDEX IF NOT EXISTS ct_log_tag_id ON "change_tag" (ct_log_id, ct_tag_id);

-- Индекс: ct_rc_tag_id
CREATE UNIQUE INDEX IF NOT EXISTS ct_rc_tag_id ON "change_tag" (ct_rc_id, ct_tag_id);

-- Индекс: ct_rev_tag_id
CREATE UNIQUE INDEX IF NOT EXISTS ct_rev_tag_id ON "change_tag" (ct_rev_id, ct_tag_id);

-- Индекс: ct_tag_id_id
CREATE INDEX IF NOT EXISTS ct_tag_id_id ON "change_tag" (
 ct_tag_id, ct_rc_id, ct_rev_id, ct_log_id
 );

-- Индекс: ctd_count
CREATE INDEX IF NOT EXISTS ctd_count ON "change_tag_def" (ctd_count);

-- Индекс: ctd_name
CREATE UNIQUE INDEX IF NOT EXISTS ctd_name ON "change_tag_def" (ctd_name);

-- Индекс: ctd_user_defined
CREATE INDEX IF NOT EXISTS ctd_user_defined ON "change_tag_def" (ctd_user_defined);

-- Индекс: el_from
CREATE INDEX IF NOT EXISTS el_from ON "externallinks" (el_from);

-- Индекс: el_to_domain_index_to_path
CREATE INDEX IF NOT EXISTS el_to_domain_index_to_path ON "externallinks" (el_to_domain_index, el_to_path);

-- Индекс: exptime
CREATE INDEX IF NOT EXISTS exptime ON "objectcache" (exptime);

-- Индекс: fa_actor_timestamp
CREATE INDEX IF NOT EXISTS fa_actor_timestamp ON "filearchive" (fa_actor, fa_timestamp);

-- Индекс: fa_deleted_timestamp
CREATE INDEX IF NOT EXISTS fa_deleted_timestamp ON "filearchive" (fa_deleted_timestamp);

-- Индекс: fa_name
CREATE INDEX IF NOT EXISTS fa_name ON "filearchive" (fa_name, fa_timestamp);

-- Индекс: fa_sha1
CREATE INDEX IF NOT EXISTS fa_sha1 ON "filearchive" (fa_sha1);

-- Индекс: fa_storage_group
CREATE INDEX IF NOT EXISTS fa_storage_group ON "filearchive" (
 fa_storage_group, fa_storage_key
 );

-- Индекс: il_backlinks_namespace
CREATE INDEX IF NOT EXISTS il_backlinks_namespace ON "imagelinks" (
 il_from_namespace, il_to, il_from
 );

-- Индекс: il_to
CREATE INDEX IF NOT EXISTS il_to ON "imagelinks" (il_to, il_from);

-- Индекс: img_actor_timestamp
CREATE INDEX IF NOT EXISTS img_actor_timestamp ON "image" (img_actor, img_timestamp);

-- Индекс: img_media_mime
CREATE INDEX IF NOT EXISTS img_media_mime ON "image" (
 img_media_type, img_major_mime, img_minor_mime
 );

-- Индекс: img_sha1
CREATE INDEX IF NOT EXISTS img_sha1 ON "image" (img_sha1);

-- Индекс: img_size
CREATE INDEX IF NOT EXISTS img_size ON "image" (img_size);

-- Индекс: img_timestamp
CREATE INDEX IF NOT EXISTS img_timestamp ON "image" (img_timestamp);

-- Индекс: ipb_address_unique
CREATE UNIQUE INDEX IF NOT EXISTS ipb_address_unique ON "ipblocks" (ipb_address, ipb_user, ipb_auto);

-- Индекс: ipb_expiry
CREATE INDEX IF NOT EXISTS ipb_expiry ON "ipblocks" (ipb_expiry);

-- Индекс: ipb_parent_block_id
CREATE INDEX IF NOT EXISTS ipb_parent_block_id ON "ipblocks" (ipb_parent_block_id);

-- Индекс: ipb_range
CREATE INDEX IF NOT EXISTS ipb_range ON "ipblocks" (ipb_range_start, ipb_range_end);

-- Индекс: ipb_timestamp
CREATE INDEX IF NOT EXISTS ipb_timestamp ON "ipblocks" (ipb_timestamp);

-- Индекс: ipb_user
CREATE INDEX IF NOT EXISTS ipb_user ON "ipblocks" (ipb_user);

-- Индекс: ipc_hex_time
CREATE INDEX IF NOT EXISTS ipc_hex_time ON "ip_changes" (ipc_hex, ipc_rev_timestamp);

-- Индекс: ipc_rev_timestamp
CREATE INDEX IF NOT EXISTS ipc_rev_timestamp ON "ip_changes" (ipc_rev_timestamp);

-- Индекс: ir_type_value
CREATE INDEX IF NOT EXISTS ir_type_value ON "ipblocks_restrictions" (ir_type, ir_value);

-- Индекс: iwl_prefix_from_title
CREATE INDEX IF NOT EXISTS iwl_prefix_from_title ON "iwlinks" (iwl_prefix, iwl_from, iwl_title);

-- Индекс: iwl_prefix_title_from
CREATE INDEX IF NOT EXISTS iwl_prefix_title_from ON "iwlinks" (iwl_prefix, iwl_title, iwl_from);

-- Индекс: job_cmd
CREATE INDEX IF NOT EXISTS job_cmd ON "job" (
 job_cmd, job_namespace, job_title,
 job_params
 );

-- Индекс: job_cmd_token
CREATE INDEX IF NOT EXISTS job_cmd_token ON "job" (job_cmd, job_token, job_random);

-- Индекс: job_cmd_token_id
CREATE INDEX IF NOT EXISTS job_cmd_token_id ON "job" (job_cmd, job_token, job_id);

-- Индекс: job_sha1
CREATE INDEX IF NOT EXISTS job_sha1 ON "job" (job_sha1);

-- Индекс: job_timestamp
CREATE INDEX IF NOT EXISTS job_timestamp ON "job" (job_timestamp);

-- Индекс: ll_lang
CREATE INDEX IF NOT EXISTS ll_lang ON "langlinks" (ll_lang, ll_title);

-- Индекс: log_actor_time
CREATE INDEX IF NOT EXISTS log_actor_time ON "logging" (log_actor, log_timestamp);

-- Индекс: log_actor_type_time
CREATE INDEX IF NOT EXISTS log_actor_type_time ON "logging" (
 log_actor, log_type, log_timestamp
 );

-- Индекс: log_page_id_time
CREATE INDEX IF NOT EXISTS log_page_id_time ON "logging" (log_page, log_timestamp);

-- Индекс: log_page_time
CREATE INDEX IF NOT EXISTS log_page_time ON "logging" (
 log_namespace, log_title, log_timestamp
 );

-- Индекс: log_times
CREATE INDEX IF NOT EXISTS log_times ON "logging" (log_timestamp);

-- Индекс: log_type_action
CREATE INDEX IF NOT EXISTS log_type_action ON "logging" (
 log_type, log_action, log_timestamp
 );

-- Индекс: log_type_time
CREATE INDEX IF NOT EXISTS log_type_time ON "logging" (log_type, log_timestamp);

-- Индекс: ls_log_id
CREATE INDEX IF NOT EXISTS ls_log_id ON "log_search" (ls_log_id);

-- Индекс: lt_namespace_title
CREATE UNIQUE INDEX IF NOT EXISTS lt_namespace_title ON "linktarget" (lt_namespace, lt_title);

-- Индекс: model_name
CREATE UNIQUE INDEX IF NOT EXISTS model_name ON "content_models" (model_name);

-- Индекс: oi_actor_timestamp
CREATE INDEX IF NOT EXISTS oi_actor_timestamp ON "oldimage" (oi_actor, oi_timestamp);

-- Индекс: oi_name_archive_name
CREATE INDEX IF NOT EXISTS oi_name_archive_name ON "oldimage" (oi_name, oi_archive_name);

-- Индекс: oi_name_timestamp
CREATE INDEX IF NOT EXISTS oi_name_timestamp ON "oldimage" (oi_name, oi_timestamp);

-- Индекс: oi_sha1
CREATE INDEX IF NOT EXISTS oi_sha1 ON "oldimage" (oi_sha1);

-- Индекс: oi_timestamp
CREATE INDEX IF NOT EXISTS oi_timestamp ON "oldimage" (oi_timestamp);

-- Индекс: page_len
CREATE INDEX IF NOT EXISTS page_len ON "page" (page_len);

-- Индекс: page_name_title
CREATE UNIQUE INDEX IF NOT EXISTS page_name_title ON "page" (page_namespace, page_title);

-- Индекс: page_random
CREATE INDEX IF NOT EXISTS page_random ON "page" (page_random);

-- Индекс: page_redirect_namespace_len
CREATE INDEX IF NOT EXISTS page_redirect_namespace_len ON "page" (
 page_is_redirect, page_namespace,
 page_len
 );

-- Индекс: pl_backlinks_namespace
CREATE INDEX IF NOT EXISTS pl_backlinks_namespace ON "pagelinks" (
 pl_from_namespace, pl_namespace,
 pl_title, pl_from
 );

-- Индекс: pl_backlinks_namespace_target_id
CREATE INDEX IF NOT EXISTS pl_backlinks_namespace_target_id ON "pagelinks" (
 pl_from_namespace, pl_target_id,
 pl_from
 );

-- Индекс: pl_namespace
CREATE INDEX IF NOT EXISTS pl_namespace ON "pagelinks" (pl_namespace, pl_title, pl_from);

-- Индекс: pl_target_id
CREATE INDEX IF NOT EXISTS pl_target_id ON "pagelinks" (pl_target_id, pl_from);

-- Индекс: pp_propname_page
CREATE UNIQUE INDEX IF NOT EXISTS pp_propname_page ON "page_props" (pp_propname, pp_page);

-- Индекс: pp_propname_sortkey_page
CREATE UNIQUE INDEX IF NOT EXISTS pp_propname_sortkey_page ON "page_props" (pp_propname, pp_sortkey, pp_page);

-- Индекс: pr_cascade
CREATE INDEX IF NOT EXISTS pr_cascade ON "page_restrictions" (pr_cascade);

-- Индекс: pr_level
CREATE INDEX IF NOT EXISTS pr_level ON "page_restrictions" (pr_level);

-- Индекс: pr_pagetype
CREATE UNIQUE INDEX IF NOT EXISTS pr_pagetype ON "page_restrictions" (pr_page, pr_type);

-- Индекс: pr_typelevel
CREATE INDEX IF NOT EXISTS pr_typelevel ON "page_restrictions" (pr_type, pr_level);

-- Индекс: pt_timestamp
CREATE INDEX IF NOT EXISTS pt_timestamp ON "protected_titles" (pt_timestamp);

-- Индекс: qc_type
CREATE INDEX IF NOT EXISTS qc_type ON "querycache" (qc_type, qc_value);

-- Индекс: qcc_title
CREATE INDEX IF NOT EXISTS qcc_title ON "querycachetwo" (
 qcc_type, qcc_namespace, qcc_title
 );

-- Индекс: qcc_titletwo
CREATE INDEX IF NOT EXISTS qcc_titletwo ON "querycachetwo" (
 qcc_type, qcc_namespacetwo, qcc_titletwo
 );

-- Индекс: qcc_type
CREATE INDEX IF NOT EXISTS qcc_type ON "querycachetwo" (qcc_type, qcc_value);

-- Индекс: rc_actor
CREATE INDEX IF NOT EXISTS rc_actor ON "recentchanges" (rc_actor, rc_timestamp);

-- Индекс: rc_cur_id
CREATE INDEX IF NOT EXISTS rc_cur_id ON "recentchanges" (rc_cur_id);

-- Индекс: rc_ip
CREATE INDEX IF NOT EXISTS rc_ip ON "recentchanges" (rc_ip);

-- Индекс: rc_name_type_patrolled_timestamp
CREATE INDEX IF NOT EXISTS rc_name_type_patrolled_timestamp ON "recentchanges" (
 rc_namespace, rc_type, rc_patrolled,
 rc_timestamp
 );

-- Индекс: rc_namespace_title_timestamp
CREATE INDEX IF NOT EXISTS rc_namespace_title_timestamp ON "recentchanges" (
 rc_namespace, rc_title, rc_timestamp
 );

-- Индекс: rc_new_name_timestamp
CREATE INDEX IF NOT EXISTS rc_new_name_timestamp ON "recentchanges" (
 rc_new, rc_namespace, rc_timestamp
 );

-- Индекс: rc_ns_actor
CREATE INDEX IF NOT EXISTS rc_ns_actor ON "recentchanges" (rc_namespace, rc_actor);

-- Индекс: rc_this_oldid
CREATE INDEX IF NOT EXISTS rc_this_oldid ON "recentchanges" (rc_this_oldid);

-- Индекс: rc_timestamp
CREATE INDEX IF NOT EXISTS rc_timestamp ON "recentchanges" (rc_timestamp);

-- Индекс: rd_ns_title
CREATE INDEX IF NOT EXISTS rd_ns_title ON "redirect" (rd_namespace, rd_title, rd_from);

-- Индекс: rev_actor_timestamp
CREATE INDEX IF NOT EXISTS rev_actor_timestamp ON "revision" (rev_actor, rev_timestamp, rev_id);

-- Индекс: rev_page_actor_timestamp
CREATE INDEX IF NOT EXISTS rev_page_actor_timestamp ON "revision" (
 rev_page, rev_actor, rev_timestamp
 );

-- Индекс: rev_page_timestamp
CREATE INDEX IF NOT EXISTS rev_page_timestamp ON "revision" (rev_page, rev_timestamp);

-- Индекс: rev_timestamp
CREATE INDEX IF NOT EXISTS rev_timestamp ON "revision" (rev_timestamp);

-- Индекс: role_name
CREATE UNIQUE INDEX IF NOT EXISTS role_name ON "slot_roles" (role_name);

-- Индекс: si_key
CREATE INDEX IF NOT EXISTS si_key ON "site_identifiers" (si_key);

-- Индекс: si_site
CREATE INDEX IF NOT EXISTS si_site ON "site_identifiers" (si_site);

-- Индекс: site_domain
CREATE INDEX IF NOT EXISTS site_domain ON "sites" (site_domain);

-- Индекс: site_forward
CREATE INDEX IF NOT EXISTS site_forward ON "sites" (site_forward);

-- Индекс: site_global_key
CREATE UNIQUE INDEX IF NOT EXISTS site_global_key ON "sites" (site_global_key);

-- Индекс: site_group
CREATE INDEX IF NOT EXISTS site_group ON "sites" (site_group);

-- Индекс: site_language
CREATE INDEX IF NOT EXISTS site_language ON "sites" (site_language);

-- Индекс: site_protocol
CREATE INDEX IF NOT EXISTS site_protocol ON "sites" (site_protocol);

-- Индекс: site_source
CREATE INDEX IF NOT EXISTS site_source ON "sites" (site_source);

-- Индекс: site_type
CREATE INDEX IF NOT EXISTS site_type ON "sites" (site_type);

-- Индекс: slot_revision_origin_role
CREATE INDEX IF NOT EXISTS slot_revision_origin_role ON "slots" (
 slot_revision_id, slot_origin, slot_role_id
 );

-- Индекс: tl_backlinks_namespace_target_id
CREATE INDEX IF NOT EXISTS tl_backlinks_namespace_target_id ON "templatelinks" (
 tl_from_namespace, tl_target_id,
 tl_from
 );

-- Индекс: tl_target_id
CREATE INDEX IF NOT EXISTS tl_target_id ON "templatelinks" (tl_target_id, tl_from);

-- Индекс: ug_expiry
CREATE INDEX IF NOT EXISTS ug_expiry ON "user_groups" (ug_expiry);

-- Индекс: ug_group
CREATE INDEX IF NOT EXISTS ug_group ON "user_groups" (ug_group);

-- Индекс: un_user_id
CREATE INDEX IF NOT EXISTS un_user_id ON "user_newtalk" (user_id);

-- Индекс: un_user_ip
CREATE INDEX IF NOT EXISTS un_user_ip ON "user_newtalk" (user_ip);

-- Индекс: up_property
CREATE INDEX IF NOT EXISTS up_property ON "user_properties" (up_property);

-- Индекс: us_key
CREATE UNIQUE INDEX IF NOT EXISTS us_key ON "uploadstash" (us_key);

-- Индекс: us_timestamp
CREATE INDEX IF NOT EXISTS us_timestamp ON "uploadstash" (us_timestamp);

-- Индекс: us_user
CREATE INDEX IF NOT EXISTS us_user ON "uploadstash" (us_user);

-- Индекс: user_email
CREATE INDEX IF NOT EXISTS user_email ON "user" (user_email);

-- Индекс: user_email_token
CREATE INDEX IF NOT EXISTS user_email_token ON "user" (user_email_token);

-- Индекс: user_name
CREATE UNIQUE INDEX IF NOT EXISTS user_name ON "user" (user_name);

-- Индекс: we_expiry
CREATE INDEX IF NOT EXISTS we_expiry ON "watchlist_expiry" (we_expiry);

-- Индекс: wl_namespace_title
CREATE INDEX IF NOT EXISTS wl_namespace_title ON "watchlist" (wl_namespace, wl_title);

-- Индекс: wl_user
CREATE UNIQUE INDEX IF NOT EXISTS wl_user ON "watchlist" (wl_user, wl_namespace, wl_title);

-- Индекс: wl_user_notificationtimestamp
CREATE INDEX IF NOT EXISTS wl_user_notificationtimestamp ON "watchlist" (
 wl_user, wl_notificationtimestamp
 );

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
