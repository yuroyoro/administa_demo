Administa.config do |config|

  # Authentication settings
  #
  # config.current_user_method { current_user }
  # config.user_name_proc      {|user| user.try(:name) }
  # config.user_email_proc     {|user| user.try(:email) }
  # config.authenticate_with   { warden.authenticate! :scope => :user }

  # Menu settings
  #
  config.menu do
    label "Events"
    group :events, append: [:people, :owner]  do
      menu :event_person
    end

    label "Person"
    menu :person, append: [:events]
    menu :user
  end

end
