class AuthenticatedConstraint

  def matches?(request)
    !!request.session["user_id"]
  end

end
