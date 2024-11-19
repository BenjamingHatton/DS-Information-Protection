# frozen_string_literal: true
# name: DS-Information-Protection
# about: Enhanced privacy protection measures for specific users
# version: 0.1
# authors: KX

after_initialize do
  AdminUserSerializer.class_eval do
    def ip_address
      if [1, 2, 3, 4].include?(self.id)
        'Hidden IP address'
      else
        object.ip_address || 'No IP Address Available'
      end
    end
    def registration_ip_address
      if [1, 2, 3, 4].include?(self.id)
        'Hidden IP address'
      else
        object.registration_ip_address || 'No Registration IP Address Available'
      end
    end 
    def email
      if [1, 2, 3, 4].include?(self.id)
        'Hidden Email address'
      else
        object.email || 'No Email Address Available'
      end
    end 
  end
end
