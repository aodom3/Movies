class ApplicationController < ActionController::Base
    def hello
        render html: "Movies!"
    end
end
