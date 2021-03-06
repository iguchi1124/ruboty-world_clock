module Ruboty
  module Actions
    class WorldClock < Base
      def call
        if timezone.present?
          message.reply(Time.now.in_time_zone(timezone).strftime('%Y-%m-%d %H:%M:%S'))
        else
          message.reply("Not found the timezone: \"#{message[:zone]}\".")
        end
      end

      private

      def timezone
        ActiveSupport::TimeZone.find_tzinfo(message[:zone])
      rescue TZInfo::InvalidTimezoneIdentifier
        nil
      end
    end
  end
end
