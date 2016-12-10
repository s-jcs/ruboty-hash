module Ruboty
  module Handlers
    class Hash < Base
      NAMESPACE = "hash"

      on(
        /save hash salt (?<salt_key>.+?)\z/m,
        description: "Create alias messag",
        name: "save_hash_salt",
      )

      def save_hash_salt(message)
        message.reply("Registered salk_key: #{salt_key}")
      end

      private

      def prefix
        Ruboty::Action.prefix_pattern(robot.name)
      end
    end
  end
end
