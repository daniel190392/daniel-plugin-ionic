declare global {
  interface PluginRegistry {
    DanielPlugin?: DanielPluginPlugin;
  }
}

export interface DanielPluginPlugin {
  setKeychain(options: { textToSave: string, identifierOfKey: string}): Promise<{value: any }>;
  setKeychainWithBoolean(options: { textToSave: string, identifierOfKey: string , status: boolean }): Promise<{value: any }>;
  echo(options: {value: string}): Promise<{value: string}>;
}