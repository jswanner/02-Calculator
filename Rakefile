require 'rake'
require 'rake/clean'

# Configuration
START_MODULE = "calc"
TEST_MODULE = "calc_tests"
MNESIA_DIR = "/tmp"


# No Need to change
PWD = `pwd`.strip
INCLUDE = "include"
ERLC_FLAGS = "-I#{INCLUDE} +warn_unused_vars +warn_unused_import"

SRC = FileList['src/**/*.erl']
OBJ = SRC.pathmap("%{src,ebin}X.beam")
CLEAN.include(['**/*.dump'])
CLOBBER.include(['**/*.beam'])

directory 'ebin'

rule ".beam" =>  ["%{ebin,src}X.erl"] do |t|
  sh "erlc -pa ebin -W #{ERLC_FLAGS} -o ebin #{t.source}"
end

desc "Compile all"
task :compile => ['ebin'] + OBJ

desc "Open up a shell"
task :shell => [:compile] do
  sh("erl -sname #{START_MODULE} -pa #{PWD}/ebin")
end

desc "Get the solution"
task :run => [:compile] do
  sh("erl -noshell -pa #{PWD}/ebin -s #{START_MODULE} solution -s init stop")
end

desc "Run Unit Tests" 
task :test => [:compile] do
  sh("erl -noshell -pa #{PWD}/ebin -s #{TEST_MODULE} test -s init stop")
end

desc "Generate Documentation"
task :doc do
  sh("cd doc && erl -noshell -run edoc files ../#{SRC.join(" ../")} -run init stop")
end

task :default => :run
