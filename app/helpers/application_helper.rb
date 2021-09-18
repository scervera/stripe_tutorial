module ApplicationHelper

# This helps to set the active class for Bootstrap menus
    def current_class?(test_path)
        return 'active' if request.path == test_path
        ''
    end
      
end
