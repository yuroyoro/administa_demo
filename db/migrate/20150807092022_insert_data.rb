class InsertData < ActiveRecord::Migration
  def up

    Dir.glob(Rails.root.join('test', 'images', '*')).each_with_index do |img, n|
      p = Person.create!(
        name:          "がんばるぞい_#{n}",
        email:         "zoi#{n}@example.com",
        profile_text:  "今日も一日がんばるぞい #{n}",
        profile_image: File.open(img),
        )
      puts "created Person(#{p.id}): #{p.name}"
    end

    people = Person.all.to_a
    30.times do |n|
      s = %w(スゲエ ヤベエ キツイ アツイ).sample
      e = Event.create!(
        title: s + "イベント #{n}",
        start_at: n.days.since,
        end_at: n.days.since,
        place: %w(東京 北海道 沖縄 地球 宇宙 2次元).sample + "のどこか",
        participants: (rand(10) + 1) * 10,
        owner_id: people.sample.id,
        description: "マジで#{s}イベント #{n}",
        published: rand(2).even?,
        person_ids: rand(6).times.map{ people.sample.id }.uniq
      )

      puts "created Event(#{e.id}): #{e.title}"
    end

    User.create!(
      name: "test@example.com",
      email: "test@example.com",
      password: "testtest",
      password_confirmation: "testtest",
    )
  end

  def down
    EventPerson.delete_all
    Person.delete_all
    Event.delete_all
    User.delete_all
  end

end
