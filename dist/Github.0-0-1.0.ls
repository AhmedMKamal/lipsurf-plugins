import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';var Github={...PluginBase,niceName:"Github",languages:{},description:"An experimental plugin for github.com",match:/.*/,version:"0.0.1",authors:"Ahmed Kamal",commands:[{name:"Search Github",description:"Do a Github search.",match:"search github *",pageFn:function(transcript,search){const query=encodeURIComponent(search);window.open("https://github.com/search?q="+query,"_blank");}}]};

export default Github;LS-SPLITallPlugins.Github = (() => { var Github={...PluginBase,commands:{"Search Github":{pageFn:function(transcript,search){const query=encodeURIComponent(search);window.open("https://github.com/search?q="+query,"_blank");}}}};

return Github;
 })()LS-SPLIT