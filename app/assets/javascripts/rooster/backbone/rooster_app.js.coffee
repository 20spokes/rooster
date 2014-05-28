window.Rooster =
  Models: {}
  Collections: {}
  Controllers: {}
  Layouts: {}
  Routers: {}
  Views: {}
  Modals: {}
  App: new Backbone.Marionette.Application()

Backbone.Marionette.Renderer.render = (template, data) ->
  if(!JST[template])
    throw "template '" + template + "' not found!'"

  return JST[template](data)

Backbone.oldSync = Backbone.sync

Backbone.sync = (method, model, options) ->
  params = options
  if (!params.data && model && (method == 'create' || method == 'update'))

    params.contentType = 'application/json'

    data = {}

    if(model.paramRoot)
      data[model.paramRoot] = model.toJSON()
    else
      data = model.toJSON()

    params.data = JSON.stringify(data)

  return Backbone.oldSync.apply(this, [method, model, params])
