module Gadabout
  module DSL
    class Vault < Base
      def initialize
        @change_signal = nil
        @change_mode = nil
        @env = nil
        @policies = []
      end

      def change_signal(source)
        @change_signal = source
      end

      def change_mode(change_mode)
        @change_mode = change_mode
      end

      def policy(policy)
        @policies.push(policy)
      end

      def env(env)
        @env = env
      end
    end
  end
end
