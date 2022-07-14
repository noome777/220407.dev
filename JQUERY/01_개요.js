window.onload = function(){
    const result = $('p');
    console.log(result);
    // console.log("1111");
}

window.onload = function(){
    console.log("2222");
}


//    jQuery(document).ready(function(){
//     console.log("제이쿼리 잘 되는지 ...");
//    });

//    jQuery(document).ready(function(){
//     console.log("제이쿼리 잘 되는지 ...2222");
//    });

//제이쿼리는 $로 대체 된다.
$(function(){
    console.log('제이쿼리 잘 되는지 ...');
    
    console.log($('h3')[0]);

    //각 요소의 배경색 빨강으로 변경
    // const arr = document.getElementsByTagName('h3');
    // for(let i in arr){
    //     arr[i].style.backgroundColor = 'red';
    // }

    //또는 위와 같은 결과로 (css)
    $('h3').css('backgroundColor', 'red');
    
    //또는 (jquery)
    // const tempArr = $('h3');
    // for(let i = 0; i < tempArr.length; i++){
    //     tempArr[i].style.backgroundColor = 'red';
    // }

    $('#target').css('backgroundColor', 'red'); 
    $('#target').css('width', '100px'); 
    $('#target').css('height', '100px'); 
    
});