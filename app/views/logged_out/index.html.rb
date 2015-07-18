class Views::LoggedOut::Index < Views::Base
  def content
    wide_row(:'background-cover') {
      div(class: %[clear-panel text-center]) {
        h1 {
          span "Give a Growler. Take a Growler.", class: :'text-primary'
          br
          span "Better than local.", class: :'text-alert'
        }
        h4 "Get feedback on beer from other brewers...then start a brewery together."

        p "I often brew several gallons at a time and trade with friends. I started
this site to expand the network of people I could trade beer with to get more diverse
palate and inspire creativity in brewing."

        render partial: "take_action_button"
      }
    }
    wide_row(:'palate-green-on-white text-center') {
      h4 "About Homebrew Swap"
      p "We do one thing really well- we introduce you to other brewers in your
vicinity to inspire your brewing. Trade pints, growlers, tips, equiptment, etc."
      p "Click below to sign up. We'll contact you shortly and get you trading."
      render partial: "take_action_button"
    }
    javascript "analytics.track('acquisition/visit')"
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
