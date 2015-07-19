class Views::LoggedOut::ActivationButton < Views::Base
  def content
    div(class: buttonish(:large, :alert, :bordered), onclick: "analytics.track('activation/signup')") {
      a(href: new_account_path) {
        text "Sign Up"
      }
    }
  end
end