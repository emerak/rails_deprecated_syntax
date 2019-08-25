require 'minitest/autorun'
require 'rails_deprecated_syntax'
require 'pry'

class RailsDeprecatedSyntaxTest < Minitest::Test
  def test_deprecated_syntax_render_nothing
    result = RailsDeprecatedSyntax.check_deprecations('test/support/render_nothing.txt')

    assert_match(/render_nothing.txt:1:render :nothing/, result)
  end

  def test_deprecated_syntax_filters
    result = RailsDeprecatedSyntax.check_deprecations('test/support/filters.txt')

    assert_match(/filters.txt:1:before_filter :foo/, result)
    assert_match(/filters.txt:2:after_filter :foo/, result)
    assert_match(/filters.txt:3:around_filter :foo/, result)
  end

  def test_deprecated_syntax_redirect_back
    result = RailsDeprecatedSyntax.check_deprecations('test/support/redirect_back.txt')

    assert_match(/redirect_back.txt:1:redirect_to :back/, result)
  end
end
