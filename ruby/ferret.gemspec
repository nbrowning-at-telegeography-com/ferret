# -*- encoding: utf-8 -*-
# stub: ferret 0.11.9.0 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "ferret".freeze
  s.version = "0.11.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Balmain".freeze]
  s.date = "2024-07-12"
  s.description = "Ferret is a super fast, highly configurable search library.".freeze
  s.email = "dbalmain@gmail.com".freeze
  s.executables = ["ferret-browser".freeze]
  s.extensions = ["ext/extconf.rb".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "TODO".freeze, "TUTORIAL.md".freeze, "MIT-LICENSE".freeze, "ext/r_analysis.c".freeze, "ext/r_index.c".freeze, "ext/r_qparser.c".freeze, "ext/r_search.c".freeze, "ext/r_store.c".freeze, "ext/r_utils.c".freeze, "ext/ferret.c".freeze]
  s.files = ["ferret.gemspec", "CHANGELOG".freeze, "MIT-LICENSE".freeze, "README.md".freeze, "RELEASE_CHANGES".freeze, "RELEASE_NOTES".freeze, "Rakefile".freeze, "TODO".freeze, "TUTORIAL.md".freeze, "bin/ferret-browser".freeze, "ext/BZLIB_blocksort.c".freeze, "ext/BZLIB_bzlib.c".freeze, "ext/BZLIB_compress.c".freeze, "ext/BZLIB_crctable.c".freeze, "ext/BZLIB_decompress.c".freeze, "ext/BZLIB_huffman.c".freeze, "ext/BZLIB_randtable.c".freeze, "ext/STEMMER_api.c".freeze, "ext/STEMMER_libstemmer.c".freeze, "ext/STEMMER_stem_ISO_8859_1_danish.c".freeze, "ext/STEMMER_stem_ISO_8859_1_dutch.c".freeze, "ext/STEMMER_stem_ISO_8859_1_english.c".freeze, "ext/STEMMER_stem_ISO_8859_1_finnish.c".freeze, "ext/STEMMER_stem_ISO_8859_1_french.c".freeze, "ext/STEMMER_stem_ISO_8859_1_german.c".freeze, "ext/STEMMER_stem_ISO_8859_1_hungarian.c".freeze, "ext/STEMMER_stem_ISO_8859_1_italian.c".freeze, "ext/STEMMER_stem_ISO_8859_1_norwegian.c".freeze, "ext/STEMMER_stem_ISO_8859_1_porter.c".freeze, "ext/STEMMER_stem_ISO_8859_1_portuguese.c".freeze, "ext/STEMMER_stem_ISO_8859_1_spanish.c".freeze, "ext/STEMMER_stem_ISO_8859_1_swedish.c".freeze, "ext/STEMMER_stem_ISO_8859_2_romanian.c".freeze, "ext/STEMMER_stem_KOI8_R_russian.c".freeze, "ext/STEMMER_stem_UTF_8_danish.c".freeze, "ext/STEMMER_stem_UTF_8_dutch.c".freeze, "ext/STEMMER_stem_UTF_8_english.c".freeze, "ext/STEMMER_stem_UTF_8_finnish.c".freeze, "ext/STEMMER_stem_UTF_8_french.c".freeze, "ext/STEMMER_stem_UTF_8_german.c".freeze, "ext/STEMMER_stem_UTF_8_hungarian.c".freeze, "ext/STEMMER_stem_UTF_8_italian.c".freeze, "ext/STEMMER_stem_UTF_8_norwegian.c".freeze, "ext/STEMMER_stem_UTF_8_porter.c".freeze, "ext/STEMMER_stem_UTF_8_portuguese.c".freeze, "ext/STEMMER_stem_UTF_8_romanian.c".freeze, "ext/STEMMER_stem_UTF_8_russian.c".freeze, "ext/STEMMER_stem_UTF_8_spanish.c".freeze, "ext/STEMMER_stem_UTF_8_swedish.c".freeze, "ext/STEMMER_stem_UTF_8_turkish.c".freeze, "ext/STEMMER_utilities.c".freeze, "ext/analysis.c".freeze, "ext/analysis.h".freeze, "ext/api.h".freeze, "ext/array.c".freeze, "ext/array.h".freeze, "ext/bitvector.c".freeze, "ext/bitvector.h".freeze, "ext/bzlib.h".freeze, "ext/bzlib_private.h".freeze, "ext/compound_io.c".freeze, "ext/config.h".freeze, "ext/document.c".freeze, "ext/document.h".freeze, "ext/except.c".freeze, "ext/except.h".freeze, "ext/extconf.rb".freeze, "ext/ferret.c".freeze, "ext/ferret.h".freeze, "ext/field_index.c".freeze, "ext/field_index.h".freeze, "ext/filter.c".freeze, "ext/fs_store.c".freeze, "ext/global.c".freeze, "ext/global.h".freeze, "ext/hash.c".freeze, "ext/hash.h".freeze, "ext/hashset.c".freeze, "ext/hashset.h".freeze, "ext/header.h".freeze, "ext/helper.c".freeze, "ext/helper.h".freeze, "ext/index.c".freeze, "ext/index.h".freeze, "ext/internal.h".freeze, "ext/lang.c".freeze, "ext/lang.h".freeze, "ext/libstemmer.h".freeze, "ext/mempool.c".freeze, "ext/mempool.h".freeze, "ext/modules.h".freeze, "ext/multimapper.c".freeze, "ext/multimapper.h".freeze, "ext/posh.c".freeze, "ext/posh.h".freeze, "ext/priorityqueue.c".freeze, "ext/priorityqueue.h".freeze, "ext/q_boolean.c".freeze, "ext/q_const_score.c".freeze, "ext/q_filtered_query.c".freeze, "ext/q_fuzzy.c".freeze, "ext/q_match_all.c".freeze, "ext/q_multi_term.c".freeze, "ext/q_parser.c".freeze, "ext/q_phrase.c".freeze, "ext/q_prefix.c".freeze, "ext/q_range.c".freeze, "ext/q_span.c".freeze, "ext/q_term.c".freeze, "ext/q_wildcard.c".freeze, "ext/r_analysis.c".freeze, "ext/r_index.c".freeze, "ext/r_qparser.c".freeze, "ext/r_search.c".freeze, "ext/r_store.c".freeze, "ext/r_utils.c".freeze, "ext/ram_store.c".freeze, "ext/scanner.c".freeze, "ext/scanner.h".freeze, "ext/scanner_mb.c".freeze, "ext/scanner_utf8.c".freeze, "ext/search.c".freeze, "ext/search.h".freeze, "ext/similarity.c".freeze, "ext/similarity.h".freeze, "ext/sort.c".freeze, "ext/stem_ISO_8859_1_danish.h".freeze, "ext/stem_ISO_8859_1_dutch.h".freeze, "ext/stem_ISO_8859_1_english.h".freeze, "ext/stem_ISO_8859_1_finnish.h".freeze, "ext/stem_ISO_8859_1_french.h".freeze, "ext/stem_ISO_8859_1_german.h".freeze, "ext/stem_ISO_8859_1_hungarian.h".freeze, "ext/stem_ISO_8859_1_italian.h".freeze, "ext/stem_ISO_8859_1_norwegian.h".freeze, "ext/stem_ISO_8859_1_porter.h".freeze, "ext/stem_ISO_8859_1_portuguese.h".freeze, "ext/stem_ISO_8859_1_spanish.h".freeze, "ext/stem_ISO_8859_1_swedish.h".freeze, "ext/stem_ISO_8859_2_romanian.h".freeze, "ext/stem_KOI8_R_russian.h".freeze, "ext/stem_UTF_8_danish.h".freeze, "ext/stem_UTF_8_dutch.h".freeze, "ext/stem_UTF_8_english.h".freeze, "ext/stem_UTF_8_finnish.h".freeze, "ext/stem_UTF_8_french.h".freeze, "ext/stem_UTF_8_german.h".freeze, "ext/stem_UTF_8_hungarian.h".freeze, "ext/stem_UTF_8_italian.h".freeze, "ext/stem_UTF_8_norwegian.h".freeze, "ext/stem_UTF_8_porter.h".freeze, "ext/stem_UTF_8_portuguese.h".freeze, "ext/stem_UTF_8_romanian.h".freeze, "ext/stem_UTF_8_russian.h".freeze, "ext/stem_UTF_8_spanish.h".freeze, "ext/stem_UTF_8_swedish.h".freeze, "ext/stem_UTF_8_turkish.h".freeze, "ext/stopwords.c".freeze, "ext/store.c".freeze, "ext/store.h".freeze, "ext/symbol.c".freeze, "ext/symbol.h".freeze, "ext/term_vectors.c".freeze, "ext/threading.h".freeze, "ext/win32.h".freeze, "ferret_valgrind.supp".freeze, "lib/ferret.rb".freeze, "lib/ferret/browser.rb".freeze, "lib/ferret/browser/s/global.js".freeze, "lib/ferret/browser/s/style.css".freeze, "lib/ferret/browser/views/document/list.rhtml".freeze, "lib/ferret/browser/views/document/show.rhtml".freeze, "lib/ferret/browser/views/error/index.rhtml".freeze, "lib/ferret/browser/views/help/index.rhtml".freeze, "lib/ferret/browser/views/home/index.rhtml".freeze, "lib/ferret/browser/views/layout.rhtml".freeze, "lib/ferret/browser/views/term-vector/index.rhtml".freeze, "lib/ferret/browser/views/term/index.rhtml".freeze, "lib/ferret/browser/views/term/termdocs.rhtml".freeze, "lib/ferret/browser/webrick.rb".freeze, "lib/ferret/document.rb".freeze, "lib/ferret/field_infos.rb".freeze, "lib/ferret/field_symbol.rb".freeze, "lib/ferret/index.rb".freeze, "lib/ferret/number_tools.rb".freeze, "lib/ferret/version.rb".freeze, "test/long_running/largefile/tc_largefile.rb".freeze, "test/test_all.rb".freeze, "test/test_helper.rb".freeze, "test/test_installed.rb".freeze, "test/threading/number_to_spoken.rb".freeze, "test/threading/thread_safety_index_test.rb".freeze, "test/threading/thread_safety_read_write_test.rb".freeze, "test/threading/thread_safety_test.rb".freeze, "test/unit/analysis/tc_analyzer.rb".freeze, "test/unit/analysis/tc_token_stream.rb".freeze, "test/unit/index/tc_index.rb".freeze, "test/unit/index/tc_index_reader.rb".freeze, "test/unit/index/tc_index_writer.rb".freeze, "test/unit/index/th_doc.rb".freeze, "test/unit/query_parser/tc_query_parser.rb".freeze, "test/unit/search/tc_filter.rb".freeze, "test/unit/search/tc_fuzzy_query.rb".freeze, "test/unit/search/tc_index_searcher.rb".freeze, "test/unit/search/tc_multi_searcher.rb".freeze, "test/unit/search/tc_multiple_search_requests.rb".freeze, "test/unit/search/tc_search_and_sort.rb".freeze, "test/unit/search/tc_sort.rb".freeze, "test/unit/search/tc_sort_field.rb".freeze, "test/unit/search/tc_spans.rb".freeze, "test/unit/search/tm_searcher.rb".freeze, "test/unit/store/tc_fs_store.rb".freeze, "test/unit/store/tc_ram_store.rb".freeze, "test/unit/store/tm_store.rb".freeze, "test/unit/store/tm_store_lock.rb".freeze, "test/unit/tc_document.rb".freeze, "test/unit/tc_field_symbol.rb".freeze, "test/unit/ts_analysis.rb".freeze, "test/unit/ts_index.rb".freeze, "test/unit/ts_largefile.rb".freeze, "test/unit/ts_query_parser.rb".freeze, "test/unit/ts_search.rb".freeze, "test/unit/ts_store.rb".freeze, "test/unit/ts_utils.rb".freeze, "test/unit/utils/tc_bit_vector.rb".freeze, "test/unit/utils/tc_number_tools.rb".freeze, "test/unit/utils/tc_priority_queue.rb".freeze, "test/utils/content_generator.rb".freeze]
  s.homepage = "http://github.com/jkraemer/ferret".freeze
  s.rdoc_options = ["--title".freeze, "Ferret -- Ruby Search Library".freeze, "--main".freeze, "README".freeze, "--line-numbers".freeze, "TUTORIAL".freeze, "TODO".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Ruby indexing library.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
