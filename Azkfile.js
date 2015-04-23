/**
 * Documentation: http://docs.azk.io/Azkfile.js
 */

// Adds the systems that shape your system
systems({
  Psique: {
    // Dependent systems
    depends: [],
    // More images:  http://images.azk.io
    image: {"docker": "azukiapp/ruby:2.2"},
    // Steps to execute before running instances
    provision: [
      "bundle install --path /azk/bundler",
    ],
    workdir: "/azk/#{manifest.dir}",
    shell: "/bin/bash",
    command: "bundle exec rackup test/dummy/config.ru --pid /tmp/ruby.pid --port $HTTP_PORT --host 0.0.0.0",
    wait: {"retry": 20, "timeout": 1000},
    mounts: {
      '/azk/#{manifest.dir}': path("."),
      '/azk/bundler': persistent("bundler"),
    },
    scalable: {"default": 2},
    http: {
      domains: [ "#{system.name}.#{azk.default_domain}" ]
    },
    envs: {
      // set instances variables
      RUBY_ENV: "development",
      BUNDLE_APP_CONFIG: "/azk/bundler",
    },
    export_envs: {
      // exports variables for dependent systems
      APP_URL: "#{system.name}.#{azk.default_domain}:#{net.port.http}",
    },
  },

  // ngrok system
  ngrok: {
    // Dependent systems
    depends: ["Psique"],
    // More images:  http://images.azk.io
    image: {"docker": "azukiapp/ngrok:latest"},
    wait: {"retry": 20, "timeout": 1000},
    http: {
      domains: [
        "#{manifest.dir}-#{system.name}.#{azk.default_domain}",
      ],
    },
    ports: {
      // exports global variables
      http: "4040",
    },
    mounts: {
      '/ngrok/logs' : path("./test/dummy/log"),
    },
    envs: {
      // set instances variables
      NGROK_CONFIG: "/ngrok/ngrok.yml",
      NGROK_LOG: "/ngrok/logs/ngrok.log",
    },
  },
});
