class RailsDeprecatedSyntax

  # DEPRECATIONS illustrates wich methods had been deprecated
  # see more on https=>//edgeguides.rubyonrails.org/5_0_release_notes.html
  DEPRECATIONS = {
    'config.static_cache_control'=> 'Deprecated config.static_cache_control in favor of config.public_file_server.headers',
    'config.serve_static_files'=> 'Deprecated config.serve_static_files in favor of config.public_file_server.enabled',
    '_filter'=> 'Deprecated all *_filter callbacks in favor of *_action callbacks',
    '_via_redirect'=> 'Deprecated *_via_redirect integration test methods. Use follow_redirect! manually after the request call for the same behavior',
    'skip_action_callback'=> 'Deprecated AbstractController#skip_action_callback in favor of individual skip_callback methods.',
    'render[[:space:]]nothing'=> 'Deprecated :nothing option for render method',
    'render[[:space:]]\:nothing'=> 'Deprecated :nothing option for render method',
    'redirect_to[[:space:]]:back'=> 'Deprecated redirect_to :back in favor of redirect_back',
    'table_exists?'=> 'Deprecated table_exists? - The #table_exists? method would check both tables and views.',
    'add_on_empty'=> 'Deprecated ActiveModel::Errors#add_on_empty and ActiveModel::Errors#add_on_blank with no replacement.',
    'add_on_blank'=> 'Deprecated ActiveModel::Errors#add_on_empty and ActiveModel::Errors#add_on_blank with no replacement.',
    'MissingSourceFile'=> 'Deprecated MissingSourceFile in favor of LoadError',
    'alias_method_chain'=> 'Deprecated alias_method_chain in favour of Module#prepend introduced in Ruby 2.0',
  }.freeze

  @report = ''

  def self.check_deprecations(path)
    path = path ? " -- #{path}" : '.'

    DEPRECATIONS.map do |k, v|
      result = `git grep -nr #{k} #{path}`
      next if result.empty?

      @report.concat("---------------------------------------------------------------------\n")
      @report.concat("#{v}\n")
      @report.concat("#{result}\n")
    end

    @report
  end

  def self.show_deprecations(path)
    puts self.check_deprecations(path)
  end
end
