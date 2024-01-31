const n = 50;
const f0 = 0;
const f1 = 1;

let result: number;
const fArr: number[] = [];

const findFN = (n: number) => {
   for (let i = 0; i < n + 1; i++) {
      if (i === 0) {
         fArr.push(f0);
      } else if (i === 1) {
         fArr.push(f1);
      } else {
         const temp = fArr[i - 1] + fArr[i - 2];
         fArr.push(temp);
      }
   }
};

findFN(50);
console.log(`F50 is ${fArr[50]}`);
