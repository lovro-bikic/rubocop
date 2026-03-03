module RuboCop
  module Cop
    module Naming
      def self.autoload_cop(const_name, path, department = :Naming)
        autoload const_name, path

        RuboCop::Cop::Registry.global.autoload("#{department}/#{const_name}", "#{name}::#{const_name}")
      end

      autoload_cop :AccessorMethodName, 'rubocop/cop/naming/accessor_method_name'
      autoload_cop :AsciiIdentifiers, 'rubocop/cop/naming/ascii_identifiers'
      autoload_cop :BlockForwarding, 'rubocop/cop/naming/block_forwarding'
      autoload_cop :BlockParameterName, 'rubocop/cop/naming/block_parameter_name'
      autoload_cop :ClassAndModuleCamelCase, 'rubocop/cop/naming/class_and_module_camel_case'
      autoload_cop :ConstantName, 'rubocop/cop/naming/constant_name'
      autoload_cop :FileName, 'rubocop/cop/naming/file_name'
      autoload_cop :HeredocDelimiterCase, 'rubocop/cop/naming/heredoc_delimiter_case'
      autoload_cop :HeredocDelimiterNaming, 'rubocop/cop/naming/heredoc_delimiter_naming'
      autoload_cop :InclusiveLanguage, 'rubocop/cop/naming/inclusive_language'
      autoload_cop :MemoizedInstanceVariableName, 'rubocop/cop/naming/memoized_instance_variable_name'
      autoload_cop :MethodName, 'rubocop/cop/naming/method_name'
      autoload_cop :MethodParameterName, 'rubocop/cop/naming/method_parameter_name'
      autoload_cop :BinaryOperatorParameterName, 'rubocop/cop/naming/binary_operator_parameter_name'
      autoload_cop :PredicateMethod, 'rubocop/cop/naming/predicate_method'
      autoload_cop :PredicatePrefix, 'rubocop/cop/naming/predicate_prefix'
      autoload_cop :RescuedExceptionsVariableName, 'rubocop/cop/naming/rescued_exceptions_variable_name'
      autoload_cop :VariableName, 'rubocop/cop/naming/variable_name'
      autoload_cop :VariableNumber, 'rubocop/cop/naming/variable_number'
    end
  end
end
