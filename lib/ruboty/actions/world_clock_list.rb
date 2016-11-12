module Ruboty
  module Actions
    class WorldClockList < Base
      def call
        message.reply(
          <<-EOM
```
#{timezones.join("\n")}
```
          EOM
        )
      end

      private

      def timezones
        ActiveSupport::TimeZone.all.map(&:name).select { |tz| tz =~ /#{message[:zone]}/ }
      end
    end
  end
end
