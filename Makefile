# Copyright (C) 2012 Richard Mortier <mort@cantab.net>.
# All Rights Reserved.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,
# USA.

.PHONY: site clean css js test

LESS = recess --compile \
	--noOverqualifying false \
	--strictPropertyOrder false \
	--noUniversalSelectors false
LESS = lessc -x --clean-css

COFFEE = coffee
JEKYLL = jekyll
PORT ?= 4000

COFFEES = $(notdir $(wildcard _coffee/*.coffee))
JSS = $(patsubst %.coffee,js/%.js,$(COFFEES))

LESSS = $(wildcard _less/*.less)
CSSS = $(patsubst _less/%.less,css/%.css,$(LESSS))

site: css js
	$(JEKYLL) build --trace

clean:
	$(RM) -r _site
	$(RM) $(JSS) $(wildcard _coffee/*.js) $(CSSS)

css: $(CSSS)
css/%.css: _less/%.less
	$(LESS) $< >| $@

js: $(JSS)
js/%.js: _coffee/%.coffee
	$(COFFEE) -c -o js $<

test: css js
	$(JEKYLL) serve --port $(PORT) --watch --trace
