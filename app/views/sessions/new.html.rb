class Views::Sessions::New < Views::Base
  def content
    row {
      column(%i[small-12 large-6], :class => :"large-centered") {

        form_tag session_path, method: 'post', class: %[clear-panel form] do
          h1("Log in")

          row {
            column(:"large-12") {
              label {
                text "E-mail: "
                text_field_tag :email, nil, tabindex: 1, type: 'email'
              }
              br
              label {
                text "Password: "
                link_to "Forgot?", new_password_reset_path
                password_field_tag :password, nil, tabindex: 2
              }
              br
              submit_tag "Log In", class: buttonish(:large, :alert, :bordered),
                tabindex: 3
              br
              link_to "Click here to Sign Up instead", new_account_path
            }
          }
        end

      }
    }
  end
end
