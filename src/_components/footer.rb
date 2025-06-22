class Footer < Bridgetown::Component
  def initialize(**options)
    @options = options
  end

  private

  def student_name
    # Try to access site data through Bridgetown's current site
    site_instance = Bridgetown::Current.site
    if site_instance&.data&.dig("personal_info", "name")
      site_instance.data.dig("personal_info", "name")
    else
      "Rose City Robotics"
    end
  end
end
