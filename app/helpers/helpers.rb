class Helpers

 def self.current_user(session)
   @user = User.find_by_id(session[:user_id])
 
 #This method should use the user_id from the session hash to find the user in the database and return that user.
 end
 
 def self.is_logged_in?(session)
   if session.include?(:user_id)
     true 
   else
     false
   end
 end
end