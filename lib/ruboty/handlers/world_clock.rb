module Ruboty
  module Handlers
    class WorldClock < Base
      on /clock (?<zone>.+)\z/i, name: 'world_clock', description: 'Show world clock which you want to see'

      def world_clock(message)
        Ruboty::WorldClock::Actions::WorldClock.new(message).call
      end
    end
  end
end
