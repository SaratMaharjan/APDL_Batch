const compose = (...fns) => start =>
  fns.reduceRight((state, fn) => fn(state), start);

const curry = fn => (...args) => args.length >= fn.length
  ? fn(...args)
  : (...otherArgs) => curry(fn)(...args, ...otherArgs);

const prop = curry((key, obj) => obj[key]);

const upperCase = curry((str) => str.toUpperCase());

const formatName = compose(
  upperCase,
  prop('name')
);

const person = {
  name: 'Tim',
};

console.log(formatName(person));
