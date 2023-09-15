/* eslint-env node */
require('@rushstack/eslint-patch/modern-module-resolution')

module.exports = {
  root: true,
  'extends': [
    'plugin:vue/vue3-recommended',
    'eslint:recommended',
    '@vue/eslint-config-prettier/skip-formatting'
  ],
  'rules': {
    'vue/no-unused-vars': 'warn'
  },
  parserOptions: {
    ecmaVersion: 'latest'
  }
}
