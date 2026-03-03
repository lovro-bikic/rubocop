module RuboCop
  module Cop
    module Migration
      def self.autoload_cop(const_name, path, department = :Migration)
        autoload const_name, path

        RuboCop::Cop::Registry.global.autoload("#{department}/#{const_name}", "#{name}::#{const_name}")
      end

      autoload_cop :DepartmentName, 'rubocop/cop/migration/department_name'
    end
  end
end