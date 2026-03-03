module RuboCop
  module Cop
    module Gemspec
      def self.autoload_cop(const_name, path, department = :Gemspec)
        autoload const_name, path

        RuboCop::Cop::Registry.global.autoload("#{department}/#{const_name}", "#{name}::#{const_name}")
      end

      autoload_cop :AddRuntimeDependency, 'rubocop/cop/gemspec/add_runtime_dependency'
      autoload_cop :AttributeAssignment, 'rubocop/cop/gemspec/attribute_assignment'
      autoload_cop :DependencyVersion, 'rubocop/cop/gemspec/dependency_version'
      autoload_cop :DeprecatedAttributeAssignment, 'rubocop/cop/gemspec/deprecated_attribute_assignment'
      autoload_cop :DevelopmentDependencies, 'rubocop/cop/gemspec/development_dependencies'
      autoload_cop :DuplicatedAssignment, 'rubocop/cop/gemspec/duplicated_assignment'
      autoload_cop :OrderedDependencies, 'rubocop/cop/gemspec/ordered_dependencies'
      autoload_cop :RequireMFA, 'rubocop/cop/gemspec/require_mfa'
      autoload_cop :RequiredRubyVersion, 'rubocop/cop/gemspec/required_ruby_version'
      autoload_cop :RubyVersionGlobalsUsage, 'rubocop/cop/gemspec/ruby_version_globals_usage'
    end
  end
end
