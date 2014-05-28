Rooster.App.module "FilemanagerModule", (filemanagerModule) ->
  @startWithParent = false

  filemanagerModule.addInitializer (options) ->
    console.warn 'idiot'
