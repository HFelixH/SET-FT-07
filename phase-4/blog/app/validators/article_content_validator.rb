class ArticleContentValidator < ActiveModel::Validator
  def validate(article)
    if !article.content.nil? && article.content.split(' ').include?('politics')
      article.errors.add :content, 'Should not contain politics'
    end
  end
end
