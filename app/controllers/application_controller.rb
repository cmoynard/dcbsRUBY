class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        accadmin_path #après le sign_in, redirection vers l'accueil admin
    end
      

end
