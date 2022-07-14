//---------------1. 선언적 함수
function test1(){
    alert('test1 called ...');
}




//---------------2. 익명 함수
const btn1 = document.getElementById('btn1');

btn1.addEventListener('click', function(){
    alert('익명함수 실행됨 ...');
});

// var temp = function(){
//     alert('익명함수 실행됨 ...');
// };
// btn1.addEventListener('click', temp);




//----------------3. 자동 실행 함수
// (
// function(){
//     alert('자동실행 함수 호출됨 ...');
// }()
// );



//----------------4. arrow function test
// var arrowFunction = function(){
//     return 10;
// };

// var arrowFunction = function(a,b){
//     result = a + b;
//     return result;
// }
// console.log(arrowFunction(10,20));

// var arrowFunction = () => { return 10;};
var arrowFunction = () => 10;


var arrowFunction = a => {
    result = a * 10;
    return result;
}

// console.log(arrowFunction());
// console.log(arrowFunction(7));




//----------------가변인자 테스트
const btn2 = document.getElementById('btn2');

btn2.addEventListener("click", function(){
    console.log('가변 인자 테스트 버튼 클릭됨 ...');
    // argTest('값전달', '두번째값', '세번째값');
    sum(10, 20, 30);
});

// function argTest(x){
//     alert(x);
//     console.log(arguments);
// }

function sum(){
    var result = 0;
    for(let i = 0; i < arguments.length; i++){
        result += arguments[i];
    }
    console.log(result);
}


//----------------익명함수 리턴 테승트
const btn3 = document.getElementById('btn3');

btn3.addEventListener("click", function(){
    var result = getAnonymousFunc();
    console.log(result);
    result();
});

function getAnonymousFunc(){
    var count = 0;
    return function(){
        alert(count)
    }
    //현재 함수에 외부에 있는 변수를 내부 함수가 참조할 때 내부 함수가 죽어야만 외부에 있는 변수가 같이 죽는다 
    //이런 함수를 클로저라고 함-> count라는 변수를 함부로 바꾸지 못하게 하려고 사용함
};


var old = getOldFunc();

function getOldFunc(){
    var age = 20;
    return function(){
        alert(age);
        age++;
    }
};