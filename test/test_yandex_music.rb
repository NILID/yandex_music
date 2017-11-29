require 'minitest/autorun'
require 'yandex_music'

class YandexMusicTest < Minitest::Test
  def tracks_list
    %w[
       https://music.yandex.ru/album/3113802/track/13301302
       http://music.yandex.ru/album/3113802/track/13301302
       https://music.yandex.ru/track/13301302
     ]
  end
  def test_must_return_yandex_id
    tracks_list.each do |track|
      assert_equal YandexMusic.track_id(track), '13301302'
    end
  end
end