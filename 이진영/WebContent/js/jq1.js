
/* 슬라이드 */ 
$(function(){

let pos = 0;
let totalSlides = $('#slider-wrap ul li').length;
let sliderWidth = $('#slider-wrap').width();


$(function(){
    $('#slider-wrap ul#slider').width(sliderWidth*totalSlides); 
    $('#next').click(function(){
        slideRight();
    });
    $('#previous').click(function(){
        slideLeft();
    });
    $('#pagination-wrap ul li').click(function(){
        let qww=$(this).text()
        console.log(qww,"2222");
    
    });
    let autoSlider = setInterval(slideRight, 3000);
    $.each($('#slider-wrap ul li'), function() { 
        let li = document.createElement('li');
        $('#pagination-wrap ul').append(li);
        
    });
    for(vala=1;vala<=totalSlides;vala++){ 
        $(`#pagination-wrap ul li:nth-child(${vala})`).html(`<div class="move" id="button${vala}" value=${vala}>${vala}</div>`);
    
    }
    for(vala=1;vala<=totalSlides;vala++){ 
        $(`#slider li:nth-child(${vala})`).html(`<img src="/img/ex${vala}.jpg">`);
    
    }
    
        
    
/*    $($('#slider-wrap ul li'), function() { 

        //create a pagination
        const a = document.createElement('a');
        $('#pagination-wrap ul li').append(a);
        $('#pagination-wrap ul li a').attr('herf','#')

    }); */
    
    countSlides();

    pagination();

    $('#slider-wrap').hover(
    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
    );
/*     $('#pagination-wrap .active').on('click',function(){
        let num = $('#slider-wrap').each(index);
        let imgindex =$('#pagination-wrap .active').getAttribute();
        let btnindex =$('#slider-wrap').index();
        while(num.length){
            if(imgindex == btnindex){
                console.log(imgindex);
            }
            break;
        }
        
        
    }); */
    
});



function slideLeft(){
    pos--;
    if(pos==-1){ pos = totalSlides-1; }
    $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));    
    countSlides();
    pagination();
}
function slideRight(){
    pos++;
    if(pos==totalSlides){ pos = 0; }
    $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
    countSlides();
    pagination();
}
/* function moveclick(){
    $('.move').on('click',function(){
        let aaaa=$(this).val();
        console.log(aaaa);
    });
    for(vala=1;vala<=totalSlides;vala++){ 
        let num =  $(`#button${vala}`)
    
    }
    let num =  $("#id").val();
    console.log(num);
    if(pos==num){ pos = 0; }
    $('#slider-wrap ul#slider').css('left', -(sliderWidth*num)); 
    countSlidesmove();
    pagination();
} */
function countSlides(){
    $('#counter').html(pos+1 + ' / ' + totalSlides);
}
/* function countSlidesmove(){
    $('#counter').html(num+ ' / ' + totalSlides); 
}*/
function pagination(){
    $('#pagination-wrap ul li div').removeClass('active');
    $('#pagination-wrap ul li div:eq('+pos+')').addClass('active');
}






/*상단 메뉴 고정 */ 
const jbOffset = $( '#headerNavArea' ).offset();

$( window ).scroll( function() {
    if ( $( document ).scrollTop() > jbOffset.top ) {
        $( '#headerNavArea' ).addClass( 'fix' );
    }else {
        $( '#headerNavArea' ).removeClass( 'fix' );
    }
});
$(function(){
    $('.trans-line').on('click',function(){
        $('.displaynone').css('display','block').animate({

        },2000);
        
    });
});
/* 삼줄 메뉴 */
$(function(){
    $('.is-open').on('click',function(){
            $('.displaynone').css('display','none').animate({

            },2000);
        
        });
    });
        
    
});

/*sale 카운트  */
/* function getTime() { 
    now = new Date(); 
    dday = new Date(10,20,18,00); 
    days = (dday - now) / 1000 / 60 / 60 / 24; 
    daysRound = Math.floor(days); 
    hours = (dday - now) / 1000 / 60 / 60 - (24 * daysRound); 
    hoursRound = Math.floor(hours); 
    minutes = (dday - now) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound); 
    minutesRound = Math.floor(minutes); 
    seconds = (dday - now) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound); 
    secondsRound = Math.round(seconds); 
    
    document.getElementsByClassName("days").innerHTML = hoursRound; 
    document.getElementsByClassName("hours").innerHTML = minutesRound; 
    document.getElementsByClassName("minutes").innerHTML = secondsRound; 
    newtime = window.setTimeout("getTime();", 1000); 
}  */
/* $(function(){
    now = new Date();
    dday = new Date(2020,10,30,18,00,00);
    days=days = (dday - now)/ 1000 / 60 / 60 / 24; 
    daysRound = Math.floor(days);  
    hours = (dday - now) / 1000 / 60 / 60 - (24 * daysRound); 
    hoursRound = Math.floor(hours); 
    minutes = (dday - now) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound); 
    minutesRound = Math.floor(minutes); 
    seconds = (dday - now) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound); 
    secondsRound = Math.round(seconds); 
    $('.days').html(daysRound); 
    $('.hours').html(hoursRound);
    $('.minutes').html(minutesRound);
    $('.seconds').html(secondsRound);
    newtime = setTimeout(1000); 

});
$(function(){
    now = new Date();
    dday = new Date(2020,10,30,18,00,00);
    days= now /1000 / 60 / 60 / 24; 
    daysRound = Math.floor(days);  
    hours = 1000 / 60 / 60 - (24 * daysRound); 
    hoursRound = Math.floor(hours); 
    minutes =  1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound); 
    minutesRound = Math.floor(minutes); 
    seconds = 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound); 
    secondsRound = Math.round(seconds); 
    $('.days').html(daysRound); 
    $('.hours').html(hoursRound);
    $('.minutes').html(minutesRound);
    $('.seconds').html(secondsRound);
    newtime = setTimeout(1000); 

}); */
function counter(){
    let dday = new Date("November 20,2020,19:00:00").getTime(); //디데이
	setInterval(function(){
		let now = new Date(); //현재 날짜 가져오기
		let distance = dday - now;
		let d = Math.floor(distance / (1000 * 60 * 60 * 24));
		let h = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		let m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		let s = Math.floor((distance % (1000 * 60)) / 1000);
		if(s < 10){
			s = '0'+s;
        }
        $('.days').html(d); 
        $('.hours').html(h);
        $('.minutes').html(m);
        $('.seconds').html(s);
	}, 1000);
}
counter();
//인기검색어
(function ($) {
    $(document).ready(function () {

        $(".MS_search_word").click(function () {
            event.stopPropagation();
            $(".keywordWrap").show();
            $(".smSch .keywordWrap").hide();

            return false;
        });


        $(document).click(function (e) {
            /* let rr=e.target;
            console.log(rr); */
            
            console.log(e.target)
            if (!$(e.target).is('.keywordWrap *','.keywordWrap')) {
                $('.keywordWrap').hide();
            }

        });
        
        $('.schPopClose').click(function () {
            $('.keywordWrap').hide();

        });
    })
    

})(jQuery);


//tag검색기능
(function ($) {
    $(document).ready(function () {

        $(".keywords .button").click(function () {
            var text = $(this).text();
            text = text.replace(/\#/g, '');

            $(".MS_search_word").val(text);
            $(".sch form a img").click();
        });
    })

})(jQuery);