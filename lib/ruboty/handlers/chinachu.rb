require 'ruboty/chinachu/actions/reserves'
require 'ruboty/chinachu/actions/schedule'
require 'ruboty/chinachu/actions/recording'
require 'ruboty/chinachu/actions/recorded'
require 'ruboty/chinachu/actions/program'

module Ruboty
  module Handlers
    class Chinachu < Ruboty::Handlers::Base

      env :CHINACHU_API_ENDPOINT, "chinachu api endpoint"
      env :CHINACHU_LOGIN, "Login name for Chinachu server's basic authentication", optional: true
      env :CHINACHU_PASSWORD, "Login pass for Chinachu server's basic authentication", optional: true
      env :CHINACHU_PROGRAM_FORMAT, "program output string format", optional: true

      on( /list reserved/, name: :daily_reservation_list, description: "show today's reservations list")
      on( /list broadcasting/, name: :list_broadcasting, description: "broadcasting programs")
      on( /list recording/, name: :list_recording, description: "recording programs")
      on( /list recorded/, name: :list_recorded, description: "recorded programs in this 24 hours")
      on( /reserve program (?<program_id>.+)/, name: :reserve, description: "Reserve Program")
      on( /delete reservation (?<program_id>.+)/, name: :delete_reservation, description: "Delete reserved Program")

      def daily_reservation_list(message)
        Ruboty::Chinachu::Actions::Reserves.new(message).call
      end

      def list_broadcasting(message)
        Ruboty::Chinachu::Actions::Schedule.new(message).list_broadcasting
      end
      
      def list_recording(message)
        Ruboty::Chinachu::Actions::Recording.new(message).call
      end

      def list_recorded(message)
        Ruboty::Chinachu::Actions::Recorded.new(message).call
      end

      def reserve(message)
        Ruboty::Chinachu::Actions::Program.new(message).reserve
      end

      def delete_reservation(message)
        Ruboty::Chinachu::Actions::Program.new(message).delete_reservation
      end
    end
  end
end
