/// <reference types="lipsurf-types/extension"/>

declare const PluginBase: IPluginBase;

export default <IPluginBase & IPlugin>{
    ...PluginBase, ...{
        niceName: 'Github',
        description: 'An experimental plugin for github.com',
        match: /.*/,
        version: '0.0.1',
        authors: 'Ahmed Kamal',

        commands: [
            {
                name: 'Search Github',
                description: 'Do a Github search.',
                match: 'search github *',
                pageFn: function (transcript: string, search: string) {
                    const query = encodeURIComponent(search)
                    window.open(`https://github.com/search?q=${query}`, '_blank');
                }
            }
        ]
    }
};
