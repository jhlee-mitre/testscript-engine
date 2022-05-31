require 'pry-nav' # TODO: Remove
require_relative './TestScriptEngine'
require './TestScriptRunnable' # TODO: Remove

default_engine = TestScriptEngine.new 'https://api.logicahealth.org/TestScriptEngine/open' #'http://hapi.fhir.org/baseR4'
#default_engine.load_scripts
default_engine.load_scripts(nil, 'vread_test_script.json')
default_engine.make_runnables
default_engine.execute_runnables
default_engine.write_reports

#default_engine.generate_runnables
# default_engine.execute(FHIR::Client.new('http://hapi.fhir.org/baseR4'))