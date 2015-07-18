class Views::Accounts::New < Views::Base
  needs :account

  def content
    row {
      column(%i[small-12 large-6], class: "large-centered") {
        form_for account do |f|
          div(class: %[clear-panel form]) {
            h1("Signup")

            row {
              column(:"large-12") {
                with_errors(account, :email) {
                  label {
                    text "E-mail: "
                    f.text_field :email
                  }
                }
              }

              column(:"large-12") {
                with_errors(account, :password) {
                  label {
                    text "Password: "
                    f.password_field :password
                  }
                }
              }

              column(:"large-12") {
                with_errors(account, :zip_code) {
                  label {
                    text "Zip Code: "
                    f.password_field :zip_code
                  }
                }
              }

              column(:"large-12") {
                f.submit class: buttonish(:large, :alert, :bordered), onclick: "analytics
.track('activation/signup')"
              }
            }
          }
        end
      }
    }
  end
end
