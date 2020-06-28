import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';/// <reference types="lipsurf-types/extension"/>
var ExperimentalPlugin = {
    ...PluginBase,
    ...{
        niceName: 'Experimental Plugin',
        languages: {},
        description: '...',
        match: /.*/,
        version: '1.0.0',
        authors: 'Ahmed Kamal',

        commands: [
            {
                name: 'Search Github',
                description: '...',
                match: 'search github *',
                pageFn: function (transcript, search) {
                    const query = encodeURIComponent(search);
                    window.open(`https://github.com/search?q=${query}`, '_blank');
                }
            },
            {
                name: 'Spotify - Next Song',
                description: '...',
                match: 'spotify next',
                init: function () {
                    chrome.runtime.onMessage.addListener(function (msg, sender, sendResponse) {
                        if (msg.text === 'report_back') {
                            sendResponse(null);
                        }
                    });
                    alert('Spotify next initialized!');
                },
                fn: function () {
                    /*const url = 'https://open.spotify.com/';
                    return chrome.tabs.query({url}, (tabs) => {
                        const id = tabs.length && tabs[0].id || -1;
                        if (id > -1) {
                            chrome.tabs.update(id, {highlighted: true});
                        }
                    })*/
                    function doStuffOnThePage() {
                        alert('Running on the page!');
                    }
                    chrome.browserAction.onClicked.addListener(function (tab) {
                        if (typeof tab.id === 'number') {
                            chrome.tabs.sendMessage(tab.id, { text: 'report_back' }, doStuffOnThePage);
                        }
                    });
                }
            }
        ]
    }
};

export default ExperimentalPlugin;LS-SPLITallPlugins.ExperimentalPlugin = (() => { /// <reference types="lipsurf-types/extension"/>
var ExperimentalPlugin = {
    ...PluginBase,
    ...{
        commands: {
            "Search Github": {
                pageFn: function (transcript, search) {
                    const query = encodeURIComponent(search);
                    window.open(`https://github.com/search?q=${query}`, '_blank');
                }
            },

            "Spotify - Next Song": {
                init: function () {
                    chrome.runtime.onMessage.addListener(function (msg, sender, sendResponse) {
                        if (msg.text === 'report_back') {
                            sendResponse(null);
                        }
                    });
                    alert('Spotify next initialized!');
                }
            }
        }
    }
};

return ExperimentalPlugin;
 })()LS-SPLIT