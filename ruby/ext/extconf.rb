# extconf.rb for Ferret extensions
if (/mswin/ =~ RUBY_PLATFORM) and ENV['make'].nil?
  require 'mkmf'
  $LIBS += " msvcprt.lib"
  create_makefile("ferret_ext")
elsif ENV['FERRET_DEV']
  require 'mkmf'
  $CFLAGS = " -g -Wall -fno-stack-protector -fno-common -D_FILE_OFFSET_BITS=64 -D_XOPEN_SOURCE=500"
  create_makefile("ferret_ext")
else
  require 'mkmf'
  if (/^arm64-darwin/ =~ RUBY_PLATFORM)
    $CFLAGS += " -Wall -D_FILE_OFFSET_BITS=64 -D_XOPEN_SOURCE=500 -Wno-incompatible-pointer-types"
  else
    $CFLAGS += " -Wall -D_FILE_OFFSET_BITS=64 -D_XOPEN_SOURCE=500"
  end
  create_makefile("ferret_ext")
end
