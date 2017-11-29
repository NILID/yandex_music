Gem::Specification.new do |s|
  s.name        = 'yandex_music'
  s.version     = '0.0.1'
  s.date        = '2017-11-29'
  s.summary     = "Yandex mmusic"
  s.description = "Get audio info from Yandex Music"
  s.authors     = ["Dmitry Ilin"]
  s.email       = 'dm.ilin@mail.ru'
  # s.files       = %w[lib/yandex_music.rb Rakefile yandex_music.gemspec]
  s.files       = `git ls-files`.split($/)
  s.test_files  = %w[test/test_yandex_music.rb]
  s.homepage    =
    'http://rubygems.org/gems/yandex_music'
  s.platform    = Gem::Platform::RUBY
  s.license       = 'MIT'
end