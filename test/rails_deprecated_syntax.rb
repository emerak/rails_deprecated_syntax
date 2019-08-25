require 'minitest/autorun'
require 'rails_deprecated_syntax'

class RailsDeprecatedSyntax < Minitest::Test
  def test_english_hello
    assert_equal "hello world",
      RailsDeprecatedSyntax.check_deprecations
  end
end
