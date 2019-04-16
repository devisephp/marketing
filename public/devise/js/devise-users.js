(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["devise-users"],{"27ec":function(e,s,t){"use strict";t.r(s);var a=function(){var e=this,s=e.$createElement,t=e._self._c||s;return t("div",[t("div",{attrs:{id:"devise-admin-content"}},[t("action-bar",[t("li",{staticClass:"dvs-btn dvs-btn-sm dvs-mb-2",style:e.theme.actionButton,on:{click:function(s){s.preventDefault(),e.showCreate=!0}}},[e._v("Create New User")])]),t("h3",{staticClass:"dvs-mb-10",style:{color:e.theme.panel.color}},[e._v("Current Users")]),e._l(e.users.data,function(s){return t("div",{key:s.id,staticClass:"dvs-mb-6 dvs-flex dvs-justify-between dvs-items-center"},[t("div",{staticClass:"dvs-min-w-2/5 dvs-font-bold dvs-pr-8"},[e._v(e._s(s.name))]),t("div",{staticClass:"dvs-w-2/5 dvs-pl-8 dvs-flex dvs-justify-end"},[t("button",{staticClass:"dvs-btn dvs-btn-xs",style:e.theme.actionButtonGhost,on:{click:function(t){return e.loadUser(s.id)}}},[e._v("Manage")])])])})],2),t("transition",{attrs:{name:"dvs-fade"}},[t("portal",{attrs:{to:"devise-root"}},[e.showCreate?t("devise-modal",{staticClass:"dvs-z-50",on:{close:function(s){e.showCreate=!1}}},[t("h3",{staticClass:"dvs-mb-4",style:{color:e.theme.panel.color}},[e._v("Create new user")]),t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Name")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.newUser.name,expression:"newUser.name"}],attrs:{type:"text",placeholder:"Name of the User"},domProps:{value:e.newUser.name},on:{input:function(s){s.target.composing||e.$set(e.newUser,"name",s.target.value)}}})]),t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Email")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.newUser.email,expression:"newUser.email"}],attrs:{type:"text",placeholder:"Email of the User"},domProps:{value:e.newUser.email},on:{input:function(s){s.target.composing||e.$set(e.newUser,"email",s.target.value)}}})]),t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Password")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.newUser.password,expression:"newUser.password"}],attrs:{type:"password"},domProps:{value:e.newUser.password},on:{input:function(s){s.target.composing||e.$set(e.newUser,"password",s.target.value)}}})]),t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Confirm Password")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.newUser.password_confirmation,expression:"newUser.password_confirmation"}],attrs:{type:"password"},domProps:{value:e.newUser.password_confirmation},on:{input:function(s){s.target.composing||e.$set(e.newUser,"password_confirmation",s.target.value)}}})]),t("button",{staticClass:"dvs-btn",style:e.theme.actionButton,attrs:{disabled:e.createInvalid},on:{click:e.requestCreateUser}},[e._v("Create")]),t("button",{staticClass:"dvs-btn",style:e.theme.actionButtonGhost,on:{click:function(s){e.showCreate=!1}}},[e._v("Cancel")])]):e._e()],1)],1)],1)},o=[],n=(t("7f7f"),t("cebc")),l=t("2f62"),i={name:"UsersIndex",data:function(){return{modulesToLoad:1,showCreate:!1,newUser:{name:null,email:null,password:null,password_confirmation:null}}},mounted:function(){this.retrieveAllUsers()},methods:Object(n["a"])({},Object(l["b"])("devise",["getUsers","createUser"]),{requestCreateUser:function(){var e=this;this.createUser(this.newUser).then(function(){e.newUser.name=null,e.newUser.email=null,e.newUser.password=null,e.newUser.password_confirmation=!1,e.showCreate=!1})},retrieveAllUsers:function(){var e=this,s=!(arguments.length>0&&void 0!==arguments[0])||arguments[0];this.getUsers().then(function(){s&&window.deviseSettings.$bus.$emit("incrementLoadbar",e.modulesToLoad)})},loadUser:function(e){this.$router.push({name:"devise-users-edit",params:{userId:e}})}}),computed:Object(n["a"])({},Object(l["c"])("devise",["users"]),{createInvalid:function(){return null===this.newUser.name||null===this.newUser.email||null===this.newUser.password||null===this.newUser.password_confirmation||this.newUser.password!==this.newUser.password_confirmation}}),components:{ActionBar:function(){return Promise.all([t.e("devise-editors~devise-utilities"),t.e("devise-utilities")]).then(t.bind(null,"f8ec"))},DeviseModal:function(){return Promise.all([t.e("devise-editors~devise-utilities"),t.e("devise-utilities")]).then(t.bind(null,"025b"))}}},r=i,d=t("0c7c"),c=Object(d["a"])(r,a,o,!1,null,null,null);s["default"]=c.exports},"6c81":function(e,s,t){"use strict";t.r(s);var a=function(){var e=this,s=e.$createElement,t=e._self._c||s;return t("div",[t("div",{attrs:{id:"devise-admin-content"}},[t("action-bar",[t("li",{directives:[{name:"devise-alert-confirm",rawName:"v-devise-alert-confirm",value:{callback:e.requestDeleteUser,message:"Are you sure you want to delete this user?"},expression:"{callback: requestDeleteUser, message: 'Are you sure you want to delete this user?'}"}],staticClass:"dvs-btn dvs-btn-sm dvs-mb-2",style:e.theme.actionButton},[e._v("Delete This User")])]),t("h3",{staticClass:"dvs-mb-8 dvs-pr-16",style:{color:e.theme.panel.color}},[e._v(e._s(e.localValue.name)+" Settings")]),t("div",[t("form",[t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Name of User")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.localValue.name,expression:"localValue.name"}],attrs:{type:"text",autocomplete:"off",placeholder:"Name of the User"},domProps:{value:e.localValue.name},on:{input:function(s){s.target.composing||e.$set(e.localValue,"name",s.target.value)}}})]),t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Email")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.localValue.email,expression:"localValue.email"}],attrs:{type:"text",autocomplete:"off",placeholder:"Email of the User"},domProps:{value:e.localValue.email},on:{input:function(s){s.target.composing||e.$set(e.localValue,"email",s.target.value)}}})]),e.showPassword?e._e():t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Edit Password?")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.showPassword,expression:"showPassword"}],attrs:{type:"checkbox"},domProps:{checked:Array.isArray(e.showPassword)?e._i(e.showPassword,null)>-1:e.showPassword},on:{change:function(s){var t=e.showPassword,a=s.target,o=!!a.checked;if(Array.isArray(t)){var n=null,l=e._i(t,n);a.checked?l<0&&(e.showPassword=t.concat([n])):l>-1&&(e.showPassword=t.slice(0,l).concat(t.slice(l+1)))}else e.showPassword=o}}})]),e.showPassword?[t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Password")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.localValue.password,expression:"localValue.password"}],attrs:{type:"password",autocomplete:"off"},domProps:{value:e.localValue.password},on:{input:function(s){s.target.composing||e.$set(e.localValue,"password",s.target.value)}}})]),t("fieldset",{staticClass:"dvs-fieldset dvs-mb-4"},[t("label",[e._v("Password Confirm")]),t("input",{directives:[{name:"model",rawName:"v-model",value:e.localValue.password_confirmation,expression:"localValue.password_confirmation"}],attrs:{type:"password",autocomplete:"off"},domProps:{value:e.localValue.password_confirmation},on:{input:function(s){s.target.composing||e.$set(e.localValue,"password_confirmation",s.target.value)}}})])]:e._e()],2),t("div",{staticClass:"dvs-flex"},[t("button",{staticClass:"dvs-btn dvs-mr-2",style:e.theme.actionButton,on:{click:e.requestSaveUser}},[e._v("Save")]),t("button",{staticClass:"dvs-btn dvs-mr-4",style:e.theme.actionButtonGhost,on:{click:function(s){return e.goToPage("devise-users-index")}}},[e._v("Cancel")])])])],1)])},o=[],n=t("5176"),l=t.n(n),i=t("cebc"),r=t("2f62"),d={name:"UsersView",data:function(){return{localValue:{},modulesToLoad:1,showPassword:!1}},mounted:function(){this.retrieveAllUsers()},methods:Object(i["a"])({},Object(r["b"])("devise",["getUsers","deleteUser","updateUser"]),{requestSaveUser:function(){this.updateUser({user:this.user,data:this.localValue})},requestDeleteUser:function(){var e=this;this.deleteUser(this.user).then(function(){e.goToPage("devise-users-index")})},retrieveAllUsers:function(){var e=this;this.getUsers().then(function(){e.localValue=l()({},e.localValue,e.user),window.deviseSettings.$bus.$emit("incrementLoadbar",e.modulesToLoad)})}}),computed:Object(i["a"])({},Object(r["c"])("devise",["user"])),components:{ActionBar:function(){return Promise.all([t.e("devise-editors~devise-utilities"),t.e("devise-utilities")]).then(t.bind(null,"f8ec"))}}},c=d,u=t("0c7c"),v=Object(u["a"])(c,a,o,!1,null,null,null);s["default"]=v.exports}}]);
//# sourceMappingURL=devise-users.js.map