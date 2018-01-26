const phone = require('./index');

test('pass A return 2', () => {
  expect(phone('A')).toBe('2');
});

test('pass E return 3', () => {
  expect(phone('E')).toBe('3');
});

test('pass C return 2', () => {
  expect(phone('C')).toBe('2');
});

test('pass AD return 23', () => {
  expect(phone('AD')).toBe('23');
});

test('pass AJM return 256', () => {
  expect(phone('AJM')).toBe('256');
});

test('pass 1-HOME-SWEET-HOME return 1-4663-79338-4663', () => {
  expect(phone('1-HOME-SWEET-HOME')).toBe('1-4663-79338-4663');
});

test('pass MY-MISERABLE-JOB return 69-647372253-562', () => {
  expect(phone('MY-MISERABLE-JOB')).toBe('69-647372253-562');
});

test('pass My-MiSErabLe-joB return 69-647372253-562', () => {
  expect(phone('My-MiSErabLe-joB')).toBe('69-647372253-562');
});

test('pass 1*b return 1*2', () => {
  expect(phone('1*b')).toBe('1*2');
});
