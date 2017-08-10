class SendWelcomeEmailJob < ApplicationJob
  queue_as :default

  def perform(user, book)
    UserMailer.welcome(user, book).deliver_later
  end
end
