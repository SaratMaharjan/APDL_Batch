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
