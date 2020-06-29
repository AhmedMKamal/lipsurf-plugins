import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';function ensurePermission(perm){return new Promise(cb=>{chrome.permissions.contains({permissions:[perm]},granted=>{granted?cb(!0):chrome.permissions.request({permissions:[perm]},granted=>{cb(granted);});});})}var CopyCutPaste={...PluginBase,niceName:"Copy, Cut and Paste",languages:{},description:"Permissions must be granted with the mouse the first time this plugin is used.",version:"3.4.3",match:/.*/,homophones:{coffee:"copy",poppee:"copy",pissed:"paste",taste:"paste"},authors:"Miko",commands:[{name:"Copy",description:"Copies the selected text to the clipboard.",match:"copy",fn:async()=>{await ensurePermission("clipboardWrite");},pageFn:async()=>{document.execCommand("copy");}},{name:"Cut",description:"Cut the selected text to the clipboard.",match:"cut",fn:async()=>{await ensurePermission("clipboardWrite");},pageFn:async()=>{document.execCommand("cut");}},{name:"Paste",description:"Paste the item in the clipboard.",match:"paste",fn:async()=>{await ensurePermission("clipboardRead");},pageFn:async()=>{document.execCommand("paste");}}]};

export default CopyCutPaste;LS-SPLITallPlugins.CopyCutPaste = (() => { var CopyCutPaste={...PluginBase,commands:{Copy:{pageFn:async()=>{document.execCommand("copy");}},Cut:{pageFn:async()=>{document.execCommand("cut");}},Paste:{pageFn:async()=>{document.execCommand("paste");}}}};

return CopyCutPaste;
 })()LS-SPLIT