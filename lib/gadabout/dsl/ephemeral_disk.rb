module Gadabout
  module DSL
    class EphemeralDisk < Base
      def initialize
        @size_m_b = nil
        @migrate = false
        @sticky = false
      end

      def size(size)
        @size_m_b = size
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
