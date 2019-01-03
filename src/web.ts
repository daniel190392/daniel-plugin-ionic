import { WebPlugin } from '@capacitor/core';
import { DanielPluginPlugin } from './definitions';

export class DanielPluginWeb extends WebPlugin implements DanielPluginPlugin {
  constructor() {
    super({
      name: 'DanielPlugin',
      platforms: ['web']
    });
  }

  async setKeychain(options: { textToSave: string, identifierOfKey: string }): Promise<{value: any }>{
    return Promise.resolve({ value: options.textToSave });
  }

  async setKeychainWithBoolean(options: { textToSave: string, identifierOfKey: string, status: boolean }): Promise<{value: any }>{
    return Promise.resolve({ value: options.status });
  }

  async echo(options: {value: string}): Promise<{value: string}> {
    return Promise.resolve({ value: options.value });
  }
}

const DanielPlugin = new DanielPluginWeb();

export { DanielPlugin };
