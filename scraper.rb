#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/senegal-national-assembly', column: 'wikiname')
ids = EveryPolitician::Wikidata.wdq('claim[39:20757571]')

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { fr: names })

