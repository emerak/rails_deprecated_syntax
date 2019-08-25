# rails_deprecated_syntax
Basic syntax deprecation checker for applications wanting to update to Rails 5.0

## Disclaimer: This gem does not change any syntax for you, it only tells you what _should_ be changed

### How to use it

Install it in your project

```
  gem install rails_deprecated_syntax
```

Create a Rake task
```
  require 'rails_deprecated_syntax'
  task :check_deprecations do
    RailsDeprecatedSyntax.check_deprecations
  end
```

Call the rake task in a terminal
```
  rake check_deprecations
```
