module Cucumber
  module Formatter
    class StoreHtml < Ast::Visitor
      def initialize(step_mother, io, options)
        super(step_mother)
      end
    end
  end
end
