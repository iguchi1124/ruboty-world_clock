module Ruboty
  module Actions
    class WorldClock < Base
      def call
        message.reply(Time.now.in_time_zone(timezone).strftime('%m/%d %H:%M:%S'))
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
