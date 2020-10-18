FactoryBot.define do
  factory :foot do
    ateam          { 'aaa' }
    bteam          { 'aaa' }
    one_member     { 'aaa' }
    two_member     { 'aaa' }
    three_member   { 'aaa' }
    four_member    { 'aaa' }
    five_member    { 'aaa' }
    six_member     { 'aaa' }
    seven_member   { 'aaa' }
    eight_member   { 'aaa' }
    nine_member    { 'aaa' }
    ten_member     { 'aaa' }
    eleven_member  { 'aaa' }
    aone_member    { 'aaa' }
    atwo_member    { 'aaa' }
    athree_member  { 'aaa' }
    afour_member   { 'aaa' }
    afive_member   { 'aaa' }
    asix_member    { 'aaa' }
    aseven_member  { 'aaa' }
    aeight_member  { 'aaa' }
    anine_member   { 'aaa' }
    aten_member    { 'aaa' }
    aeleven_member { 'aaa' }
    ascore_id      { 1 }
    bscore_id      { 1 }

    association :user
    after(:build) do |foot|
      foot.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
