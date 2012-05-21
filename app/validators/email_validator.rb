class EmailValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    name_validation = "^@\\s"    
    unless value =~ /^\s*([#{name_validation}]{1,64})@((?:[-a-z0-9]+\.)+[a-z]{2,})\s*$/i
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
