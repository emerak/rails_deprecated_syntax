require 'rails_deprecated_syntax/deprecated_syntax'

module RailsDeprecatedSyntax
  class Cli
    def self.start(path)
      ::DeprecatedSyntax.show_deprecations(path)
    end
  end
end
