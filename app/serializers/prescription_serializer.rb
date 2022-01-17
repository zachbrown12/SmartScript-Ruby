class PrescriptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :drugs

  def drugs
    ActiveModel::SerializableResource.new(object.drugs,  each_serializer: DrugSerializer)
  end

end
