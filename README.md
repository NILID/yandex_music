YandexMusic is a solution to get audio info from Yandex Music

## Getting started

```ruby
gem 'yandex_music'
```

Run the bundle command to install it.

## Usage

``` ruby
audio = YandexMusic.new('https://music.yandex.ru/album/3113802/track/13301302')
# audio.track_id       => 13301302
# audio.embed_code     => <iframe src="https://music.yandex.ru/iframe/#track/13301302" frameborder="0" width="100%" height="100" style="border:none;width:100%;height:100px;"></iframe>
```

## License

MIT License.
