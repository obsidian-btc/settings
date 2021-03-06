require_relative '../../bench_init'

context "File Data Source" do
  test "Reads the file" do
    settings_dir = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
    settings_file = File.join(settings_dir, 'settings.json')

    settings = Settings::DataSource::File.build(settings_file)
    data = settings.get_data

    assert(data.to_h == { some_setting: "some value" })
  end
end
