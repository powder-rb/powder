require 'sinatra'
require 'logger'

module Powder  
  class Server < Sinatra::Base
    POW_PATH = "#{ENV['HOME']}/.pow"
    LOG = ::Logger.new('log/development.log')
    
    # Routes ------------------------------------------------------------------
    get '/restart/:app_name'   do
      to_url = ""
      Dir.chdir(pow_dir(params[:app_name])) do
        `powder restart`
        to_url = pow_url(params[:app_name])
      end
      log to_url
      redirect to_url
    end
    
    # Helpers -------------------------------------------------------------------
    def pow_dir(app_name)
      POW_PATH + '/' + app_name
    end

    def pow_url(app_name)
      'http://' + app_name + '.' + domain
    end

    def domain
      if File.exists? File.expand_path('~/.powconfig')
        returned_domain = %x{source ~/.powconfig; echo $POW_DOMAINS}.gsub("\n", "").split(",").first
        returned_domain = %x{source ~/.powconfig; echo $POW_DOMAIN}.gsub("\n", "") if returned_domain.nil? || returned_domain.empty?
        returned_domain = 'dev' if returned_domain.nil? || returned_domain.empty?
        returned_domain
      else
        'dev'
      end
    end

    def log(msg)
      LOG.debug(msg)
    end
  end
end
