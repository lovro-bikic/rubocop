module RuboCop
  module Cop
    module Security
      def self.autoload_cop(const_name, path, department = :Security)
        autoload const_name, path

        RuboCop::Cop::Registry.global.autoload("#{department}/#{const_name}", "#{name}::#{const_name}")
      end

      autoload_cop :CompoundHash, 'rubocop/cop/security/compound_hash'
      autoload_cop :Eval, 'rubocop/cop/security/eval'
      autoload_cop :IoMethods, 'rubocop/cop/security/io_methods'
      autoload_cop :JSONLoad, 'rubocop/cop/security/json_load'
      autoload_cop :MarshalLoad, 'rubocop/cop/security/marshal_load'
      autoload_cop :Open, 'rubocop/cop/security/open'
      autoload_cop :YAMLLoad, 'rubocop/cop/security/yaml_load'
    end
  end
end