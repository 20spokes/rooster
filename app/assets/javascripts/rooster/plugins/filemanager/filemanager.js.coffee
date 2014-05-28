tinymce.PluginManager.add 'filemanager', (editor, url) ->
  
  editor.addButton 'filemanager', 
    text: 'FileManager'
    icon: false
    onclick: ->
      editor.windowManager.open
        title: 'Filemanager'
        url: '/cms/admin/filemanager'
        width: 600
        height: 500
        onsubmit: (e) -> 
            editor.insertContent('Title: ' + e.data.title)

  editor.addMenuItem 'filemanager',
      text: 'Filemanager  plugin'
      context: 'tools'
      onclick: ->
          editor.windowManager.open
              title: 'TinyMCE site'
              url: 'http://www.tinymce.com'
              width: 800
              height: 600
              buttons: [{
                  text: 'Close',
                  onclick: 'close'
              }]
