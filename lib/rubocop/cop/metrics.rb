module RuboCop
  module Cop
    module Metrics
      def self.autoload_cop(const_name, path, department = :Metrics)
        autoload const_name, path

        RuboCop::Cop::Registry.global.autoload("#{department}/#{const_name}", "#{name}::#{const_name}")
      end

      module Utils
        autoload :RepeatedCsendDiscount, 'rubocop/cop/metrics/utils/repeated_csend_discount'
        autoload :RepeatedAttributeDiscount, 'rubocop/cop/metrics/utils/repeated_attribute_discount'
        autoload :IteratingBlock, 'rubocop/cop/metrics/utils/iterating_block'
        autoload :AbcSizeCalculator, 'rubocop/cop/metrics/utils/abc_size_calculator'
        autoload :CodeLengthCalculator, 'rubocop/cop/metrics/utils/code_length_calculator'
      end

      autoload_cop :CyclomaticComplexity, 'rubocop/cop/metrics/cyclomatic_complexity'
      autoload_cop :AbcSize, 'rubocop/cop/metrics/abc_size'
      autoload_cop :BlockLength, 'rubocop/cop/metrics/block_length'
      autoload_cop :BlockNesting, 'rubocop/cop/metrics/block_nesting'
      autoload_cop :ClassLength, 'rubocop/cop/metrics/class_length'
      autoload_cop :CollectionLiteralLength, 'rubocop/cop/metrics/collection_literal_length'
      autoload_cop :MethodLength, 'rubocop/cop/metrics/method_length'
      autoload_cop :ModuleLength, 'rubocop/cop/metrics/module_length'
      autoload_cop :ParameterLists, 'rubocop/cop/metrics/parameter_lists'
      autoload_cop :PerceivedComplexity, 'rubocop/cop/metrics/perceived_complexity'
    end
  end
end
