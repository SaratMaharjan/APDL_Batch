'use strict';
/* eslint no-unused-vars: 'off' */

/* // Polyfill for bind Method
if (!Function.prototype.bind) {
  Function.prototype.bind = function(oThis) {
    if (typeof this !== 'function') {
      // closest thing possible to the ECMAScript 5 internal IsCallable function
      throw new TypeError('Function.prototype.bind - what is trying to be bound is not callable');
    }
    var aArgs = Array.prototype.slice.call(arguments, 1),
      fToBind = this,
      fNOP = function () {},
      fBound = function () {
        return fToBind.apply(this instanceof fNOP && oThis ?
          this :
          oThis,
          aArgs.concat(Array.prototype.slice.call(arguments)));
      };
    fNOP.prototype = this.prototype;
    fBound.prototype = new fNOP();
    return fBound;
  };
} */

/*
This
::foo.bar
is equivaleent to
foo.bar.bind(foo)
in ES7
*/

/*
const deepFrozen = (() => {
  const deepFreeze = require('deep-freeze');
  let someObj = { value: 5 };
  deepFreeze(someObj);
  someObj.value = 10;
})();
 */

const rxjs_ = () => {
  const Rx = require('rxjs/Rx');
  // import { Observable } from 'rxjs/Observable';
  // import 'rxjs/add/observable/of';
  // import 'rxjs/add/operator/map';

  const myObservable = new Rx.Subject();
  myObservable.subscribe(value => console.log(value));
  myObservable.next('foo');
  myObservable.next('fooooo');

  const myObservable2 = Rx.Observable.create(observer => {
    observer.next('foo');
    // setTimeout(() => observer.next('bar'), 1000);
    setInterval(() => observer.next('bar'), 1000);
  });
  // myObservable2.subscribe(value => console.log(value));

  // let input = Rx.Observable.fromEvent(document.querySelector('input'), 'input');

  let stopStream = Rx.Observable.create(observer => {
    setTimeout(() => observer.next('stopStream'), 6000);
  });
  stopStream.subscribe(value => console.log('stop stream occured'));

  // Filter out target values less than 3 characters long
  myObservable2.filter(event => true)
    // Let through latest event after 200 ms
    .debounceTime(200)
    // Only let through an event every 200 ms
    .throttleTime(2000)
    // Delay the events
    .delay(200)
    // .take(5)
    .takeUntil(stopStream)
    .pluck(' value')
    .pairwise()
    .map(event => event + event)
    .subscribe(value => console.log(value));
};
// rxjs_();

const reduceFlatten = () => {
  const sum = [0, 1, 2, 3].reduce(function(acc, val) {
    return acc + val;
  }, 0);
  console.log(sum);

  const flatten = arr => arr.reduce(
    (acc, val, index, array) => acc.concat(
      Array.isArray(val) ? flatten(val) : val
    ),
    []
  );
  const list1 = [[0, 1], [2, 3], [4, 5]];
  console.log(flatten(list1)); // returns [0, 1, 2, 3, 4, 5]
};
// reduceFlatten();

const assign = () => {
  // Merge an object
  let first = { name: 'Tony' };
  let last = { lastName: 'Stark' };
  let person = Object.assign(first, last);
  console.log(person);
  console.log(first);

  // Merge multiple sources
  let a = Object.assign({ foo: 0 }, { bar: 1 }, { baz: 2 });
  console.log(a);

  // Merge and overwrite equal keys
  let b = Object.assign({ foo: 0 }, { foo: 1 }, { foo: 2 });
  console.log(b);

  // Clone an object
  let obj = { person: 'Thor Odinson' };
  let clone = Object.assign({}, obj);
  console.log(clone);
};
// assign();

const lodashes = () => {
  const _ = require('lodash');
  // console.log(_.chunk(['a', 'b', 'c', 'd'], 2));
  // console.log(_.compact([0, 1, false, 2, '', 3]));
  // console.log(_.concat([1], 2, [3], [[4]]));
  // console.log(_.flattenDeep([1, [2, [3, [4]], 5]]));

  let foo = { a: 'a property' };
  let bar = { b: 4, c: 'an other property' };
  let result = _.assign({ a: 'an old property' }, foo, bar);
  console.log(result);

  _.times(5, () => {
    console.log(Math.round(Math.random() * 100));
  });

  const users = [
    { firstName: 'John', lastName: 'Doe', age: 28, gender: 'male' },
    { firstName: 'Jane', lastName: 'Doe', age: 5, gender: 'female' },
    { firstName: 'Jim', lastName: 'Carrey', age: 54, gender: 'male' },
    { firstName: 'Kate', lastName: 'Winslet', age: 40, gender: 'female' }
  ];
  console.log(_.find(users, { lastName: 'Doe', gender: 'male' }));
  console.log(_.find(users, user => user.age < 18));
  _.set(users, 'foo.items[0]', 'An item');
  console.log(users);
  console.log(_.get(users, 'name', 'Default Return if key doesnot exist'));

  let original = { foo: 'bar' };
  let copy = _.cloneDeep(original);
  copy.foo = 'new value';
  console.log(original);
  console.log(copy);

  let sortedArray = [1, 1, 2, 3, 3, 3, 5, 8, 8];
  console.log(_.sortedUniq(sortedArray));

  console.log(_.random(15, 20));

  let objA = { 'name': 'colin', 'car': 'suzuki', 'age': 17 };
  let objB = _.omit(objA, ['car']);
  console.log(objB);
  objB = _.omitBy(objB, _.isNumber);
  console.log(objB);
  objB = _.pick(objA, ['car', 'age']);
  console.log(objB);
  console.log(objA);
  console.log(_.sample(objA));
};
// lodashes();

const utils = {
  steuerlastfall() {
    // units cm
    const length = 1040;
    const diameter = 1015;
    // const radius = diameter / 2;
    const cylDia = 944;
    const cylRad = cylDia / 2;

    const force = 120000;
    const fMom = 0.65 * force;
    // const fEff = 0.25 * force;

    console.log( 'Math.PI : ' + Math.PI );

    const pMom = fMom / ( Math.PI * cylDia );

    const moment = 1 / 2 * pMom * cylRad * cylRad * Math.PI;
    console.log( 'Moment : ' + moment );

    // var earthMoment = 1 / 2 * fMom * cylRad * cylRad * Math.PI;
    // console.log( 'Earth Moment : ' + earthMoment );

    const pres = 3 / 2 * Math.PI * pMom * (cylRad * cylRad) / (length * length) * 1 / diameter;
    const presEffective = 1.5 * pres;

    console.log( 'Pressure : ' + pres );
    console.log( '1.5x Pressure : ' + presEffective );

    const presOriginal = 0.081;
    let presAdd = presOriginal + presEffective;
    let presSub = presOriginal - presEffective;

    if ( presSub < 0 ) {
      presAdd -= presSub;
      presSub -= presSub;
    }
    console.log( 'New Pressure: ' + presAdd + ' and ' + presSub );
  },

  radius(area) {
    const radii = Math.sqrt(4 * area / Math.PI);
    console.log(radii);
  },

  forceRes() {
    const fx = 872846;
    const fy = 1319174;
    const res = Math.sqrt(Math.pow(fx, 2) + Math.pow(fy, 2));
    console.log(res);
  },

  forceComp() {
    const cangle1 = Math.cos(28 * Math.PI / 180);
    const cangle2 = Math.cos(23.7 * Math.PI / 180);
    const sangle1 = Math.sin(28 * Math.PI / 180);
    const sangle2 = Math.sin(23.7 * Math.PI / 180);
    const force1 = 1900 / (sangle1 + cangle1 / cangle2 * sangle2);
    console.log('F1: ' + force1 + ' and ' + 'F2: ' + force1 * cangle1 / cangle2);
  },

  tuts() {
    const h = '5';
    console.log(h + 1); // Concatenation: show the string '51'
    const i = Number('5');
    console.log(i + 1); // Numerical addition: show the number 6

    const name = prompt('Enter your first name:');
    alert(`Hello, ${ name }`);

    const expression = 1;
    switch (expression) {
    case 0:
      // Code to run when the expression matches value1
      break;
    case 1:
      // Code to run when the expression matches value2
      break;
    default:
      // Code to run when neither case matches
    }

    let number = 1;
    while (number <= 5) {
      console.log(number);
      number++;
    }
  }
};
// utils.forceComp();

/*
Closures store references to the outer function’s variables; they do not store the actual value.
Closures get more interesting when the value of the outer function’s variable changes before the closure is called.
Because closures have access to the updated values of the outer function’s variables,
they can also lead to bugs when the outer function’s variable changes with a for loop.
*/
let closureBug = () => {
  // This example is explained in detail below (just after this code box).
  var celebrityIDCreator = function (theCelebrities) {
    var i;
    var uniqueID = 100;
    for (i = 0; i < theCelebrities.length; i++) {
      theCelebrities[i]['id'] = function ()  {
        return uniqueID + i;
      }
    }
    return theCelebrities;
  };
  var actionCelebs = [{name:'Stallone', id:0}, {name:'Cruise', id:0}, {name:'Willis', id:0}];
  var createIdForActionCelebs = celebrityIDCreator(actionCelebs);
  var stalloneID = createIdForActionCelebs[0];
  console.log(stalloneID.id()); // 103
};
// closureBug();
let closureBugFixed = () => {
  function celebrityIDCreator (theCelebrities) {
    var i;
    var uniqueID = 100;
    for (i = 0; i < theCelebrities.length; i++) {
        theCelebrities[i]['id'] = function (j)  { // the j parametric variable is the i passed in on invocation of this IIFE​
            return function () {
                return uniqueID + j; // each iteration of the for loop passes the current value of i into this IIFE and it saves the correct value to the array​
            } () // BY adding () at the end of this function, we are executing it immediately and returning just the value of uniqueID + j, instead of returning a function.​
        } (i); // immediately invoke the function passing the i variable as a parameter​
    }
    return theCelebrities;
  }
  var actionCelebs = [{name:'Stallone', id:0}, {name:'Cruise', id:0}, {name:'Willis', id:0}];
  var createIdForActionCelebs = celebrityIDCreator (actionCelebs);
  var stalloneID = createIdForActionCelebs[0];
  console.log(stalloneID.id); // 100​
  var cruiseID = createIdForActionCelebs[1];
  console.log(cruiseID.id); // 101
};
// closureBugFixed();
// understand this
let understandThis = () => {
  var obj = {
    value: 'hi',
    printThis: function() {
        console.log(this);
    }
  };
  var print = obj.printThis;
  obj.printThis(); // -> {value: 'hi', printThis: ƒ}
  print(); // -> Window {stop: ƒ, open: ƒ, alert: ƒ, ...}, undefined in node
};
// understandThis();

/*
Call and apply are pretty interchangeable.
Just decide whether it’s easier to send in an array or a comma separated list of arguments.
I always remember which one is which by remembering that Call is for comma (separated list) and Apply is for Array.
Bind is a bit different. It returns a new function.
Call and Apply execute the current function immediately. (Call is a bit faster.)
Bind is great for a lot of things. We can use it to curry functions like in the above example.
We can take a simple hello function and turn it into a helloJon or helloKelly.
We can also use it for events like onClick where we don’t know when they’ll be fired but we know what context we want them to have.

setTimeout Variables are Executed in the Global Scope.

Another instance when this is misunderstood is when we use an inner method (a closure).
It is important to take note that closures cannot access the outer function’s this variable by using the this keyword
because the this variable is accessible only by the function itself, not by inner functions.
*/

let thisClosureBug = () => {
  let user = {
    tournament:'The Masters',
    data: [
      { name: 'T. Woods', age: 37 },
      { name: 'P. Mickelson', age: 43 }
    ],
    clickHandler:function () {
      // the use of this.data here is fine, because 'this' refers to the user object, and data is a property on the user object.
      this.data.forEach(function(person) {
        // But here inside the anonymous function (that we pass to the forEach method), 'this' no longer refers to the user object.
        // This inner function cannot access the outer function's 'this'
        console.log('What is This referring to? ' + this); //[object Window]
        console.log(person.name + ' is playing at ' + this.tournament);
        // T. Woods is playing at undefined​
        // P. Mickelson is playing at undefined​
      });
    }
  };
  user.clickHandler(); // What is 'this' referring to? [object Window]
};
// thisClosureBug();
let thisClosureBugFix = () => {
  let user = {
    tournament: 'The Masters',
    data: [
      { name: 'T. Woods', age: 37 },
      { name: 'P. Mickelson', age: 43 }
    ],
    clickHandler: function(event) {
      // To capture the value of 'this' when it refers to the user object, we have to set it to another variable here:
      // We set the value of 'this' to theUserObj variable, so we can use it later
      var theUserObj = this;
      this.data.forEach(function(person) {
        // Instead of using this.tournament, we now use theUserObj.tournament
        console.log(person.name + ' is playing at ' + theUserObj.tournament);
      });
    }
  };
  user.clickHandler();
};
// thisClosureBugFix();
let bitWiseOddEven = (number) => {
  if ((number & 1) == 0) {
    console.log(`${number} is even.`);
  } else {
    console.log(`${number} is odd.`);
  }
};
// bitWiseOddEven(3);
let findIndex = () => {
  let arrayNoDups = ['a', 'b', 'c', 'd', 'e'];
  let arrayDups = ['a', 'b', 'c', 'd', 'e', 'e'];
  console.log(arrayNoDups.find(x => x === 'e'));
  console.log(arrayDups.findIndex(x => x === 'e'));
};
// findIndex();
let stringIncludes = () => {
  console.log('Name_'.repeat(3));
  console.log('hello'.startsWith('ello', 1));
  console.log('hello'.endsWith('hell', 4));
  console.log('hello'.includes('ello'));
  console.log('hello'.includes('ello', 1));
  console.log('hello hello hello'.includes('ello', 2));
};
// stringIncludes();
let checkNumber = () => {
  console.log(Number.isNaN(42));
  console.log(Number.isNaN(NaN));
  console.log(Number.isFinite(Infinity));
  console.log(Number.isFinite(-Infinity));
  console.log(Number.isFinite(NaN));
  console.log(Number.isFinite(42));
  console.log(Math.sign(42));
  console.log(Math.sign(-42));
  console.log(Math.sign(0));
  console.log(Math.sign(-0));
  console.log(Math.sign(NaN));
  console.log(Math.sign(Infinity));
};
checkNumber();
