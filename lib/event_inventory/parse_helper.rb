module EventInventory
  module ParseHelper
    def self.included(base)
      base.class_eval do
        include SAXMachine
      end

      base.extend(ClassMethods)
    end

    module ClassMethods
      include FormatHelper

      def element(name, options={})
        if options[:value] && !options[:force]
          options[:value] = format_key(options[:value])
        end

        super(name, options)
      end

      def elements(name, options={})
        if options[:value] && !options[:force]
          options[:value] = format_key(options[:value])
        end

        super(name, options)
      end
    end
  end
end
