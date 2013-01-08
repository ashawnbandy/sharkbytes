guard 'spork', rspec_env: { 'RAILS_ENV' => 'test' }, cucumber: false, test_unit: false do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb')
  watch('test/test_helper.rb')
end


guard 'rspec', version: 2, cli: '--drb -f d' do
  watch(%r{^spec/}) {"spec"}
  watch(%r{^app/}) {"spec"}
  watch('config/routes.rb') {"spec"}
end

