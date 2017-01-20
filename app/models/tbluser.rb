class Tbluser < ApplicationRecord

  before_validation(on: :create) do
    self.User_ID = Tbluser.all.collect{ |tbluser| tbluser.User_ID }.max + 1
  end
end
