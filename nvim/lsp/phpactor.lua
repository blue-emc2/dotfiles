return {
  filetypes = { 'php' },
  cmd = { os.getenv('HOME') .. "/.composer/vendor/bin/phpactor", "language-server" },
  root_markers = { '.git', 'composer.json', '.phpactor.json', '.phpactor.yml' },
}

