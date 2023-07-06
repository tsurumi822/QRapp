class ApplicationController < ActionController::Base

    def hello
      render html: "hello, world!"
    end

    def qrcode
    end
  end
  