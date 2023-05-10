import plugin from 'tailwindcss/plugin';
import type { PluginAPI } from 'tailwindcss/types/config';
import test from '../style';

const main = ({ config, addComponents }: PluginAPI) => {
	addComponents(test);
};

export default plugin(main, {});
