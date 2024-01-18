class Api::MessagesController < ApplicationController
        def random_message
          random_message = Message.order('RANDOM()').first
          formatted_message = { greetings: random_message&.greetings }
          render json: JSON.pretty_generate(formatted_message)
        end
      
end
