FactoryBot.define do
  factory :music do
    title        { 'test' }
    artist       { 'test' }
    audio        { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public/uploads/music/audio/test_audio.mp3')) }
    introduction { 'test' }
    association :user

    after(:build) do |music|
      music.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
