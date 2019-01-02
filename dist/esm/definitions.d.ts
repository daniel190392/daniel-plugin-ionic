declare global {
    interface PluginRegistry {
        DanielPlugin?: DanielPluginPlugin;
    }
}
export interface DanielPluginPlugin {
    setKeychain(options: {
        textToSave: string;
        identifierOfKey: string;
    }): Promise<{
        value: Object;
    }>;
    setKeychainWithBoolean(options: {
        textToSave: string;
        identifierOfKey: string;
        status: boolean;
    }): Promise<{
        value: Object;
    }>;
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
