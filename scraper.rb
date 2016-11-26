#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/senegal-national-assembly', column: 'wikiname')

sparq = 'SELECT ?item WHERE { ?item wdt:P39 wd:Q20757571 . }'
ids = EveryPolitician::Wikidata.sparql(sparq)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { fr: names })
