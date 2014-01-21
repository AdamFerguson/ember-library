import startApp from 'appkit/tests/helpers/start_app';

function registerStore(container, Store) {
  if (!Store) {
    Store = window.TestStore;
  }
  container.register('store:main', Store);
}

export default registerStore;