// /* $(function(){
//     $('.top_info').on('click',function(){
//         let thisid =$(this).attr("id");
//         console.log(thisid)
//         $(`${id} +content_info` ).css('display','block')
//         $(`${id} +content_info` ).removeClass("displaynone")
//     });
//  */
// $(function(){
//     $('#info121').on('click',function(){
//         $(this).addClass('up')
//         $('#info121 p img').remove();
//         $('#info121 p').append('<img id="up1" src="./img/iconfinder_03-Arrow-direction-pointer-up_4510581.png" alt=""></img>');
//         $('.displaynone1').css('display','block');
//     });
//     $('#info122').on('click',function(){
//         $(this).addClass('up')
//         $('#info122 p img').remove();
//         $('#info122 p').append('<img id="up2" src="./img/iconfinder_03-Arrow-direction-pointer-up_4510581.png" alt="">');
//         $('.displaynone2').css('display','block');
//     });
//     $('#down3').on('click',function(){
//         $('#info123 p img').remove();
//         $('#info123 p').append('<img  src="./img/iconfinder_03-Arrow-direction-pointer-up_4510581.png" alt="">');
//         $('.displaynone3').css('display','block');
//     });
//     $('#up3').on('click',function(){
//         $('#info123 p img').remove();
//         $('#info123 p').append('<img id="down3" src="./img/iconfinder_04-Arrow-direction-pointer-down_4510559.png" alt="">');
//         $('.displaynone3').css('display','none');
//     });
// });

// // $(function(){
// //     $('#up3').on('click',function(){
// //         console.log("12121212")
// //         $('#info123 p img').remove();
// //         $('#info123 p').append('<img id="down3" src="./img/iconfinder_04-Arrow-direction-pointer-down_4510559.png" alt="">');
// //         $('.displaynone3').css('display','none');
// //     });
// // });



$(function(){
    $(".toggled").hide();

    $(".top_info").on("click",function(){
        $(this).addClass('top_info1');
        $('.top_info1').removeClass('top_info');
        $('.displaynone1').css('display','block');
        console.log($('.top_info1 p img').css("transform"))

        

        $(".top_info1").on('click',function(){
            $(this).addClass('top_info');
            $('.top_info').removeClass('top_info1');
            $('.displaynone1').css('display','none');
            console.log($('.top_info p img').css("transform"))
            return false;
    
        });
        
    });
    
        
    
    

});
