var point = point || {};

point = {


  init : function(callback){
      point.log.custom("\ninitializing point framework");
      point.get.script('assets/js/config.js');
      $.when($.getScript('assets/js/config.js')).then(function() {
          point.checkExistingScripts();
          point.checkExistingStylesheets();
          point.log.custom("\n point.js initilized");
          callback();
      });
    }, //point.init


  config : {
      logging               : null,
      checkPageScripts      : null,
      checkPageStylesheets  : null,
      slideTime             : null,
      easing                : null
  },
  

  checkExistingScripts: function () {
      if (point.config.checkPageScripts === true) {
              point.log.custom("\n Checking existing scripts...");
              $("script").each(function() {
                point.log.custom("   - " + $(this).attr("src"));
              });
          } else {
              return false;
          }
    },

  checkExistingStylesheets : function() {
            if (point.config.checkPageStylesheets === true) {
                point.log.custom("\n Checking existing stylesheets...");
                $("link[rel='stylesheet']").each(function() {
                point.log.custom("   - " + $(this).attr("href"));
                });
            } else {
                return false;
            }
      },

  alerter : function(input) {
      if (point.alerts === true) {
        alert(input);
      } else {
          
      }
    },

  get : {
        script: function(url) {
          $.getScript(url)
            .done(function(script, textStatus) {
              point.log.custom(textStatus + "fully loaded " + url);
            })
            .fail(function(jqxhr, settings, exception) {
              point.log.custom(exception + " (url)");
            });
          }, // /script

        // htmlAndScript: function() {
          
        // }
        
        // whenThen: function (when, then) {
        //     $.when( $.getScript(when) )
        //       .then(function( data, textStatus, jqXHR ) {
        //           App.get.script(then);
        //     });        
        //   } // /whenThen
          
      },// /point.get
  
  log :  {
        custom: function(logText) {
            if (point.config.logging === true) {
              console.log(logText);
            } else {
              return false;
            }
          },
        success: function() {
            if (point.config.logging === true) {
              console.log("success");
            } else {
              return false;
            }          
          },
        failure: function () {
            if (point.config.logging === true) {
              console.log("failure");
            } else {
              return false;
            }          
          },
        error: function() {
            if (point.config.logging === true) {
              console.log("error");
            } else {
              return false;
            }          
          }
      },// /point.log

////////////////////////////////////////////////

    modal: {
        
        overlay: function (callback) {
            $("body").append("<div class='modalOverlay'></div>");
            if (callback) {
                callback();
            }
        },

        box: function (callback) {
            point.modal.overlay(function () {
                $(".modalOverlay").html("" +
                    "<div class='modalBox'>" +
                    "</div>" +
                "");
                if (callback) {
                    callback();
                }
            });
        },// /box 

        alertButtonActions: function (callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                point.remove('.modalOverlay')
                switch (id) {
                    case "okBtn":
                        point.modalReturn = 1;
                        break;
                }
                if (callback) {
                    callback();
                }
            });
        },
        alert: function (headlineText, messageText) {
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<button id='okBtn' class='button'>OK</button>" +
                "");
                $(".modalBox").addClass("alert");
                point.modal.alertButtonActions();
            });
        },// /point.alert

        confirmButtonActions: function (callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                point.remove('.modalOverlay');
                switch (id) {
                    case "okBtn":
                    case "yesBtn":
                        callback();
                        point.modalReturn = 1;
                        break;
                    case "cancelBtn":
                        point.modalReturn = 0;
                        break;
                }
            });
        },
        confirm: function (headlineText, messageText, callback) {
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<button id='cancelBtn' class='button'>Cancel</button>" +
                      "<button id='okBtn' class='button'>OK</button>" +
                "");
            });
            $(".modalBox").addClass("confirm");
            point.modal.confirmButtonActions(callback);
        },// point.confirm

        promptButtonActions: function (promptVarName, callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                switch (id) {
                    case "okBtn":
                    case "yesBtn":
                        promptVarName = promptVarName;
                        promptVarValue = $("#promptInput").val();
                        point[promptVarName] = promptVarValue;
                        point.modalReturn = 1;
                        point.remove('.modalOverlay');
                        if (callback) {
                            callback();
                        }
                        break;
                    case "cancelBtn":
                        point.modalReturn = 0;
                        point.remove('.modalOverlay');
                        break;
                }
            });
        },
        prompt: function (promptVarName, headlineText, messageText, callback) {
            var promptVarName = promptVarName;
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<input id='promptInput' type='text'>" +
                      "<button id='cancelBtn' class='button'>Cancel</button>" +
                      "<button id='okBtn' class='button'>OK</button>" +
                "");
                $(".modalBox").addClass("prompt");
                point.modal.promptButtonActions(promptVarName, callback);
            });
        },// point.prompt


        yesNoButtonActions: function (callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                point.remove('.modalOverlay');
                switch (id) {
                    case "okBtn":
                    case "yesBtn":
                        point.modalReturn = 1;
                        if (callback) {
                            callback();
                        }
                        break;
                    case "noBtn":
                        point.modalReturn = -1;
                        if (callback) {
                            callback();
                        }
                        break;
                    case "cancelBtn":
                        point.modalReturn = 0;
                        if (callback) {
                            callback();
                        }
                        break;
                }
            });
        },
        yesNo: function (headlineText, messageText, callback) {
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<button id='yesBtn' class='button'>Yes</button>" +
                      "<button id='cancelBtn' class='button'>Cancel</button>" +
                      "<button id='noBtn' class='button'>No</button>" +
                "");
            });
            $(".modalBox").addClass("yesNo");
            point.modal.yesNoButtonActions(callback);
        },// point.confirm

    },  // /point.modal


//////////////////////////////////////////////

    remove: function (element) {
        $(element).remove();
    },
        
    // notification : {
    //       custom: function() {
    //         },
    //       success: function() {
    //         },
    //       failure: function () {
    //         },
    //       error: function() {
    //         } 
    //   }// /point.notification

};// point









// most current incarnations... need to replace above with these... ///////////
    /*
        point.modal = {
    
        // dark full-screen background
        overlay: function (callback) {
            $("body").append("<div class='modalOverlay'></div>");
            $("#container").addClass("blur");
            if (callback) {
                callback();
            }
        },
        //box in center of screen that modal/alert/popup content goes in
        box: function (callback) {
            point.modal.overlay(function () {
                $(".modalOverlay").html("" +
                    "<div class='modalBox'>" +
                    "</div>" +
                "");
                if (callback) {
                    callback();
                }
            });
        },// /box 
    
        alertButtonActions: function (callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                point.remove('.modalOverlay')
                $("#container").removeClass("blur");
                switch (id) {
                    case "okBtn":
                        point.modalReturn = 1;
                        break;
                }
            });
        },
        alert: function (headlineText, messageText) {
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<button id='okBtn' class='button'>OK</button>" +
                "");
                $(".modalBox").addClass("alert");
                point.modal.alertButtonActions();
            });
        },// /point.alert
    
        confirmButtonActions: function (callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                point.remove('.modalOverlay');
                $("#container").removeClass("blur");
                switch (id) {
                    case "okBtn":
                    case "yesBtn":
                        callback();
                        point.modalReturn = 1;
                        break;
                    case "noBtn":
                        point.modalReturn = -1;
                        break;
                    case "cancelBtn":
                        point.modalReturn = 0;
                        break;
                }
            });
        },
        confirm: function (headlineText, messageText, callback) {
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<button id='cancelBtn' class='button'>Cancel</button>" +
                      "<button id='okBtn' class='button'>OK</button>" +
                "");
            });
            $(".modalBox").addClass("confirm");
            point.modal.confirmButtonActions(callback);
        },// point.confirm
    
        promptButtonActions: function (promptVarName, callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                switch (id) {
                    case "okBtn":
                    case "yesBtn":
                        promptVarName = promptVarName;
                        promptVarValue = $("#promptInput").val();
                        point[promptVarName] = promptVarValue;
                        point.modalReturn = 1;
                        point.remove('.modalOverlay');
                        $("#container").removeClass("blur");
                        if (callback) {
                            callback();
                        }
                        break;
                    case "cancelBtn":
                        point.remove('.modalOverlay');
                        $("#container").removeClass("blur"); point.modalReturn = 0;
                        break;
                }
    
            });
        },
        prompt: function (promptVarName, headlineText, messageText, callback) {
            var promptVarName = promptVarName;
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<input id='promptInput' type='text'>" +
                      "<button id='cancelBtn' class='button'>Cancel</button>" +
                      "<button id='okBtn' class='button'>OK</button>" +
                "");
                $(".modalBox").addClass("prompt");
                point.modal.promptButtonActions(promptVarName, callback);
            });
        },// point.prompt
    
        yesNoButtonActions: function (callback) {
            $(".modalBox button").click(function () {
                var id = $(this).attr("id");
                point.remove('.modalOverlay');
                $("#container").removeClass("blur");
                switch (id) {
                    case "okBtn":
                    case "yesBtn":
                        point.modalReturn = 1;
                        if (callback) {
                            callback();
                        }
                        break;
                    case "noBtn":
                        point.modalReturn = -1;
                        if (callback) {
                            callback();
                        }
                        break;
                    case "cancelBtn":
                        point.modalReturn = 0;
                        if (callback) {
                            callback();
                        }
                        break;
                }
            });
        },
        yesNo: function (headlineText, messageText, callback) {
            point.modal.box(function () {
                $(".modalBox").html("" +
                      "<h6>" + headlineText + "</h6>" +
                      "<p>" + messageText + "</p>" +
                      "<button id='yesBtn' class='button'>Yes</button>" +
                      "<button id='cancelBtn' class='button'>Cancel</button>" +
                      "<button id='noBtn' class='button'>No</button>" +
                "");
            });
            $(".modalBox").addClass("yesNo");
            point.modal.yesNoButtonActions(callback);
        },// point.confirm
    
    };  // /point.modal
        point.get = {
            script: function (url) {
                $.getScript(url)
                    .done(function (script, textStatus) {
                        if (point.prefs.scriptLogs === true) {
                            point.log.custom("   - " + textStatus + "fully loaded " + url);
                        }
                    })
                    .fail(function (jqxhr, settings, exception) {
                        point.log.custom("   - " + exception + " (url)");
                    });
            }, // /script
    
            element: function (componentContainerId, componentUrl, componentId, scriptURL, callback) {
                var thisURL = componentUrl
                if (componentId != '') {
                    thisURL += ' ' + componentId
                }
                $(componentContainerId).load(thisURL, function () {
                    if (point.prefs.scriptLogs === true) {
                        point.log.custom("   - loaded " + componentUrl + " " + componentId);
                    }
                    console.log(componentUrl);
                    console.log(componentId);
                    point.get.script(scriptURL);
                    console.log(scriptURL);
                });
                if (callback) {
                    callback;
                }
            },// /element
    
            file: function (componentContainerId, componentUrl, scriptURL) {
                $(componentContainerId).load(componentUrl + componentId, function () {
                    if (point.prefs.scriptLogs === true) {
                        point.log.custom("   - " + textStatus + " loaded " + componentUrl);
                    }
                    point.get.script(scriptURL);
                });
            },// /file
    
            whenThen: function (when, then) {
                $.when(when)
                    .then(function (data, textStatus, jqXHR) {
                        then;
                    });
            } // /whenThen
        },// /point.get
    */
