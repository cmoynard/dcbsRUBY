class MailsController < ApplicationController

    def index
        @fournis = Fourni.all
        @savforms = Savform.all
    end

end