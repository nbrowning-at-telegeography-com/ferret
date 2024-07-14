require 'rake'
require 'rake/clean'
require 'rubygems/package_task'
require 'rdoc/task'
require 'rake/testtask'

$:. << 'lib'
require 'ferret/version'

spec = Gem::Specification.new do |s|

  #### Basic information.
  s.name = 'ferret'
  s.version = Ferret::VERSION
  s.summary = "Ruby indexing library."
  s.description = "Ferret is a super fast, highly configurable search library."
  
  EXT_SRC = FileList["../c/src/*.[ch]", "../c/include/*.h",
                     "../c/lib/bzlib/*.[ch]",
                     "../c/lib/libstemmer_c/src_c/*.[ch]",
                     "../c/lib/libstemmer_c/runtime/*.[ch]",
                     "../c/lib/libstemmer_c/libstemmer/*.[ch]",
                     "../c/lib/libstemmer_c/include/libstemmer.[h]"]
  EXT_SRC.exclude('../c/**/ind.[ch]',
                  '../c/**/symbol.[ch]',
                  '../c/include/threading.h',
                  '../c/include/scanner.h',
                  '../c/include/internal.h',
                  '../c/src/lang.c',
                  '../c/include/lang.h')

  EXT_SRC_MAP = {}
  EXT_SRC_DEST = EXT_SRC.map do |fn|
    ext_fn = File.join("ext", File.basename(fn))
    if fn =~ /.c$/ and fn =~ /(bzlib|stemmer)/
      prefix = $1.upcase
      ext_fn.gsub!(/ext\//, "ext/#{prefix}_")
    end
    EXT_SRC_MAP[fn] = ext_fn
  end
  SRC = FileList["ext/*.[ch]", EXT_SRC_DEST, 'ext/internal.h'].uniq
  
  PKG_FILES = FileList[
    '[-A-Z]*',
    'lib/**/*.rb',
    'lib/**/*.rhtml',
    'lib/**/*.css',
    'lib/**/*.js',
    'test/**/*.rb',
    'test/**/wordfile',
    'rake_utils/**/*.rb',
    'Rakefile',
    SRC
  ]
  
  #### Dependencies and requirements.
  s.add_development_dependency('rake')
  s.files = PKG_FILES.to_a
  s.extensions << "ext/extconf.rb"
  s.require_path = 'lib'
  s.bindir = 'bin'
  s.executables = ['ferret-browser']
  s.default_executable = 'ferret-browser'

  #### Author and project details.
  s.author = "David Balmain"
  s.email = "dbalmain@gmail.com"
  #s.homepage = "http://ferret.davebalmain.com/trac"
  s.homepage = "http://github.com/jkraemer/ferret"
  s.rubyforge_project = "ferret"

  s.has_rdoc = true
  # s.extra_rdoc_files = $rd.rdoc_files.reject { |fn| fn =~ /\.rb$/ }.to_a
  s.rdoc_options <<
    '--title' <<  'Ferret -- Ruby Search Library' <<
    '--main' << 'README' << '--line-numbers' <<
    'TUTORIAL' << 'TODO'
  s.platform = Gem::Platform::RUBY
end

package_task = Gem::PackageTask.new(spec) do |pkg|
  unless windows
    pkg.need_zip = true
    pkg.need_tar = true
  end
end