# This file is responsible for configuring your site
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :<%= app_name %>,
  title: "<%= module_name %>"

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your site for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your site as:
#
#     config :photo_blog, key: :value
#
# And access this configuration in your site as:
#
#     Application.get_env(:photo_blog, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
