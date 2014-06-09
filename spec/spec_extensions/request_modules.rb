RequestSpec = Minitest::SharedExamples.new do

  before do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
