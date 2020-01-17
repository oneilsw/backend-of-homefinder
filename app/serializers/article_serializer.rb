class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :source, :description, :image, :url, :content
end

