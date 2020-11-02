//체크박스 전체 체크 및 해제
$(function(){
    let allcheck =  $("input[name='allcheck']");
    let checkbox = $("input[type='checkbox']");
    allcheck.click(function(){
        if(allcheck.prop("checked")){
            checkbox.prop("checked", true);
        }else{
            checkbox.prop("checked", false);
        }
    });
});


// });
//선택상품 삭제 버튼
$(function(){
    $(".cssButtonGray").click(function(){
        $(".checkbox:checked").each(function(){
            $(this).parentsUntil("tbody").next().remove();
            $(this).parentsUntil("tbody").remove();
        });
        if($("tbody").children().length==0){
            let text = "<div class='tb-center'>장바구니에 담긴 상품이 없습니다.</div>";
            $(text).replaceAll("tfoot div");
        }
    });
});

$(function(){
    $("#remove").click(function(){
        let result = confirm("장바구니를 비우시겠습니까?")
        if(result){
            $("tbody").children("tr").remove();
            let text = "<div class='tb-center'>장바구니에 담긴 상품이 없습니다.</div>";
            $(text).replaceAll("tfoot div");
        }else{
            return false;
        }
    });
});


/*1. 왜 아래코드 만으로는 실행이 안될까
if($("tbody").children().length==0){
    let text = "<div class='tb-center'>장바구니에 담긴 상품이 없습니다.</div>";
    $(text).replaceAll("tfoot div");
}
2. 왜 #remove 클릭시 result에 따라서 실행이 안될까*/