
# Dynamic controller

def sti_contact_path(type = "contact", contact = nil, action = nil)
    send "#{format_sti(action, type, contact)}_path contact
end

def format_sti(action, type, contact)
    action || animal ? "#{format_action(action)}#{contact.underscore}" : "#{contact.underscore.pluralize}"
end

def format_action(action)
    action ? "#{action}_" : ""
end
