class Views::LoggedOut::TakeAction < Views::Base
  def content
    wide_row(:'background-cover') {
      form_tag accounts_path, method: 'post' do
        div(class: %[clear-panel form]) {
          h4 "Join"
          p "Tell us a few things so we can get you started!"
          div(class: "row") {
            div(class: "medium-6 columns") {
              label {
                text "First Name"
                text_field_tag :first_name
              }
            }
            div(class: "medium-6 columns") {
              label {
                text "Last Name"
                text_field_tag :last_name
              }
            }
            div(class: "medium-6 columns") {
              label {
                text "Zip Code"
                text_field_tag :zip_code
              }
            }
            div(class: "medium-6 columns") {
              label {
                text "Email"
                text_field_tag :email
              }
            }
          }

          p "This information will not be shared"
          submit_tag "Join", class: buttonish(:large, :alert, :bordered), onclick: "analytics.track('activation/signup')"
        }
      end
    }
  end

  private

  def wide_row(add_class)
    classes = [:fullWidth]
    classes << add_class
    row(class: classes) {
      column {
        row {
          column(:'medium-8', class: :'medium-offset-2') {
            br
            yield
          }
        }
      }
    }
  end

end
