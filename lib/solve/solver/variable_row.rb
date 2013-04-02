module Solve
  class Solver
    # @author Andrew Garson <agarson@riotgames.com, andrew.garson@gmail.com>
    # @author Jamie Winsor <jwinsor@riotgames.com, jamie@vialstudios.com>
    class VariableRow
      attr_reader :artifact
      attr_reader :value
      attr_reader :sources

      # @param [String] artifact
      # @param [String, Symbol] source
      def initialize(artifact, source)
        @artifact = artifact
        @value = nil
        @sources = Array(source)
      end

      # @param [String, Symbol] source
      def add_source(source)
        @sources << source
      end

      def last_source
        @sources.last
      end

      def bind(value)
        @value = value
      end

      def unbind
        @value = nil
      end

      def bound?
        !@value.nil?
      end

      # @param [String, Symbol] source
      def remove_source(source)
        @sources.delete(source)
      end
    end
  end
end
