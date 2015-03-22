class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :comments, :category

  has_many :comments
  belongs_to :category

  def created_at
    object.created_at.strftime('%m-%d-%y')
  end

end
