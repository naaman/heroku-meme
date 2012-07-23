require 'heroku/command/apps'
require 'meme'

class Heroku::Command::Apps < Heroku::Command::Base
  alias_method :orig_create, :create

  # apps:create [NAME]
  #
  # create a new app. Overridden to default stack to cedar
  #
  #     --addons ADDONS        # a comma-delimited list of addons to install
  # -b, --buildpack BUILDPACK  # a buildpack url to use for this app
  # -r, --remote REMOTE        # the git remote to create, default "heroku"
  # -s, --stack STACK          # the stack on which to create the app
  #
  def create
    unless options[:app]
      options[:app] = Meme.generate
    end
    orig_create
  end

end

