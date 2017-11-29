class YandexMusic
  # get yandex audio track id
  def self.track_id(track_url)
    track_url.gsub(/\Ahttp(s?):\/\/music.yandex.ru\/(|album\/\d+\/)track\//, '')
  end
end
