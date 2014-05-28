use Rack::Static,
  :urls => ["/Stimuli", "/js", "/css"],
  :root => "web"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'max-age=86400'
    },
    File.open('web/index.html', File::RDONLY)
  ]
}
