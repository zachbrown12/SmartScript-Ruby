class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes {[:username, :name, :file]}
end
