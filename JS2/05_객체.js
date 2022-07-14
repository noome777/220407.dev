window.onload = () => {
    const btn1 = document.getElementById('btn1');

    btn1.addEventListener("click", function(){
        let product = {
            pName : '아이폰',
            price : 100000,
            'brand' : '애플',
            'max battery time' : 12,
            nums : [10, 20, 30, 'one', 'two', 'three'],
            obj : {
                a : 'appple',
                b : 'banana',
                c : 'chocolate'
            },
            f01 : () => {
                // console.log("현재 객체의 pName : " + this.pName); --> 익명함수에서는 먹히는데 , 화살표 함수는 이거 안먹힘(this가 현재 객체를 가르키지 못함)
                console.log("현재 객체의 pName : "+ product.pName); 
                return 777;
            }
        };

        console.log(product);

        console.log(product.pName);
        console.log(product.price);
        console.log(product.brand);
        // console.log(product.max battery time); --> 띄어쓰기 있어서 안됨
        console.log(product["max battery time"]);
        console.log(product.nums);
        console.log(product.obj);
        console.log(product.nums[4]);//two
        console.log(product.obj['c']);//chocolate
        console.log(product.obj.c);//chocolate
        console.log(product.f01);//함수 전체가 출력됨
        console.log(product.f01());//함수 안의 내용이 출력됨

        // let x = 'pName';
        // console.log(product[x]);
        // console.log(product['price']);
        // console.log(product['brand']);
    });//addEventListener end






    //객체와 반복문
    const btn2 = document.getElementById('btn2');

    btn2.addEventListener("click", function(){
        const game = {
            title : '메이플스토리',
            price : '100',
            os : ['window', 'mac', 'linux']
        };

        console.log(game);

        for(let key in game){
            console.log(`키값 : ${key}, value : ${game[key]}`);
        }

    });//addEventListener







    const btn3 = document.getElementById('btn3');

    btn3.addEventListener("click", function(){
        const student = {};

        student.name = "이아름",
        student.age = 24,
        student['height'] = 166,
        student.introduce = function(){
            console.log("name : " + this.name);
            console.log("age : " + this.age);
            console.log("height : " + this.height);
        }
        
        console.log(student);
        student.introduce();

        console.log('height' in student);
        console.log('weight' in student);

        delete(student.height);

        console.log('height' in student);
        console.log('weight' in student);

        console.log(student);
        console.log(student.height);

    });//addEventListener






    
    //객체 배열
    const btn4 = document.getElementById('btn4');
    
    btn4.addEventListener("click", function(){
        
        //배열을 사용하지 않고
        const user01 = {name : '이아름', height : 166, weight : 100};

        const userArr = [
            {name:'이아름', height:166, weight:100},
            {name:'일아름', height:166, weight:100}

        ];

        userArr.push({name:'삼아름', height:166, weight:100});
        const tempUser = {name:'사아름', height:166, weight:100};
        userArr.push(tempUser);

        console.log(userArr);
    });//addEventListener




    //생성자 함수 => new 붙으면 this = {};과 return this가 붙는다.
    function Person(name, height, weight){
        //속성
        this.name = name;
        this.height = height;
        this.weight = weight;
        this.thisVar = '디스의 변수에 넣은 값';
        var normalVar = '일반 변수에 넣은 값';
        //여기서 var normalVar result는 출력이 안된다. => this에 붙어있는 것만 리턴된다. 
        //따라서 생성자 함수에서 리턴받으려면 this를 붙여줘야 한다.
    
        this.getName = function(){
            return this.name;
        }
    }

    Person.prototype.kh = '안녕'; //result.kh
    Person.prototype.getName = function(){
        return this.name 
        //직접생성자 함수에 작성할 수도 있고 person 함수의 prototype에 추가할 수도 있다.
        //prototype은 Person 함수 생성과 동시에 존재한다.
        //prototype 생성시에 생기는 생성자 constructor는 person을 가르킨다.(참조하고 있음)
        //즉, person 객체 안에 prototype 존재 -> prototype 안에는 constructor 존재
    }

    // function f01(str,num){
    //     // var this = {};
    //     this.name = str;
    //     this.age = num;
    //     // return this;
    // }
    // --> 이거는 함수 호출해도 리턴값이 없어서 출력하면 undefined 나옴
    // 그러나 여기서 var s1 = new f01('이아름', 24);로 new를 붙여주면
    // s1 을 출력했을 때 f01 {name: '이아름', age: 24} 이런식으로 밑과 같은 결과가 나온다.
    // ********new가 있느냐 없느냐에 따라 차이 난다.
    // 객체를 만드는 것이 목적이므로 함수 이름의 첫글자는 대문자를 관습적으로 사용한다.
    //new라는 키워드가 붙으면 자동으로 함수 안에 var this = {};과 return this가 추가된다고 보면 된다.

    // function f01(str,num){
    //     var this = {};
    //     this.name = str;
    //     this.age = num;
    //     return this;
    // } --> 이거는 함수 호출하면 {name: '이아름', age: 24} 이런식으로 나옴


    // function plus(num1, num2){
    //     console.log(num1+num2);
    // }

    // plus(2,3);  5

    // 1. var result = plus(2,3);
    // console.log(result);  undefined

    // 2. var result = new plus(2,3);  
    // console.log(result);  plus{} --> new가 추가되면 빈객체생성, 그객체리턴 해준다/
    

    // function Person(str,num){
    //     var name = str;
    //     var age = num;
    //     this.getName = function(){
    //         return name
    //     };
    // }
    //--> closer 함수에 대한 설명. Person이 죽어버려도 name이 리턴된다.





    const btn5 = document.getElementById('btn5');

    btn5.addEventListener('click', function(){

        // var result = new Person('이아름', 166, 50);
        //앞에 new를 넣어주면 생성자 함수가 된다.
        //new 안넣으면 result 출력해도 undefined 나옴.
        // console.log(result);

        result = new Person('이아름', 166, 50);
        console.log(result);
        console.log(result.getName());

    });


















}//onload
