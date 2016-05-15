class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email

  RATINGS = {
    '1*'    => '1_star',
    '2*'   => '2_stars',
    '3*' => '3_stars',
    '4*'  => '4_stars',
    '5*'  => '5_stars',
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
    NotificationMailer.comment_added(self).deliver
  end

end
