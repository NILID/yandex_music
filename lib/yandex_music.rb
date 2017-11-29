require 'version'

class YandexMusic
  attr_accessor :url
  def initialize(url, options = {})
    @url = url
  end

  # get yandex audio track id
  def track_id
    @url.gsub(_url_regex, '')
  end

  def embed_code(options = {})
    iframe_attributes = options.fetch(:iframe_attributes, {})
    iframe_attrs = ["src=\"#{_embed_url}\"", 'frameborder="0" width="100%" height="100" style="border:none;width:100%;height:100px;"']
    iframe_attrs << iframe_attributes
    "<iframe #{iframe_attrs.reject(&:empty?).join(' ')}></iframe>"
  end

  private

  def _url_regex
    %r{\Ahttp(s?):\/\/music.yandex.ru\/(|album\/\d+\/)track\/}i
  end

  def _embed_url
    "https://music.yandex.ru/iframe/#track/#{track_id}"
  end
end
