require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TsubasaYoshida
  class Application < Rails::Application
    config.load_defaults 6.0

    config.paths.add 'lib', eager_load: true
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.active_record.default_timezone = :local
    config.generators do |g|
      g.assets false
      g.helper false
      g.jbuilder false
      g.test_framework :rspec,
                       # テストデータベースにレコードを作成するファイルの作成をスキップ
                       fixtures: false,
                       # ビュースペックの作成をスキップ(UIのテストはフィーチャスペックに任せる)
                       view_specs: false,
                       # ヘルパースペックの作成をスキップ
                       helper_specs: false,
                       # ルーティングスペックの作成をスキップ
                       routing_specs: false,
                       # コントローラースペックの作成をスキップ
                       controller_specs: false,
                       # リクエストスペックの作成をスキップ
                       request_specs: false
    end
  end
end
