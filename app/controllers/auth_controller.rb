require 'sailthru'
class AuthController < ApplicationController
    def signup
        api_key = "be85946a852b161940d88f1d706733b3"
        api_secret = '30d4d1daadb7eb65b8c34191c5eab12b'
        api_url = "http://api.sailthru-sb.com"
        sailthru = Sailthru::SailthruClient.new(api_key, api_secret, api_url)
        response = sailthru.api_post('user', {
            :id => params[:id], 
            :fields => {:keys => 1},
            :login => {
                  :site => '.coolshit.com',
                  :ip => '127.0.0.1',
                  :user_agent => 'Coolshit Authenticator'
            }
        })

        @response = response

        cookies['sailthru_hid'] = {
            :domain => ".coolshit.com",
            :value => response['keys']['cookie'],
            :expires => 3.months.from_now
        }
    end
end
