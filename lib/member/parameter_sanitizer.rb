class Member::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:nickname, :email)
  end
end