module Ruboty
  module Handlers
    class Hash < Base
      NAMESPACE = "hash"

      on(
        /hash (?<from>.+?) -> (?<to>.+)\z/m,
        description: "Create alias message",
        name: "create",
      )

      def create(message)
        message.reply("Registered hash: #{from} -> #{to}")
      end

      private

      def prefix
        Ruboty::Action.prefix_pattern(robot.name)
      end
    end
  end
end
