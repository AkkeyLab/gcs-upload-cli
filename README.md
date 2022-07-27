# GCS Upload CLI

## Installation
```sh
$ brew install --cask google-cloud-sdk
$ echo "source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" >>~/.zshrc
$ echo "source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc" >>~/.zshrc
$ source ~/.zshrc
$ gcloud auth login
```

## Usage
```sh
$ pwd
$ /Users/akkeylab

$ ./gcs_upload_cli.sh ./example/assets example.com/assets

$ /Users/akkeylab/*.png
$ gs://example.com/assets/
$ ...
$ /Users/akkeylab/example/*.png
$ gs://example.com/assets/example/
$ ...
$ /Users/akkeylab/example/assets/*.png
$ gs://example.com/assets/example/assets/
$ ...
```

## License
GCS Upload CLI is available under the MIT license. See the LICENSE file for more info
