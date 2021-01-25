class Article < ActiveRecord::Base
    #validaciones en datos del modelo
    validates :title, presence: true
    validates :description, presence: true
end



