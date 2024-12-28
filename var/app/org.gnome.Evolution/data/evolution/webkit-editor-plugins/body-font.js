'use strict';

var localhostBodyFontPlugin = {
   name : "localhostBodyFontPlugin",
   setup : function(doc) {
      if (doc.body) {
          doc.body.setAttribute("style", "font-family: Calibri,sans-serif; font-size: 11.0pt;")
      }
   }
};

EvoEditor.RegisterPlugin(localhostBodyFontPlugin);
