CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_Custom = [
    ['Bold']
  ];
  // ... rest of the original config.js  ...

  config.language = 'fr';
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";

  config.language = "fr";
  config.uiColor = "#ecf0f1";

  config.toolbar_Full = [
  '/',
  { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike' ] },
  { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Blockquote',
  '-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
  { name: 'links', items : [ 'Link','Unlink' ] },
  { name: 'insert', items : [ 'Image','HorizontalRule','Smiley'] },
  { name: 'colors', items : [ 'TextColor','BGColor' ] },
  { name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
  ];
  config.toolbar = 'Full';
}
