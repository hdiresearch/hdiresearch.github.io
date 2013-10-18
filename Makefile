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

RECESS = recess --compile
COFFEE = coffee
JEKYLL = jekyll --trace

COFFEES = $(notdir $(wildcard _coffee/*.coffee))
JSS = $(patsubst %.coffee,js/%.js,$(COFFEES))

site: css js papers/papers.json
	$(JEKYLL) build

clean:
	$(RM) -r _site css/screen.css
	$(RM) $(JSS) $(wildcard _coffee/*.js)

css: css/screen.css
css/%.css: _less/%.less
	$(RECESS) $< >| $@

js: $(JSS)
js/%.js: _coffee/%.coffee
	$(COFFEE) -c -o js $<

test: css js
	$(JEKYLL) serve --watch
