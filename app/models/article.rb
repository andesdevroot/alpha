class Article < ActiveRecord::Base
    #validaciones en datos del modelo
    validates :title, presence: true
    # validates :description, presence: true, length: {minimum:10, maximum:300}
end



