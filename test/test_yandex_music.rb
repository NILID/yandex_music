require 'minitest/autorun'
require 'yandex_music'

class YandexMusicTest < Minitest::Test
  def good_tracks_list
    %w[
       https://music.yandex.ru/album/3113802/track/13301302
       http://music.yandex.ru/album/3113802/track/13301302
       https://music.yandex.ru/track/13301302
     ]
  end

  def test_must_return_yandex_id
    good_tracks_list.each do |track|
      new_track = YandexMusic.new(track)
      assert_equal new_track.track_id, '13301302'
    end
  end

  def test_must_return_yandex_embed_url
    good_tracks_list.each do |track|
      new_track = YandexMusic.new(track)
      assert_equal new_track.send(:_embed_url), 'https://music.yandex.ru/iframe/#track/13301302'
    end
  end

  def test_must_return_yandex_embed_code
    good_tracks_list.each do |track|
      new_track = YandexMusic.new(track)
      assert_equal new_track.embed_code, '<iframe src="https://music.yandex.ru/iframe/#track/13301302" frameborder="0" width="100%" height="100" style="border:none;width:100%;height:100px;"></iframe>'
    end
  end
end
