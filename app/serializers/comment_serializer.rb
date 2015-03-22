class CommentSerializer < ActiveModel::Serializer
  attributes :id, :author, :body, :article

  belongs_to :article

  def created_at
    object.created_at.strftime('%m-%d-%y')
  end

end
