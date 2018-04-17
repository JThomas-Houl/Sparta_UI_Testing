require_relative 'services/random_form_data_service'
class GenerateData

    def random_form_data_service
        RandomFormData.new
    end


end

# newt = GenerateData.new

# p newt.random_form_data_service.faker_password
