const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const btn3 = document.getElementById('btn3');


function f01(){
    //요소 생성
    const h1 = document.createElement('h1');

    //텍스트 노드 생성
    const hello = document.createTextNode("안녕");

    //위에서 만든 거 2개 합치기
    h1.appendChild(hello);

    //화면에 보여주기
    document.getElementById('result1').appendChild(h1);
}

function f02(){
    //텍스트 노드가 없는 요소 생성
    const img = document.createElement('img');

    img.alt = '동적으로생성한이미지';
    img.src = 'image01.jpg';
    img.setAttribute('width', '100px');
    img.setAttribute('height', '100px');

    document.getElementById('result2').appendChild(img);
}

function f03(){
    //노드 삭제
    document.getElementById('result3').remove();
}

btn1.addEventListener("click", f01);
btn2.addEventListener("click", f02);
btn3.addEventListener("click", f03);

