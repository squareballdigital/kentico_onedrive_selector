(function ($, WL) {
    
    var OneDrivePicker = window.OneDrivePicker = function (opts) {
        this.opts = $.extend({}, opts);
    };
    
    OneDrivePicker.prototype.init = function (cb) {
        var me = this;
        
        WL.init({
            client_id: me.opts.clientId,
            redirect_uri: '',
            scope: 'wl.skydrive wl.signin',
            response_type: "token"
        })
            .then(cb);
    };
    
    OneDrivePicker.prototype.openDialog = function (cb) {
        var me = this;
        
        if (me._isAuthorized()) {
            return me._showPicker(cb);
        }
            
        me._authorize(function () {
            me._showPicker(cb);
        });
    };
    
    OneDrivePicker.prototype._showPicker = function (cb) {
        WL.fileDialog({
            mode: "open",
            select: "single"
        }).then(
            function (response) {
                response.data.files.forEach(function (fileInfo) {
                    cb(fileInfo.name, fileInfo.source);
                });
            });
    };
    
    OneDrivePicker.prototype._isAuthorized = function (cb) {
        return WL.getSession();
    };
    
    OneDrivePicker.prototype._authorize = function (cb) {
        WL.login({ 
            scope: 'wl.skydrive wl.signin'
        }).then(cb);
    };
    
})($, WL);
