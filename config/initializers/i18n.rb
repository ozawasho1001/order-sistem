Rails.application.config.time_zone = 'Tokyo'
Rails.application.config.active_record.default_timezone = :local

# デフォルトのlocaleを日本語(:ja)にする
Rails.application.config.i18n.default_locale = :ja
Rails.application.config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]