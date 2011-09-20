module ActiveSupport::Inflector
  
  # Parameterize "Foo's and Charles's bar" into "foos-and-charles-bar"
  # instead of into "foo-s-and-charles-s-bar".
  def parameterize_with_apostrophe_removal(string, sep = '-')
    string = string.dup
    string.gsub!(%r{s's\b}i, 's')
    string.gsub!(%{'}, "")
    parameterize_without_apostrophe_removal(string, sep)
  end
  alias_method_chain :parameterize, :apostrophe_removal
  
end
