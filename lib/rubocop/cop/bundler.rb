module RuboCop
  module Cop
    module Bundler
      def self.autoload_cop(const_name, path, department = :Bundler)
        autoload const_name, path

        RuboCop::Cop::Registry.global.autoload("#{department}/#{const_name}", "#{name}::#{const_name}")
      end

      autoload_cop :DuplicatedGem, 'rubocop/cop/bundler/duplicated_gem'
      autoload_cop :DuplicatedGroup, 'rubocop/cop/bundler/duplicated_group'
      autoload_cop :GemComment, 'rubocop/cop/bundler/gem_comment'
      autoload_cop :GemFilename, 'rubocop/cop/bundler/gem_filename'
      autoload_cop :GemVersion, 'rubocop/cop/bundler/gem_version'
      autoload_cop :InsecureProtocolSource, 'rubocop/cop/bundler/insecure_protocol_source'
      autoload_cop :OrderedGems, 'rubocop/cop/bundler/ordered_gems'
    end
  end
end
