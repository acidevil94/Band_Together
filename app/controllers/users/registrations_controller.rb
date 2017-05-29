class Users::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
     super
   end

  # POST /resource
  def create
    super
  end


  # GET /resource/edit
   def edit
     super
   end


  # PUT /resource
   def update
     super
   end




  # DELETE /resource
   def destroy
     super
   end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit :sign_up, keys: [:username, :email, :first_name, :last_name,
                                                       :gender, :birth, :nation, :password,
                                                       :password_confirmation, :region, :type_of_musician,
                                                       :musical_genre]

  end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
    # devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    devise_parameter_sanitizer.permit :account_update,  keys: [:username, :email, :first_name, :last_name,
                                                       :gender, :birth, :nation, :password,
                                                       :password_confirmation, :region, :type_of_musician,
                                                       :musical_genre]
   end

  # The path used after sign up.
  def after_update_path_for(resource)
    users_home_path
  end

  def after_sign_up_path_for(resource)
   new_user_session_path
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
