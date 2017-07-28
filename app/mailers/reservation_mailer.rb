class ReservationMailer < ApplicationMailer
  def completed_mail(reservation)
    @reservation = reservation
    mail(to: 'dummy@example.com', subject: '【重要】予約が完了しました')
  end

  def cancel_mail(reservation)
    @reservation = reservation
    mail(to: 'dummy@example.com', subject: '【お知らせ】予約をキャンセルしました')
  end
end
