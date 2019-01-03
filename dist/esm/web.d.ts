import { WebPlugin } from '@capacitor/core';
import { DanielPluginPlugin } from './definitions';
export declare class DanielPluginWeb extends WebPlugin implements DanielPluginPlugin {
    constructor();
    setKeychain(options: {
        textToSave: string;
        identifierOfKey: string;
    }): Promise<{
        value: any;
    }>;
    setKeychainWithBoolean(options: {
        textToSave: string;
        identifierOfKey: string;
        status: boolean;
    }): Promise<{
        value: any;
    }>;
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
declare const DanielPlugin: DanielPluginWeb;
export { DanielPlugin };
