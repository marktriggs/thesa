class Thesa < Sequel::Model(:thesa)
  include ASModel
  corresponds_to JSONModel(:thesa)

  include ThesaTerms

  set_model_scope :repository

end
