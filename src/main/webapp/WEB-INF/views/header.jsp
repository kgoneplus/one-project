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
					                            	<a href="${cpath }/product/list?mCate=100 ">사과/배<div class="arrow"></div></a>
						                            	<div class="allmenu3">
							                            	<ul>
									                            <li><a href="${cpath }/product/list?mCate=100&sCate='001'">배</a></li>
									                            <li><a href="${cpath }/product/list?mCate=100&sCate='002'">사과</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?mCate=110">감귤/만감류<div class="arrow"></div></a>
						                            	<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?mCate=110&sCate=003">감귤</a></li>
									                            <li><a href="${cpath }/product/list?mCate=110&sCate=004">천혜향/한라봉/기타감류</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?mCate=120">토마토<div class="arrow"></div></a>
					                            		<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?mCate=120&sCate=005">방울토마토</a></li>
									                            <li><a href="${cpath }/product/list?mCate=120&sCate=006">토마토</a></li>
															</ul>
														</div>
					                            
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?mCate=130">딸기/체리/블루베리<div class="arrow"></div></a>
					                            		<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?mCate=130&sCate=007">딸기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=130&sCate=008">체리</a></li>
									                            <li><a href="${cpath }/product/list?mCate=130&sCate=009">블루베리</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?mCate='140'">수박/메론/참외<div class="arrow"></div></a>
					                            		<div class="allmenu3">
						                            		<ul>
									                            <li><a href="${cpath }/product/list?mCate=140&sCate=010">수박</a></li>
									                            <li><a href="${cpath }/product/list?mCate=140&sCate=011">메론</a></li>
									                            <li><a href="${cpath }/product/list?mCate=140&sCate=012">참외</a></li>
															</ul>
														</div>
					                            </li>
					                            <li>
					                            	<a href="${cpath }/product/list?mCate=150">포도/자두/복숭아<div class="arrow"></div></a>
					                            	   <div class="allmenu3">
						                            	   <ul>
									                            <li><a href="${cpath }/product/list?mCate=150&sCate=013">국산포도</a></li>
									                            <li><a href="${cpath }/product/list?mCate=150&sCate=014">자두</a></li>
									                            <li><a href="${cpath }/product/list?mCate=150&sCate=015">복숭아</a></li>
															</ul>
														</div>
					                            </li>
      											<li>
					                            	<a href="${cpath }/product/list?mCate=160">키위/석류/아보카도<div class="arrow"></div></a>
					                            	   <div class="allmenu3">
						                            	   <ul>
									                            <li><a href="${cpath }/product/list?mCate=160&sCate=017">그린키위/골드키위/참다래</a></li>
									                            <li><a href="${cpath }/product/list?mCate=160&sCate=018">석류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=160&sCate=019">아보카도</a></li>
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
					                         	 	<a href="${cpath }/product/list?mCate=170">백미<div class="arrow"></div></a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=170&sCate=021">5kg미만</a></li>
									                            <li><a href="${cpath }/product/list?mCate=170&sCate=022">5kg이상 ~ 10kg 미만</a></li>
									                            <li><a href="${cpath }/product/list?mCate=170&sCate=020">20kg이상 </a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=180">찹쌀/현미/흑미</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=180&sCate=023">찰현미</a></li>
									                            <li><a href="${cpath }/product/list?mCate=180&sCate=024">찹쌀</a></li>
									                            <li><a href="${cpath }/product/list?mCate=180&sCate=025">현미</a></li>
									                            <li><a href="${cpath }/product/list?mCate=180&sCate=026">흑미</a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=190">혼합곡/수입잡곡</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=190&sCate=027">혼합곡</a></li>
									                            <li><a href="${cpath }/product/list?mCate=190&sCate=028">수입잡곡</a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=200">수수/조/깨</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=200&sCate=028">수수</a></li>
									                            <li><a href="${cpath }/product/list?mCate=200&sCate=028">조류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=200&sCate=028">깨류</a></li>
															</ul>
														</div>					                         	 
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=210">콩/팥/보리/귀리</a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=210&sCate=032">콩류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=210&sCate=033">팥류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=210&sCate=034">보리류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=210&sCate=035">귀리류</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=220">고구마/감자<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=220&sCate=032">고구마</a></li>
									                            <li><a href="${cpath }/product/list?mCate=220&sCate=032">감자</a></li>
															</ul>
														</div>
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=230">양파/마늘/파/생강<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=230&sCate=038">깐마늘</a></li>
									                            <li><a href="${cpath }/product/list?mCate=230&sCate=040">마늘</a></li>
									                            <li><a href="${cpath }/product/list?mCate=230&sCate=039">대파</a></li>
									                            <li><a href="${cpath }/product/list?mCate=230&sCate=041">생강</a></li>
									                            <li><a href="${cpath }/product/list?mCate=230&sCate=042">양파</a></li>
									                            <li><a href="${cpath }/product/list?mCate=230&sCate=043">쪽파</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=240">당근/우엉/연근/마<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=240&sCate=044">당근</a></li>
									                            <li><a href="${cpath }/product/list?mCate=240&sCate=045">연근</a></li>
									                            <li><a href="${cpath }/product/list?mCate=240&sCate=046">마/우엉</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=250">오이/가지/호박/옥수수<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=250&sCate=047">오이</a></li>
									                            <li><a href="${cpath }/product/list?mCate=250&sCate=048">가지</a></li>
									                            <li><a href="${cpath }/product/list?mCate=250&sCate=03849">호박</a></li>
									                            <li><a href="${cpath }/product/list?mCate=250&sCate=050">옥수수</a></li>
									                            <li><a href="${cpath }/product/list?mCate=250&sCate=051">과채콩</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=260">파프리카/브로콜리/피망<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=260&sCate=052">파프리카</a></li>
									                            <li><a href="${cpath }/product/list?mCate=260&sCate=053">브로컬리</a></li>
									                            <li><a href="${cpath }/product/list?mCate=260&sCate=054">피망</a></li>
									                            <li><a href="${cpath }/product/list?mCate=260&sCate=055">컬리플라워</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=270">양배추/양상추/샐러리/기타<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=270&sCate=056">양배추</a></li>
									                            <li><a href="${cpath }/product/list?mCate=270&sCate=057">양상추</a></li>
									                            <li><a href="${cpath }/product/list?mCate=270&sCate=058">샐러리</a></li>
									                            <li><a href="${cpath }/product/list?mCate=270&sCate=059">샐러드채소 기타</a></li>
									                            <li><a href="${cpath }/product/list?mCate=270&sCate=060">아스파라거스</a></li>
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
					                         	 	<a href="${cpath }/product/list?mCate=280">생선<div class="arrow"></div></a>    
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=061">가자미</a></li>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=062">갈치/삼치/고등어</a></li>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=063">구색선어</a></li>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=064">동태</a></li>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=065">손질생선</a></li>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=066">연어</a></li>
									                            <li><a href="${cpath }/product/list?mCate=280&sCate=067">조기/굴비</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>  
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=290">연체갑각류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=290&sCate=068">새우/게/랍스터/크랩류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=290&sCate=069">오징어/낙지/주꾸미/문어</a></li>
															</ul>
														</div>						                         	 	
					                         	 	</li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=300">어패류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=300&sCate=070">굴/바지락</a></li>
									                            <li><a href="${cpath }/product/list?mCate=300&sCate=071">기타 어패류</a></li>
									                            <li><a href="#">멍게/해삼</a></li>
									                            <li><a href="#">전복</a></li>
									                            <li><a href="#">홍합/꼬막</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=310">건오징어/건어물/다시팩<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=310&sCate=075">건오징어/한치/진미채</a></li>
									                            <li><a href="${cpath }/product/list?mCate=310&sCate=076">기타 다시팩</a></li>
									                            <li><a href="${cpath }/product/list?mCate=310&sCate=077">노가리/황태/먹태</a></li>
									                            <li><a href="${cpath }/product/list?mCate=310&sCate=078">멸치/새우</a></li>
									                            <li><a href="${cpath }/product/list?mCate=310&sCate=079">쥐포/어포/육포</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=320">김/미역/기타해조류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=320&sCate=080">김/김자반/부각</a></li>
									                            <li><a href="${cpath }/product/list?mCate=320&sCate=081">미역/다시마</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>                            	
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=330">간편/냉동수산물<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=330&sCate=082">냉동간편수산물</a></li>
									                            <li><a href="${cpath }/product/list?mCate=330&sCate=083">수산간편식</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=340">한우<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=340&sCate=084">등심/안심/구이</a></li>
									                            <li><a href="${cpath }/product/list?mCate=340&sCate=085">국거리/불고기/다짐/잡채</a></li>
									                            <li><a href="${cpath }/product/list?mCate=340&sCate=086">사골/곰탕</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=350">닭/오리고기<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=350&sCate=087">닭고기 기타</a></li>
									                            <li><a href="${cpath }/product/list?mCate=350&sCate=088">닭볶음탕용</a></li>
									                            <li><a href="${cpath }/product/list?mCate=350&sCate=089">백숙용</a></li>
									                            <li><a href="${cpath }/product/list?mCate=350&sCate=090">오리고기</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=360">돼지고기<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=360&sCate=091">삼겹살/목살/구이/수육</a></li>
									                            <li><a href="${cpath }/product/list?mCate=360&sCate=092">돈까스/카레/잡채/탕수육</a></li>
									                            <li><a href="${cpath }/product/list?mCate=360&sCate=093">불고기/찌개/다짐육</a></li>
									                            <li><a href="${cpath }/product/list?mCate=360&sCate=094">갈비/찜/장조림</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=370">수입육<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=370&sCate=096">구이/스테이크</a></li>
									                            <li><a href="${cpath }/product/list?mCate=370&sCate=097">갈비/찜/장조림</a></li>
									                            <li><a href="${cpath }/product/list?mCate=370&sCate=098">국거리/불고기/다짐/샤브샤브</a></li>
									                            <li><a href="${cpath }/product/list?mCate=370&sCate=099">양고기</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=380">계란/알류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=380&sCate=100">계란</a></li>
									                            <li><a href="${cpath }/product/list?mCate=380&sCate=101">계란 10구/15구</a></li>
									                            <li><a href="${cpath }/product/list?mCate=380&sCate=102">계란 30구 이상</a></li>
									                            <li><a href="${cpath }/product/list?mCate=38&sCate=103">동물복지란/유정란등</a></li>
									                            <li><a href="${cpath }/product/list?mCate=380&sCate=104">메추리알</a></li>
									                            <li><a href="${cpath }/product/list?mCate=380&sCate=105">훈제/반숙/가공란</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=390">앙념육/가공육<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=390&sCate=106">양념소고기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=390&sCate=107">양념돼지고기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=390&sCate=108">양념닭오리</a></li>
									                            <li><a href="${cpath }/product/list?mCate=390&sCate=109">훈제오리/훈제돼지</a></li>
									                            <li><a href="${cpath }/product/list?mCate=390&sCate=110">돈까스/소시지/떡갈비/스테이크</a></li>
									                            <li><a href="${cpath }/product/list?mCate=390&sCate=111">기타 가공육</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=400">우유<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=400&sCate=112">기능강화우유&어린이우유</a></li>
									                            <li><a href="${cpath }/product/list?mCate=400&sCate=113">딸기/초코/바나나/기타 우유</a></li>
									                            <li><a href="${cpath }/product/list?mCate=400&sCate=114">멸균우유</a></li>
									                            <li><a href="${cpath }/product/list?mCate=400&sCate=115">흰우유/저지방우유</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=410">요거트/요구르트<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=410&sCate=116">떠먹는 요구르트</a></li>
									                            <li><a href="${cpath }/product/list?mCate=410&sCate=117">마시는 요구르트</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=420">두유<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=420&sCate=118">영유아두유</a></li>
									                            <li><a href="${cpath }/product/list?mCate=420&sCate=119">일반두유</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=430">치즈/버터<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=430&sCate=120">스트링/과일/스낵치즈</a></li>
									                            <li><a href="${cpath }/product/list?mCate=430&sCate=121">버터</a></li>
									                            <li><a href="${cpath }/product/list?mCate=430&sCate=122">생크림/휘핑크림</a></li>
									                            <li><a href="${cpath }/product/list?mCate=430&sCate=123">슬라이스 치즈</a></li>
									                            <li><a href="${cpath }/product/list?mCate=430&sCate=124">크림/자연치즈</a></li>
									                            <li><a href="${cpath }/product/list?mCate=430&sCate=125">슈레드/피자치즈/파마산</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=440">냉장디저트/음료<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=440&sCate=126">냉장주스</a></li>
									                            <li><a href="${cpath }/product/list?mCate=440&sCate=127">신선음료</a></li>
									                            <li><a href="${cpath }/product/list?mCate=440&sCate=128">푸딩디저트류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=440&sCate=129">냉장커피</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=480">돈까스/떡갈비/너겟<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=480&sCate=142">너겟/치킨</a></li>
									                            <li><a href="${cpath }/product/list?mCate=480&sCate=141">돈까스/생선까스/탕수육/김말이/기타</a></li>
									                            <li><a href="${cpath }/product/list?mCate=480&sCate=140">떡갈비/동그랑땡&완자/함박스테이크</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=470">피자/핫도그/치킨<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=470&sCate=139">냉동감자/치즈스틱</a></li>
									                            <li><a href="${cpath }/product/list?mCate=470&sCate=138">피자/브리또</a></li>
									                            <li><a href="${cpath }/product/list?mCate=470&sCate=137">핫도그</a></li>
									                            <li><a href="${cpath }/product/list?mCate=470&sCate=136">치킨</a></li>
															</ul>
														</div>							                    			
					                    		</li>                                		
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=460">냉동밥/죽/스프<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=400&sCate=055">냉동밥/덮밥류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=400&sCate=055">죽/스프</a></li>
															</ul>
														</div>							                    			
					                    		</li>                                		
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=450">떡볶이/면류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=450&sCate=133">떡국떡/떡볶이떡</a></li>
									                            <li><a href="${cpath }/product/list?mCate=450&sCate=132">냉면/소바</a></li>
									                            <li><a href="${cpath }/product/list?mCate=450&sCate=131">국수/칼국수/우동</a></li>
									                            <li><a href="${cpath }/product/list?mCate=450&sCate=130">짜장/짬뽕/스파게티</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=510">생수/탄산수<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=510&sCate=155">생수</a></li>
									                            <li><a href="${cpath }/product/list?mCate=510&sCate=154">탄산수</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=500">과일/야채음료<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=500&sCate=153">수입주스/음료</a></li>
									                            <li><a href="${cpath }/product/list?mCate=500&sCate=152">야채주스 (토마토 외)</a></li>
									                            <li><a href="${cpath }/product/list?mCate=500&sCate=151">어린이음료</a></li>
									                            <li><a href="${cpath }/product/list?mCate=500&sCate=150">오렌지주스/감귤주스</a></li>
									                            <li><a href="${cpath }/product/list?mCate=500&sCate=149">음료선물세트</a></li>
															</ul>
														</div>					                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=490">탄산/이온/비타민음료<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=490&sCate=148">무알콜맥주/와인</a></li>
									                            <li><a href="${cpath }/product/list?mCate=490&sCate=147">비타민/에너지음료</a></li>
									                            <li><a href="${cpath }/product/list?mCate=490&sCate=146">숙취음료(컨디션)</a></li>
									                            <li><a href="${cpath }/product/list?mCate=490&sCate=145">이온음료/화이바</a></li>
									                            <li><a href="${cpath }/product/list?mCate=490&sCate=144">콜라/사이다</a></li>
									                            <li><a href="${cpath }/product/list?mCate=490&sCate=143">탄산수/토닉워터</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=540">과자/쿠키/파이<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=540&sCate=169">감자/고구마 과자</a></li>
									                            <li><a href="${cpath }/product/list?mCate=540&sCate=168">나쵸/팝콘/옥수수과자</a></li>
									                            <li><a href="${cpath }/product/list?mCate=540&sCate=167">비스켓/쿠키/프레젤</a></li>
									                            <li><a href="${cpath }/product/list?mCate=54&sCate=166">샌드/웨하스</a></li>
									                            <li><a href="${cpath }/product/list?mCate=54&sCate=165">쌀/곡물과자</a></li>
									                            <li><a href="${cpath }/product/list?mCate=540&sCate=164">일반과자</a></li>
									                            <li><a href="${cpath }/product/list?mCate=540&sCate=163">파이/케이크류</a></li>
															</ul>
														</div>						                    			       
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=530">떡/한과/전통과자<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=530&sCate=163">전통과자/만쥬</a></li>
									                            <li><a href="${cpath }/product/list?mCate=530&sCate=162">한과</a></li>
									                            <li><a href="${cpath }/product/list?mCate=530&sCate=161">안주/옛날과자</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=520">시리얼/간식류소시지<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=520&sCate=160">시리얼바/에너지바</a></li>
									                            <li><a href="${cpath }/product/list?mCate=520&sCate=159">어린이용 시리얼</a></li>
									                            <li><a href="${cpath }/product/list?mCate=520&sCate=158">일반/곡물시리얼</a></li>
									                            <li><a href="${cpath }/product/list?mCate=520&sCate=157">간식용소시지</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=570">라면/수입면류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=570&sCate=183">수입면류</a></li>
									                            <li><a href="${cpath }/product/list?mCate=570&sCate=182">일반라면/비빔라면</a></li>
									                            <li><a href="${cpath }/product/list?mCate=570&sCate=181">짜장라면/우동라면</a></li>
									                            <li><a href="${cpath }/product/list?mCate=570&sCate=180">컵라면</a></li>
															</ul>
														</div>							                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=560">당면/건면/스파게티<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=560&sCate=179">당면/소면/메밀면</a></li>
									                            <li><a href="${cpath }/product/list?mCate=560&sCate=178">쌀국수/월남쌈</a></li>
									                            <li><a href="${cpath }/product/list?mCate=560&sCate=177">즉석면요리</a></li>
									                            <li><a href="${cpath }/product/list?mCate=560&sCate=176">파스타/스파게티면</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=550">즉석식품/누룽지/죽<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=550&sCate=175">즉석국</a></li>
									                            <li><a href="${cpath }/product/list?mCate=550&sCate=174">죽/스프</a></li>
									                            <li><a href="${cpath }/product/list?mCate=550&sCate=173">즉석밥</a></li>
									                            <li><a href="${cpath }/product/list?mCate=550&sCate=172">컵밥/국밥/덮밥</a></li>
									                            <li><a href="${cpath }/product/list?mCate=550&sCate=171">즉석식품</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=610">세탁세제/섬유유연제<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=610&sCate=197">분말형세제</a></li>
									                            <li><a href="${cpath }/product/list?mCate=610&sCate=196">빨래비누</a></li>
									                            <li><a href="${cpath }/product/list?mCate=610&sCate=195">섬유유연제</a></li>
									                            <li><a href="${cpath }/product/list?mCate=610&sCate=194">세제세트/기타</a></li>
									                            <li><a href="${cpath }/product/list?mCate=610&sCate=193">액체형 세제</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=600">세탁용품<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=600&sCate=192">건조대</a></li>
									                            <li><a href="${cpath }/product/list?mCate=600&sCate=191">다림용품</a></li>
									                            <li><a href="${cpath }/product/list?mCate=600&sCate=190">세탁용품</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=590">주방/청소용 세제<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=590&sCate=189">곰팡이제거제</a></li>
									                            <li><a href="${cpath }/product/list?mCate=590&sCate=188">락스</a></li>
									                            <li><a href="${cpath }/product/list?mCate=590&sCate=187">베이킹소다/친환경</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=580">에어컨/세탁기/기타<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=580&sCate=186">가죽/금속/구두 클리너</a></li>
									                            <li><a href="${cpath }/product/list?mCate=580&sCate=185">기타 세정제</a></li>
									                            <li><a href="${cpath }/product/list?mCate=580&sCate=184">세탁조 클리너</a></li>
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
					                    			<a href="${cpath }/product/list?mCate=660">냄비<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=660&sCate=210">브랜드 냄비</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=650">프라이팬<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=650&sCate=209">프라이팬</a></li>
									                            <li><a href="${cpath }/product/list?mCate=650&sCate=208">브랜드 프라이팬</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=640">찜솥/압력솥/주전자<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=640&sCate=207">주전자</a></li>
									                            <li><a href="${cpath }/product/list?mCate=640&sCate=206">찜솥/압력솥</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=630">주방/일회용품<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=630&sCate=205">고무장갑/랩/팩</a></li>
									                            <li><a href="${cpath }/product/list?mCate=630&sCate=204">빨대/일회용기/기타</a></li>
									                            <li><a href="${cpath }/product/list?mCate=630&sCate=203">와인용품</a></li>
									                            <li><a href="${cpath }/product/list?mCate=6300&sCate=202">종이컵</a></li>
															</ul>
														</div>						                    			
					                    		</li>
					                    		<li>
					                    			<a href="${cpath }/product/list?mCate=620">식기류<div class="arrow"></div></a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=620&sCate=201">수저/양식기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=620&sCate=200">공기/접시/식기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=620&sCate=199">내열식기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=620&sCate=198">유리식기</a></li>
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
					                         	 	<a href="${cpath }/product/list?mCate=710">TV<div class="arrow"></div></a>
					                         	 		<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=710&sCate=239">45인치 이하</a></li>
									                            <li><a href="${cpath }/product/list?mCate=710&sCate=238">46인치 ~ 55인치</a></li>
									                            <li><a href="${cpath }/product/list?mCate=710&sCate=237">56인치 ~ 70인치</a></li>
									                            <li><a href="${cpath }/product/list?mCate=710&sCate=236">71인치 이상</a></li>
									                            <li><a href="${cpath }/product/list?mCate=710&sCate=235">브라켓/케이블/기타</a></li>
															</ul>
														</div>
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=700">홈시어터/음향가전</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=700&sCate=234">마이크/기타 액세서리</a></li>
									                            <li><a href="${cpath }/product/list?mCate=700&sCate=233">블루투스 이어폰/헤드폰</a></li>
									                            <li><a href="${cpath }/product/list?mCate=700&sCate=232">유선 이어폰/헤드폰</a></li>
									                            <li><a href="${cpath }/product/list?mCate=700&sCate=231">스피커</a></li>
									                            <li><a href="${cpath }/product/list?mCate=700&sCate=230">오디오/하이파이/라디오</a></li>
									                            <li><a href="${cpath }/product/list?mCate=700&sCate=229">홈시어터/사운드바</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=690">주방가전</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=690&sCate=228">전기밥솥</a></li>
									                            <li><a href="${cpath }/product/list?mCate=690&sCate=227">전기그릴/후라이팬</a></li>
									                            <li><a href="${cpath }/product/list?mCate=69&sCate=226">전기포트/티포트</a></li>
									                            <li><a href="${cpath }/product/list?mCate=690&sCate=225">에어프라이어</a></li>
									                            <li><a href="${cpath }/product/list?mCate=690&sCate=224">오븐</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=680">냉장고/김치냉장고</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=680&sCate=223">양문형 냉장고</a></li>
									                            <li><a href="${cpath }/product/list?mCate=680&sCate=222">일반형 냉장고</a></li>
									                            <li><a href="${cpath }/product/list?mCate=680&sCate=221">와인냉장고</a></li>
									                            <li><a href="${cpath }/product/list?mCate=680&sCate=220">냉동고</a></li>
									                            <li><a href="${cpath }/product/list?mCate=680&sCate=219">스탠드형 김치냉장고</a></li>
									                            <li><a href="${cpath }/product/list?mCate=680&sCate=218">뚜껑형 김치냉장고</a></li>
															</ul>
														</div>						                         	 	
					                         	 </li>
					                         	 <li>
					                         	 	<a href="${cpath }/product/list?mCate=670">생활가전</a>
					                    				<div class="allmenu3">
					                         	 			<ul>
									                            <li><a href="${cpath }/product/list?mCate=670&sCate=216">공기청정기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=670&sCate=215">무선청소기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=670&sCate=214">스팀/물걸레 청소기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=670&sCate=213">캐니스터청소기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=670&sCate=212">핸디형청소기</a></li>
									                            <li><a href="${cpath }/product/list?mCate=670&sCate=211">청소기부품</a></li>
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
