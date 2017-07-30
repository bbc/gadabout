module Gadabout
  module DSL
    class Template < Base
      def initialize
        @source_path = nil
        @dest_path = nil
        @embedded_tmpl = nil
        @change_mode = nil
        @change_signal = nil
        @splay = nil
      end

      def source_path(source_path)
        @source_path = source_path
      end

      def dest_path(dest_path)
        @dest_path = dest_path
      end

      def embedded_tmpl(embedded_tmpl)
        @embedded_tmpl = embedded_tmpl
      end

      def change_mode(change_mode)
        @change_mode = change_mode
      end

      def change_signal(change_signal)
        @change_signal = change_signal
      end

      def splay(splay)
        @splay = splay
      end
    end
  end
end
