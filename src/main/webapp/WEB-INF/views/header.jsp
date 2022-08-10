<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<script>
	const cpath = '${cpath}'
</script>
<script src="${cpath}/resources/js/function_main.js"></script>
<script src="${cpath}/resources/js/function_header.js"></script>
</head>
<body>
	 <header>  
	 	<div align="left">${login.userid } ${login.name }</div>    
        <div class="top">   
            <div class="left">
                <a href="${cpath }"><img src="${cpath }/resources/img/oneplus.png" width="160px" height="40px"></a>
            </div>
            
            <div class="input">
                <input type="search" placeholder=" 검색어를 입력하세요" >
            </div>
            
            <div class="right">
                   <div><a href="${cpath }/member/login"><img src="${cpath }/resources/img/login.png" width="40px" height="40px"></a></div>
                   <div class="member_img">
                        <a href="${cpath }/mypage/mypageMain"><img src="${cpath }/resources/img/member.png" width="40px" height="40px"></a>  
                        <ul> 
                            <li><a href="${cpath}/mypage/orders">주문/배송조회</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">회원정보</a></li>
                        </ul> 
                </div>   
                <div><a href="${cpath}/buying/cart"><img src="${cpath }/resources/img/cart.png" width="40px" height="40px"></a></div>
            </div>
        </div>
        <nav>
            <ul>
                <li id="cate">
                    <a href="#">≡ 카테고리</a>
                    <div class="allmenu">
                        <div class="left">
                            <ul>
                                <li>
                                	<a>과일<div class="arrow"></div></a>
			                           <div class="allmenu2">
			                        		<ul>
					                            <li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode=100 ">사과/배<div class="arrow"></div></a>
						                            	<div class="allmenu3">
							                            	<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=100&category2=001">배</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=100&category2=002">사과</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode=110">감귤/만감류<div class="arrow"></div></a>
						                            	<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=110&category2=003">감귤</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=110&category2=004">천혜향/한라봉/기타감류</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode=120">토마토<div class="arrow"></div></a>
					                            		<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=120&category2=005">방울토마토</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=120&category2=006">토마토</a></li>
															</ul>
														</div>
					                            
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode=130">딸기/체리/블루베리<div class="arrow"></div></a>
					                            		<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=130&category2=007">딸기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=130&category2=008">체리</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=130&category2=009">블루베리</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode='140'">수박/메론/참외<div class="arrow"></div></a>
					                            		<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=140&category2=010">수박</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=140&category2=011">메론</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=140&category2=012">참외</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode=150">포도/자두/복숭아<div class="arrow"></div></a>
					                            	   <div class="allmenu3">
						                            	   <ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=150&category2=013">국산포도</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=150&category2=014">자두</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=150&category2=015">복숭아</a></li>
															</ul>
														</div>
					                            </li>
      											<li>
					                            	<a href="${cpath }/product/list?productMain_categoryCode=160">키위/석류/아보카도<div class="arrow"></div></a>
					                            	   <div class="allmenu3">
						                            	   <ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=160&category2=017">그린키위/골드키위/참다래</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=160&category2=018">석류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=160&category2=019">아보카도</a></li>
															</ul>
														</div>
					                            </li>					                            
				                         </ul>
				                     </div>
                                </li>
                                <li>
                               		<a>쌀/잡곡<div class="arrow"></div></a>
	                               		<div class="allmenu2">
					                         <ul>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=170">백미<div class="arrow"></div></a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=170&category2=021">5kg미만</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=170&category2=022">5kg이상 ~ 10kg 미만</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=170&category2=020">20kg이상 </a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=180">찹쌀/현미/흑미</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=180&category2=023">찰현미</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=180&category2=024">찹쌀</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=180&category2=025">현미</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=180&category2=026">흑미</a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=190">혼합곡/수입잡곡</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=190&category2=027">혼합곡</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=190&category2=028">수입잡곡</a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=200">수수/조/깨</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=200&category2=028">수수</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=200&category2=028">조류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=200&category2=028">깨류</a></li>
															</ul>
														</div>					                         	 
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=210">콩/팥/보리/귀리</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=210&category2=032">콩류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=210&category2=033">팥류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=210&category2=034">보리류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=210&category2=035">귀리류</a></li>
															</ul>
														</div>					                         	 	
					                         	 </li>
					                         </ul>
	                               		</div>
                                </li>
                                <li>
                                	<a>채소<div class="arrow"></div></a>
                                		<div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=220">고구마/감자<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=220&category2=032">고구마</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=220&category2=032">감자</a></li>
															</ul>
														</div>
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=230">양파/마늘/파/생강<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=230&category2=038">깐마늘</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=230&category2=040">마늘</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=230&category2=039">대파</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=230&category2=041">생강</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=230&category2=042">양파</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=230&category2=043">쪽파</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=240">당근/우엉/연근/마<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=240&category2=044">당근</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=240&category2=045">연근</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=240&category2=046">마/우엉</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=250">오이/가지/호박/옥수수<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=250&category2=047">오이</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=250&category2=048">가지</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=250&category2=03849">호박</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=250&category2=050">옥수수</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=250&category2=051">과채콩</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=260">파프리카/브로콜리/피망<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=260&category2=052">파프리카</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=260&category2=053">브로컬리</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=260&category2=054">피망</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=260&category2=055">컬리플라워</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=270">양배추/양상추/샐러리/기타<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=270&category2=056">양배추</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=270&category2=057">양상추</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=270&category2=058">샐러리</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=270&category2=059">샐러드채소 기타</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=270&category2=060">아스파라거스</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>
                                	
                                </li>
                                <li>
                                	<a>수산물/건어물<div class="arrow"></div></a>
										<div class="allmenu2">
					                         <ul>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=280">생선<div class="arrow"></div></a>    
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=061">가자미</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=062">갈치/삼치/고등어</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=063">구색선어</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=064">동태</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=065">손질생선</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=066">연어</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=280&category2=067">조기/굴비</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>  
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=290">연체갑각류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=290&category2=068">새우/게/랍스터/크랩류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=290&category2=069">오징어/낙지/주꾸미/문어</a></li>
															</ul>
														</div>						                         	 	
					                         	 	</li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=300">어패류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=300&category2=070">굴/바지락</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=300&category2=071">기타 어패류</a></li>
									                            <li><a href="#">멍게/해삼</a></li>
									                            <li><a href="#">전복</a></li>
									                            <li><a href="#">홍합/꼬막</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=310">건오징어/건어물/다시팩<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=310&category2=075">건오징어/한치/진미채</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=310&category2=076">기타 다시팩</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=310&category2=077">노가리/황태/먹태</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=310&category2=078">멸치/새우</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=310&category2=079">쥐포/어포/육포</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=320">김/미역/기타해조류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=320&category2=080">김/김자반/부각</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=320&category2=081">미역/다시마</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=330">간편/냉동수산물<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=330&category2=082">냉동간편수산물</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=330&category2=083">수산간편식</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         </ul>
					                    </div>
                                </li>
                                <li>
                                	<a>정육/계란<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=340">한우<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=340&category2=084">등심/안심/구이</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=340&category2=085">국거리/불고기/다짐/잡채</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=340&category2=086">사골/곰탕</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=350">닭/오리고기<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=350&category2=087">닭고기 기타</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=350&category2=088">닭볶음탕용</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=350&category2=089">백숙용</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=350&category2=090">오리고기</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=360">돼지고기<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=360&category2=091">삼겹살/목살/구이/수육</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=360&category2=092">돈까스/카레/잡채/탕수육</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=360&category2=093">불고기/찌개/다짐육</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=360&category2=094">갈비/찜/장조림</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=370">수입육<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=370&category2=096">구이/스테이크</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=370&category2=097">갈비/찜/장조림</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=370&category2=098">국거리/불고기/다짐/샤브샤브</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=370&category2=099">양고기</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=380">계란/알류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=380&category2=100">계란</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=380&category2=101">계란 10구/15구</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=380&category2=102">계란 30구 이상</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=38&category2=103">동물복지란/유정란등</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=380&category2=104">메추리알</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=380&category2=105">훈제/반숙/가공란</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=390">앙념육/가공육<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=390&category2=106">양념소고기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=390&category2=107">양념돼지고기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=390&category2=108">양념닭오리</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=390&category2=109">훈제오리/훈제돼지</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=390&category2=110">돈까스/소시지/떡갈비/스테이크</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=390&category2=111">기타 가공육</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>
                                </li>
                                <li>
                                	<a>우유/유제품<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=400">우유<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=400&category2=112">기능강화우유&어린이우유</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=400&category2=113">딸기/초코/바나나/기타 우유</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=400&category2=114">멸균우유</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=400&category2=115">흰우유/저지방우유</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=410">요거트/요구르트<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=410&category2=116">떠먹는 요구르트</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=410&category2=117">마시는 요구르트</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=420">두유<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=420&category2=118">영유아두유</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=420&category2=119">일반두유</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=430">치즈/버터<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=430&category2=120">스트링/과일/스낵치즈</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=430&category2=121">버터</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=430&category2=122">생크림/휘핑크림</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=430&category2=123">슬라이스 치즈</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=430&category2=124">크림/자연치즈</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=430&category2=125">슈레드/피자치즈/파마산</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=440">냉장디저트/음료<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=440&category2=126">냉장주스</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=440&category2=127">신선음료</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=440&category2=128">푸딩디저트류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=440&category2=129">냉장커피</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>
                                </li>
                                <li>
                                	<a>냉장/냉동식품<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=480">돈까스/떡갈비/너겟<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=480&category2=142">너겟/치킨</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=480&category2=141">돈까스/생선까스/탕수육/김말이/기타</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=480&category2=140">떡갈비/동그랑땡&완자/함박스테이크</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=470">피자/핫도그/치킨<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=470&category2=139">냉동감자/치즈스틱</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=470&category2=138">피자/브리또</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=470&category2=137">핫도그</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=470&category2=136">치킨</a></li>
															</ul>
														</div>							                    			
					                    		</li>                                		
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=460">냉동밥/죽/스프<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=400&category2=055">냉동밥/덮밥류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=400&category2=055">죽/스프</a></li>
															</ul>
														</div>							                    			
					                    		</li>                                		
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=450">떡볶이/면류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=450&category2=133">떡국떡/떡볶이떡</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=450&category2=132">냉면/소바</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=450&category2=131">국수/칼국수/우동</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=450&category2=130">짜장/짬뽕/스파게티</a></li>
															</ul>
														</div>							                    			
					                    		</li>                                		
				                    		</ul>
			                    		</div>                              		
                            		</li>
                                
                                <li>
                                	<a>생수/음료<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=510">생수/탄산수<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=510&category2=155">생수</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=510&category2=154">탄산수</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=500">과일/야채음료<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=500&category2=153">수입주스/음료</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=500&category2=152">야채주스 (토마토 외)</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=500&category2=151">어린이음료</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=500&category2=150">오렌지주스/감귤주스</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=500&category2=149">음료선물세트</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=490">탄산/이온/비타민음료<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=490&category2=148">무알콜맥주/와인</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=490&category2=147">비타민/에너지음료</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=490&category2=146">숙취음료(컨디션)</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=490&category2=145">이온음료/화이바</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=490&category2=144">콜라/사이다</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=490&category2=143">탄산수/토닉워터</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>                                	
                                </li>
                                <li>
                                	<a>과자/시리얼<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=540">과자/쿠키/파이<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=540&category2=169">감자/고구마 과자</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=540&category2=168">나쵸/팝콘/옥수수과자</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=540&category2=167">비스켓/쿠키/프레젤</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=54&category2=166">샌드/웨하스</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=54&category2=165">쌀/곡물과자</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=540&category2=164">일반과자</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=540&category2=163">파이/케이크류</a></li>
															</ul>
														</div>						                    			       
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=530">떡/한과/전통과자<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=530&category2=163">전통과자/만쥬</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=530&category2=162">한과</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=530&category2=161">안주/옛날과자</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=520">시리얼/간식류소시지<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=520&category2=160">시리얼바/에너지바</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=520&category2=159">어린이용 시리얼</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=520&category2=158">일반/곡물시리얼</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=520&category2=157">간식용소시지</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>                         	
                                </li>
                                <li>
                                	<a>라면/즉석식품/통조림<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=570">라면/수입면류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=570&category2=183">수입면류</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=570&category2=182">일반라면/비빔라면</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=570&category2=181">짜장라면/우동라면</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=570&category2=180">컵라면</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=560">당면/건면/스파게티<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=560&category2=179">당면/소면/메밀면</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=560&category2=178">쌀국수/월남쌈</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=560&category2=177">즉석면요리</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=560&category2=176">파스타/스파게티면</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=550">즉석식품/누룽지/죽<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=550&category2=175">즉석국</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=550&category2=174">죽/스프</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=550&category2=173">즉석밥</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=550&category2=172">컵밥/국밥/덮밥</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=550&category2=171">즉석식품</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>                               	
                                </li>
                                <li>
                                	<a>세탁/청소/욕실<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=610">세탁세제/섬유유연제<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=610&category2=197">분말형세제</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=610&category2=196">빨래비누</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=610&category2=195">섬유유연제</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=610&category2=194">세제세트/기타</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=610&category2=193">액체형 세제</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=600">세탁용품<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=600&category2=192">건조대</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=600&category2=191">다림용품</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=600&category2=190">세탁용품</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=590">주방/청소용 세제<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=590&category2=189">곰팡이제거제</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=590&category2=188">락스</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=590&category2=187">베이킹소다/친환경</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=580">에어컨/세탁기/기타<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=580&category2=186">가죽/금속/구두 클리너</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=580&category2=185">기타 세정제</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=580&category2=184">세탁조 클리너</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    	</ul>
					                    </div>                                	
                                </li>
                                <li>
                                	<a>주방용품<div class="arrow"></div></a>
                                	    <div class="allmenu2">
					                         <ul>
					                         	 <li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=660">냄비<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=660&category2=210">브랜드 냄비</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=650">프라이팬<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=650&category2=209">프라이팬</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=650&category2=208">브랜드 프라이팬</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=640">찜솥/압력솥/주전자<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=640&category2=207">주전자</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=640&category2=206">찜솥/압력솥</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=630">주방/일회용품<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=630&category2=205">고무장갑/랩/팩</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=630&category2=204">빨대/일회용기/기타</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=630&category2=203">와인용품</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=6300&category2=202">종이컵</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?productMain_categoryCode=620">식기류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=620&category2=201">수저/양식기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=620&category2=200">공기/접시/식기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=620&category2=199">내열식기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=620&category2=198">유리식기</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    	</ul>
					                    </div>                                	
                                </li>
                                
                                <li>
                                	<a>가전/디지털<div class="arrow"></div></a>
                                		<div class="allmenu2">
					                         <ul>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=710">TV<div class="arrow"></div></a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=710&category2=239">45인치 이하</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=710&category2=238">46인치 ~ 55인치</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=710&category2=237">56인치 ~ 70인치</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=710&category2=236">71인치 이상</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=710&category2=235">브라켓/케이블/기타</a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=700">홈시어터/음향가전</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=700&category2=234">마이크/기타 액세서리</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=700&category2=233">블루투스 이어폰/헤드폰</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=700&category2=232">유선 이어폰/헤드폰</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=700&category2=231">스피커</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=700&category2=230">오디오/하이파이/라디오</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=700&category2=229">홈시어터/사운드바</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=690">주방가전</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=690&category2=228">전기밥솥</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=690&category2=227">전기그릴/후라이팬</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=69&category2=226">전기포트/티포트</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=690&category2=225">에어프라이어</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=690&category2=224">오븐</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=680">냉장고/김치냉장고</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=680&category2=223">양문형 냉장고</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=680&category2=222">일반형 냉장고</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=680&category2=221">와인냉장고</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=680&category2=220">냉동고</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=680&category2=219">스탠드형 김치냉장고</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=680&category2=218">뚜껑형 김치냉장고</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?productMain_categoryCode=670">생활가전</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=670&category2=216">공기청정기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=670&category2=215">무선청소기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=670&category2=214">스팀/물걸레 청소기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=670&category2=213">캐니스터청소기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=670&category2=212">핸디형청소기</a></li>
									                            <li><a href="${cpath }/product/list?productMain_categoryCode=670&category2=211">청소기부품</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         </ul>
	                               		</div>
                                </li>
                            </ul>
                        </div>
 

                    </div>
                </li>
                <li><a href="#">신상품</a></li>
                <li><a href="#">단독특가</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">자주구매</a></li>
                <li><a href="#">택배배송</a></li>
            </ul>
			
        </nav>
    </header>
    <script>
    const category = document.querySelector('#cate > a')

    category.addEventListener('click', categoryModal)
    //category.addEventListener('click', closeModal)

    </script>
