//1. 변수와 자료형
//전역변수 선언
str1 = '전역변수';

var str2 = '전역변수'; //함수 밖에 있으니까 전역변수


function f01(){
    temp = '안녕' //전역변수이므로 함수 밖에서 콘솔로그로 잘 출력 됨
}//html의 script에서 잘가라고 재할당해줌
f01();
console.log(temp);


//페이지가 모두 로드되면(onload) 자동으로 실행되는 함수(function()) 구현
window.onload = function() {
    
    // var temp ='지역변수';
    // temp ='전역변수';
    
    var str1 = '지역변수';//위의 str1과 다른 거임
    var str3 = '지역변수';
    var str4;
    str5 = '전역변수'; //함수 내부에서 변수명 = '';으로 선언 하면(var ㄴㄴ) 전역변수이다.

    console.log(str1);          //지역-> 함수 안쪽에서는 가까운 쪽인 지역변수가 우선순위이다
    console.log(window.str1);   //전역(이걸로 전역변수 사용하는 것을 지향함)
    console.log(this.str1);     //전역(지양하는 편) == window.str1

    console.log('=======================');

    console.log(str2);          //전역
    console.log(window.str2);   //전역
    console.log(this.str2);     //전역

    console.log('=======================');

    console.log(str3);          //지역
    console.log(window.str3);   //언디파인--> 함수 밖 출력되는 부분에 str3 없음
    console.log(this.str3);     //언디파인

    console.log('=======================');

    console.log(this); //Window 객체가 출력됨.

    console.log('=======================');
    
    console.log(str4); //undefined
    console.log(typeof str4); //undefined
    
    console.log('=======================');

    console.log(str5);          //전역
    console.log(window.str5);   //전역
    console.log(this.str5);     //전역







    console.log('=========== 중복 선언 테스트 ===========');
    //var , let , const
    //1) 중복 선언

    var num = 0;
    console.log(num);
    
    var num = 10;
    console.log(num);
    
    var num = 20;
    console.log(num);

    console.log('=======================');

    let numLet = 10;
    console.log(numLet);
    
    // let numLet = 20;--> 재선언, 중복선언 불가
    numLet = 20;
    console.log(numLet); //->  재할당은 가능

    console.log('=======================');

    const numConst = 0;
    console.log(numConst);
    
    // const numConst = 10;--> 재선언, 중복선언 불가

    // numConst = 10;--> 재할당도 불가, 자바에서의 final과 비슷함
    // console.log(numConst);


    //2) 유효 범위 (스코프)
    // - 함수 안에서 var 키워드로 선언된 변수는 함수 유효 범위를 갖는다. (매우 유연함)
    // - 함수 안에서 let, const 키워드로 선언된 변수는 블록 유효 범위를 갖는다.

    //예제1
    if(true){
        var temp = 10;
        console.log("if 문 안쪽 temp : " + temp);
    }
    console.log("if 문 바깥쪽 temp : " + temp);

    //예제2
    if(1 > 0){
        var x = 10; 
        // 그러나 var는 if문을 벗어나도 함수 안에있다면 f02()함수에서도 살아 있다.
       
        // let x = 10; 
        // const x = 10; 
        //let과 const는 if문을 벗어나면 죽는다.
    }

}//window.onload funtion end




//자료형 테스트
function typeTest() {
    let name = '이아름'; //문자열
    let age = 24; //숫자
    let height = 166; //숫자
    let check = false; //논리
    let food = ['치킨', '피자', '제육']; //배열[]
    //객체{}
    let user = {
        'my name' : '이아름',
        name : '이아름',
        age :  24,
        height : 166,
        weight : 100,
        food : ['치킨', '피자', '제육']
    };
    //함수
    let plus = function(a,b){
        return a+b
        //이 함수가 plus 라는 변수에 들어가게 된다.
    }

    console.log(typeof name);    //string
    console.log(typeof age);     //string
    console.log(typeof height);  //string
    console.log(typeof check);   //boolean
    console.log(typeof food);    //object
    console.log(typeof user);    //object
    console.log(typeof plus);    //function
}







// 강제 형변환
function castingTest(){
    
    console.log("================== casting test ================");

    var result = 2 + '3'
    console.log(result);

    var result = 2 + Number('3');
    console.log(result);

    var result = String(2) + Number(3);
    console.log(result);

    var result = 2 + parseInt('3');
    console.log(result);

    var result = 2 + parseFloat('3');
    console.log(result);


}




//for in test
function forInTest() {

    let arr = ['apple', 'banana', 'tomato'];
    // for(let i = 0; i < arr.length; i++){
        //     console.log(arr[i]);
        // }
        
    console.log("====================================");
        
    //for in
    for(let i in arr){
        console.log(i);
        console.log(arr[i]);
    }

    console.log("====================================");

    //ES6 에 추가된 for문
    for(let x of arr){
        console.log(x);
    }

}




