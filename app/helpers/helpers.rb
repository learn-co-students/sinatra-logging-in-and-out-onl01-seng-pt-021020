require 'sinatra/base'

class Helpers
  def self.current_user(session_hash)
    if session_hash[:user_id]
       User.find(session_hash[:user_id])
     else
       nil
     end
  end

  def self.is_logged_in?(session_hash)
    !!current_user(session_hash)
  end
end
