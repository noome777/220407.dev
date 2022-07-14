//윈도우가 로드 되었을 때 함수가 실행될 수 있도록
window.onload = function(){
    //요소 담기
    const btn1 = document.getElementById('btn1');

    //버튼의 클릭이라는 이벤트가 발생했을 때 함수를 호출한다.
    btn1.addEventListener("click", function(){
        console.log('f01 called ...');
        let arr1 = new Array();
        let arr2 = new Array(3);
        let arr3 = new Array("애플", "삼성", "구글", "테슬라");
        let arr4 = ['일', '이', '삼', '사', '오'];
        let arr5 = 
        [
            '심원용', 
            20,
            166,
            true,
            ['음악감상', '독서', '꽂꽂이'],//배열은 [], new Array()
            function(){
                console.log('배열안의함수 실행됨');
            },
            {}//객체는 {}, new Object()
        ];

        console.log(arr1);
        console.log(arr2);
        console.log(arr3);
        console.log(arr4);
        console.log(arr5);

        console.log("==================");
        
        console.log(arr5[0]);
        console.log(arr5[1]);
        console.log(arr5[2]);
        console.log(arr5[3]);
        console.log(arr5[4]);
        console.log(arr5[5]);
        console.log(arr5[6]);

        //함수 호출 방법1
        arr5[5](); //배열 안의 함수 호출 -> 콘솔실행시킴
        //함수 호출 방법2 
        var f = arr5[5]; //변수에 담아서 변수의 함수 호출
        console.log(f);
        f();

        
        // console.log("==================");

        // arr1[0] = '자바'
        // arr1[1] = 'SQL'
        // arr1[2] = 'FRONT'
        // arr1[3] = 'WEB'

        // console.log(arr1);

        // console.log("==================");

        // arr2[0] = '자바'
        // arr2[1] = 'SQL'
        // arr2[2] = 'FRONT'
        // arr2[3] = 'WEB'

        // console.log(arr2);

    
    
    }); //event listener

    //요소 가져와서 버튼2에 대입
    const btn2 = document.getElementById('btn2');

    // btn2.addEventListener('이벤트', '실행할함수');
    btn2.addEventListener('click', function(){
        var arr = [];
        arr[0] = 10;
        arr[1] = 200;
        arr[2] = 3;
        arr[3] = 40;
        arr[4] = 5000;

        // arr.sort(function(a,b){return b-a});
        var result = arr.join('@');
        console.log(result);

        console.log(arr);
    });

} //onload function
    





    // var temp = function f01(){
    //     console.log("안녕 에프공일 호출됨");
    //     return '리턴값ㅋㅋ'
    //     }
    // console.log(temp);
    // console.log(temp());--?이건 리턴값이 있을 때 사용, 리턴값 없이 이렇게 쓰면 undefined 나옴.

    // temp();
