sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("project1.controller.View1", {
            onInit: function () {

            },
            onPress: function(){
                const lax = this.getOwnerComponent().getRouter();
                lax.navTo("RouteView2");
            },
            GeneralInfo:function(){
                const oRouter = this.getOwnerComponent().getRouter();
                oRouter.navTo("RouteView3");
                console.log("heloo");
            }
        });
    });
