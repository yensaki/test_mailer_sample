class ReservationMailer < ApplicationMailer
  def completed_mail(reservation)
    @reservation = reservation
    mail(to: 'dummy@example.com', subject: '【重要】予約が完了しました')
  end
end
