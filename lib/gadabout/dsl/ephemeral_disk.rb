module Gadabout
  module DSL
    class EphemeralDisk < Base
      def initialize
        @size = nil
        @migrate = false
        @sticky = false
      end

      def size(size)
        @size = size
      end

      def migrate(migrate)
        @migrate = migrate
      end

      def sticky(sticky)
        @sticky = sticky
      end
    end
  end
end
