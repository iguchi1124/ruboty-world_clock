module Ruboty
  module Actions
    class WorldClockList < Base
      def call
        if timezones.present?
          message.reply("```\n#{timezones.join("\n")}\n```")
        else
          message.reply('Not found timezones.')
        end
      end

      private

      def timezones
        ActiveSupport::TimeZone.all.map(&:name).select { |tz| tz =~ /#{message[:zone]}/ }
      end
    end
  end
end
