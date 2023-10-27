module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'footer-empty': [2, 'always'],
    'footer-leading-blank': [0, 'never'],
    'footer-max-line-length': [0, 'never'],
    'header-max-length': [2, 'always', 50],
  },
};
