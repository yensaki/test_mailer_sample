require "rails_helper"

RSpec.describe ReservationMailer, type: :mailer do
  describe '#completed_mail' do
    let(:reservation) { FactoryGirl.create(:reservation) }
    let(:mailer) { described_class.completed_mail(reservation) }
    let(:fixture_path) { Rails.root.join('spec', 'fixtures', 'mailers', 'reservation_completed') }
    let(:body) { open(File.join(fixture_path, 'body.text')).read }
    let(:description) { YAML.load_file(File.join(fixture_path, 'description.yml')) }

    it 'subject' do
      expect(mailer.subject).to eq(description['subject'])
    end

    it 'body' do
      expect(mailer.body.to_s).to eq(body)
    end
  end
end
