use Rack::Static,
  :urls => ["/images", "/css", "/fonts"],
  :root => "public"


run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

map '/install' do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/plain',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/install', File::RDONLY)
    ]
  }
end

map '/exercism_completion.bash' do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/plain',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/exercism_completion.bash', File::RDONLY)
    ]
  }
end
