require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # :headless_chrome #=> No brosser will open
  driven_by :selenium, using: :chrome, screen_size: [ 1400, 1400 ]
  include Devise::Test::IntegrationHelpers # To use sign in method
end
