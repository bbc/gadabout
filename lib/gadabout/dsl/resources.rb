module Gadabout
  module DSL
    class Resources < Base
      def initialize
        @cpu = nil
        @iops = nil
        @memory_m_b = nil
        @networks = []
      end

      def network(&block)
        n = Network.new

        n.instance_eval &block

        @networks << n
      end

      def cpu(cpu)
        @cpu = cpu
      end

      def memory(memory)
        @memory_m_b = memory
      end

      def iops(iops)
        @iops = iops
      end
    end
  end
end
