class CompanySerializer < ActiveModel::Serializer
  attributes :name, :manager, :status, :terms
end
