class Creator::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:penname, :email)
  end
end