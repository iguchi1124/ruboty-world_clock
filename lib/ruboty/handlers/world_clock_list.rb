module Ruboty
  module Handlers
    class WorldClockList < Base
      on /list clock (?<zone>.+)\z/i, name: 'world_clock_list', description: 'Show world clock list'

      def world_clock_list(message)
        Ruboty::Actions::WorldClockList.new(message).call
      end
    end
  end
end
