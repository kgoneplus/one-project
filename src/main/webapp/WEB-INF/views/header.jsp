<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_main.css">
<script>
   const cpath = '${cpath}'
</script>
<script src="${cpath}/resources/js/function_main.js"></script>
<script src="${cpath}/resources/js/function_header.js"></script>
</head>
<body>
    <header>  
        <div class="top">   
            <div class="left">
                <a href="${cpath }"><img src="${cpath }/resources/img/oneplus.png" width="160px" height="40px"></a>
            </div>
            
            <div class="input">
            	<form method="GET" action="${cpath }/product/search">
	                <input type="search" name="param" value="${param.search }" placeholder="검색어를 입력하세요" >
            		<button type="submit"></button>
            	</form>
            </div>
            
            <div class="right">
                   <div>
                         <c:if test="${empty login }">
                            <a href="${cpath }/member/login">
                               <img src="${cpath }/resources/img/login.png" width="40px" height="40px">
                            </a>
                         </c:if>
                         <c:if test="${not empty login }">
                            <a href="${cpath }/member/logout">
                               <img src="${cpath }/resources/img/logout.png" width="40px" height="40px">
                            </a>
                         </c:if>
                   </div>
                   <div class="member_img">
                        <a href="${cpath }/mypage/mypageMain"><img src="${cpath }/resources/img/member.png" width="40px" height="40px"></a>  
                        <ul> 
                            <li><a href="${cpath}/mypage/orders">주문/배송조회</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">회원정보</a></li>
                        </ul> 
                </div>   
                <div><a href="${cpath}/buying/cart/${login.idx}"><img src="${cpath }/resources/img/cart.png" width="40px" height="40px"></a></div>
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
                                              <a href="${cpath }/product/list?category2=200009 ">사과/배<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200009&productMain_categoryCode=300032">배</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200009&productMain_categoryCode=300033">사과</a></li>
                                             </ul>
                                          </div>
                                           </li>
                                           <li>
                                              <a href="${cpath }/product/list?category2=200002">감귤/만감류<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200002&productMain_categoryCode=300004">감귤</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200002&productMain_categoryCode=300005">천혜향/한라봉/기타감류</a></li>
                                             </ul>
                                          </div>
                                           </li>
                                           <li>
                                              <a href="${cpath }/product/list?category2=200013">토마토<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200013&productMain_categoryCode=300043">방울토마토</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200013&productMain_categoryCode=300044">토마토</a></li>
                                             </ul>
                                          </div>
                                           
                                           </li>
                                           <li>
                                              <a href="${cpath }/product/list?category2=200006">딸기/체리/블루베리<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200006&productMain_categoryCode=300025">딸기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200006&productMain_categoryCode=300027">체리</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200006&productMain_categoryCode=300026">블루베리</a></li>
                                             </ul>
                                          </div>
                                           </li>
                                           <li>
                                              <a href="${cpath }/product/list?category2='200010'">수박/메론/참외<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200010&productMain_categoryCode=300035">수박</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200010&productMain_categoryCode=300034">메론</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200010&productMain_categoryCode=300036">참외</a></li>
                                             </ul>
                                          </div>
                                           </li>
                                           <li>
                                              <a href="${cpath }/product/list?category2=200014">포도/자두/복숭아<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200014&productMain_categoryCode=300045">국산포도</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200014&productMain_categoryCode=300048">자두</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200014&productMain_categoryCode=300046">복숭아</a></li>
                                             </ul>
                                          </div>
                                           </li>
                                       <li>
                                              <a href="${cpath }/product/list?category2=200012">키위/석류/아보카도<div class="arrow"></div></a>
                                                 <div class="allmenu3">
                                                    <ul>
                                                       <li><a href="${cpath }/product/list?category2=200012&productMain_categoryCode=300040">그린키위/골드키위/참다래</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200012&productMain_categoryCode=300041">석류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200012&productMain_categoryCode=300042">아보카도</a></li>
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
                                               <a href="${cpath }/product/list?category2=200015">백미<div class="arrow"></div></a>
                                                  <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200015&productMain_categoryCode=300051">5kg미만</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200015&productMain_categoryCode=300052">5kg이상 ~ 10kg 미만</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200015&productMain_categoryCode=300050">20kg이상 </a></li>
                                             </ul>
                                          </div>
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200017">찹쌀/현미/흑미</a>
                                                  <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200017&productMain_categoryCode=300056">찰현미</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200017&productMain_categoryCode=300057">찹쌀</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200017&productMain_categoryCode=300058">현미</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200017&productMain_categoryCode=300059">흑미</a></li>
                                             </ul>
                                          </div>
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200019">혼합곡/수입잡곡</a>
                                                  <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=190&productMain_categoryCode=300065">혼합곡</a></li>
                                                       <li><a href="${cpath }/product/list?category2=190&productMain_categoryCode=300064">수입잡곡</a></li>
                                             </ul>
                                          </div>
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200016">수수/조/깨</a>
                                                  <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200016&productMain_categoryCode=300054">수수</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200016&productMain_categoryCode=300055">조류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200016&productMain_categoryCode=300053">깨류</a></li>
                                             </ul>
                                          </div>                                            
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200018">콩/팥/보리/귀리</a>
                                                  <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200018&productMain_categoryCode=300062">콩류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200018&productMain_categoryCode=300063">팥류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200018&productMain_categoryCode=300061">보리류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200018&productMain_categoryCode=300060">귀리류</a></li>
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
                                            <a href="${cpath }/product/list?category2=200021">고구마/감자<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200021&productMain_categoryCode=300068">고구마</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200021&productMain_categoryCode=300067">감자</a></li>
                                             </ul>
                                          </div>
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200030">양파/마늘/파/생강<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200030&productMain_categoryCode=300108">깐마늘</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200030&productMain_categoryCode=300110">마늘</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200030&productMain_categoryCode=300109">대파</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200030&productMain_categoryCode=300111">생강</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200030&productMain_categoryCode=300112">양파</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200030&productMain_categoryCode=300113">쪽파</a></li>
                                             </ul>
                                          </div>                                            
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200023">당근/우엉/연근/마<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200023&productMain_categoryCode=300072">당근</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200023&productMain_categoryCode=300074">연근</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200023&productMain_categoryCode=300073">마/우엉</a></li>
                                             </ul>
                                          </div>                                            
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200031">오이/가지/호박/옥수수<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200031&productMain_categoryCode=300117">오이</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200031&productMain_categoryCode=300114">가지</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200031&productMain_categoryCode=300119">호박</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200031&productMain_categoryCode=300118">옥수수</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200031&productMain_categoryCode=300116">과채콩</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200033">파프리카/브로콜리/피망<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200033&productMain_categoryCode=300124">파프리카</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200033&productMain_categoryCode=300122">브로컬리</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200033&productMain_categoryCode=300125">피망</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200033&productMain_categoryCode=300123">컬리플라워</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200029">양배추/양상추/샐러리/기타<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200029&productMain_categoryCode=300106">양배추</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200029&productMain_categoryCode=300107">양상추</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200029&productMain_categoryCode=300104">샐러리</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200029&productMain_categoryCode=300103">샐러드채소 기타</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200029&productMain_categoryCode=300105">아스파라거스</a></li>
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
                                               <a href="${cpath }/product/list?category2=200044">생선<div class="arrow"></div></a>    
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300153">가자미</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300154">갈치/삼치/고등어</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300155">구색선어</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300156">동태</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300157">손질생선</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300158">연어</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200044&productMain_categoryCode=300159">조기/굴비</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>  
                                            <li>
                                               <a href="${cpath }/product/list?category2=200047">연체갑각류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200047&productMain_categoryCode=300169">새우/게/랍스터/크랩류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200047&productMain_categoryCode=300170">오징어/낙지/주꾸미/문어</a></li>
                                             </ul>
                                          </div>                                                  
                                               </li>                               
                                            <li>
                                               <a href="${cpath }/product/list?category2=200046">어패류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200046&productMain_categoryCode=300164">굴/바지락</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200046&productMain_categoryCode=300165">기타 어패류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200046&productMain_categoryCode=300166">멍게/해삼</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200046&productMain_categoryCode=300167">전복</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200046&productMain_categoryCode=300168">홍합/꼬막</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>                               
                                            <li>
                                               <a href="${cpath }/product/list?category2=200042">건오징어/건어물/다시팩<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200042&productMain_categoryCode=300146">건오징어/한치/진미채</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200042&productMain_categoryCode=300147">기타 다시팩</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200042&productMain_categoryCode=300148">노가리/황태/먹태</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200042&productMain_categoryCode=300149">멸치/새우</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200042&productMain_categoryCode=300150">쥐포/어포/육포</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>                               
                                            <li>
                                               <a href="${cpath }/product/list?category2=200043">김/미역/기타해조류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200043&productMain_categoryCode=300151">김/김자반/부각</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200043&productMain_categoryCode=300152">미역/다시마</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>                               
                                            <li>
                                               <a href="${cpath }/product/list?category2=200041">간편/냉동수산물<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200041&productMain_categoryCode=300144">냉동간편수산물</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200041&productMain_categoryCode=300145">수산간편식</a></li>
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
                                            <a href="${cpath }/product/list?category2=200055">한우<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200055&productMain_categoryCode=300200">등심/안심/구이</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200055&productMain_categoryCode=300199">국거리/불고기/다짐/잡채</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200055&productMain_categoryCode=303406">사골/곰탕</a></li>
                                             </ul>
                                          </div>                                            
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200049">닭/오리고기<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200049&productMain_categoryCode=300177">닭고기 기타</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200049&productMain_categoryCode=300178">닭볶음탕용</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200049&productMain_categoryCode=300179">백숙용</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200049&productMain_categoryCode=300180">오리고기</a></li>
                                             </ul>
                                          </div>                                            
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200050">돼지고기<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200050&productMain_categoryCode=300185">삼겹살/목살/구이/수육</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200050&productMain_categoryCode=300182">돈까스/카레/잡채/탕수육</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200050&productMain_categoryCode=300183">불고기/찌개/다짐육</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200050&productMain_categoryCode=300181">갈비/찜/장조림</a></li>
                                             </ul>
                                          </div>                                                  
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200051">수입육<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200051&productMain_categoryCode=300186">구이/스테이크</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200051&productMain_categoryCode=303404">갈비/찜/장조림</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200051&productMain_categoryCode=300187">국거리/불고기/다짐/샤브샤브</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200051&productMain_categoryCode=300189">양고기</a></li>
                                             </ul>
                                          </div>                                                  
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200048">계란/알류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200048&productMain_categoryCode=300171">계란</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200048&productMain_categoryCode=300172">계란 10구/15구</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200048&productMain_categoryCode=300173">계란 30구 이상</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200048&productMain_categoryCode=300174">동물복지란/유정란등</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200048&productMain_categoryCode=300175">메추리알</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200048&productMain_categoryCode=300176">훈제/반숙/가공란</a></li>
                                             </ul>
                                          </div>                                                  
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200052">앙념육/가공육<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200052&productMain_categoryCode=300194">양념소고기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200052&productMain_categoryCode=300193">양념돼지고기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200052&productMain_categoryCode=300192">양념닭오리</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200052&productMain_categoryCode=300195">훈제오리/훈제돼지</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200052&productMain_categoryCode=300191">돈까스/소시지/떡갈비/스테이크</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200052&productMain_categoryCode=300190">기타 가공육</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>


										</ul>
									</div></li>
								<li><a>우유/유제품
										<div class="arrow"></div>
								</a>
									<div class="allmenu2">
										<ul>
											<li><a href="${cpath }/product/list?category2=200059">우유
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200059&productMain_categoryCode=300209">기능강화우유&어린이우유</a></li>
														<li><a
															href="${cpath }/product/list?category2=200059&productMain_categoryCode=300210">딸기/초코/바나나/기타
																우유</a></li>
														<li><a
															href="${cpath }/product/list?category2=200059&productMain_categoryCode=300211">멸균우유</a></li>
														<li><a
															href="${cpath }/product/list?category2=200059&productMain_categoryCode=300212">흰우유/저지방우유</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200058">요거트/요구르트
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200058&productMain_categoryCode=300207">떠먹는
																요구르트</a></li>
														<li><a
															href="${cpath }/product/list?category2=200058&productMain_categoryCode=300208">마시는
																요구르트</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200057">두유
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200057&productMain_categoryCode=300205">영유아두유</a></li>
														<li><a
															href="${cpath }/product/list?category2=200057&productMain_categoryCode=300206">일반두유</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200060">치즈/버터
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200060&productMain_categoryCode=300213">스트링/과일/스낵치즈</a></li>
														<li><a
															href="${cpath }/product/list?category2=200060&productMain_categoryCode=300214">버터</a></li>
														<li><a
															href="${cpath }/product/list?category2=200060&productMain_categoryCode=300215">생크림/휘핑크림</a></li>
														<li><a
															href="${cpath }/product/list?category2=200060&productMain_categoryCode=300216">슬라이스
																치즈</a></li>
														<li><a
															href="${cpath }/product/list?category2=200060&productMain_categoryCode=300217">크림/자연치즈</a></li>
														<li><a
															href="${cpath }/product/list?category2=200060&productMain_categoryCode=300218">슈레드/피자치즈/파마산</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200056">냉장디저트/음료
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200056&productMain_categoryCode=300202">냉장주스</a></li>
														<li><a
															href="${cpath }/product/list?category2=200056&productMain_categoryCode=300203">신선음료</a></li>
														<li><a
															href="${cpath }/product/list?category2=200056&productMain_categoryCode=300204">푸딩디저트류</a></li>
														<li><a
															href="${cpath }/product/list?category2=200056&productMain_categoryCode=303547">냉장커피</a></li>
													</ul>
												</div></li>
										</ul>
									</div></li>
								<li><a>냉장/냉동식품
										<div class="arrow"></div>
								</a>
									<div class="allmenu2">
										<ul>
											<li><a href="${cpath }/product/list?category2=200070">돈까스/떡갈비/너겟
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200070&productMain_categoryCode=300242">너겟/치킨</a></li>
														<li><a
															href="${cpath }/product/list?category2=200070&productMain_categoryCode=300243">돈까스/생선까스/탕수육/김말이/기타</a></li>
														<li><a
															href="${cpath }/product/list?category2=200070&productMain_categoryCode=300244">떡갈비/동그랑땡&완자/함박스테이크</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200669">피자/핫도그/치킨
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200669&productMain_categoryCode=303604">냉동감자/치즈스틱</a></li>
														<li><a
															href="${cpath }/product/list?category2=200669&productMain_categoryCode=300257">피자/브리또</a></li>
														<li><a
															href="${cpath }/product/list?category2=200669&productMain_categoryCode=300258">핫도그</a></li>
														<li><a
															href="${cpath }/product/list?category2=200669&productMain_categoryCode=303602">치킨</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200069">냉동밥/죽/스프
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200069&productMain_categoryCode=303617">냉동밥/덮밥류</a></li>
														<li><a
															href="${cpath }/product/list?category2=200069&productMain_categoryCode=300241">죽/스프</a></li>
													</ul>
												</div></li>
											<li><a href="${cpath }/product/list?category2=200670">떡볶이/면류
													<div class="arrow"></div>
											</a>
												<div class="allmenu3">
													<ul>
														<li><a
															href="${cpath }/product/list?category2=200670&productMain_categoryCode=300251">떡국떡/떡볶이떡</a></li>
														<li><a
															href="${cpath }/product/list?category2=200670&productMain_categoryCode=300250">냉면/소바</a></li>
														<li><a
															href="${cpath }/product/list?category2=200670&productMain_categoryCode=300245">국수/칼국수/우동</a></li>
														<li><a
															href="${cpath }/product/list?category2=200670&productMain_categoryCode=303603">짜장/짬뽕/스파게티</a></li>
													</ul>
												</div></li>
										</ul>
									</div></li>
                                </li>
                                <li>
                                   <a>우유/유제품<div class="arrow"></div></a>
                                       <div class="allmenu2">
                                        <ul>
                                            <li>
                                            <a href="${cpath }/product/list?category2=200059">우유<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200059&productMain_categoryCode=300209">기능강화우유&어린이우유</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200059&productMain_categoryCode=300210">딸기/초코/바나나/기타 우유</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200059&productMain_categoryCode=300211">멸균우유</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200059&productMain_categoryCode=300212">흰우유/저지방우유</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200058">요거트/요구르트<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200058&productMain_categoryCode=300207">떠먹는 요구르트</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200058&productMain_categoryCode=300208">마시는 요구르트</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200057">두유<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200057&productMain_categoryCode=300205">영유아두유</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200057&productMain_categoryCode=300206">일반두유</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200060">치즈/버터<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200060&productMain_categoryCode=300213">스트링/과일/스낵치즈</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200060&productMain_categoryCode=300214">버터</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200060&productMain_categoryCode=300215">생크림/휘핑크림</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200060&productMain_categoryCode=300216">슬라이스 치즈</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200060&productMain_categoryCode=300217">크림/자연치즈</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200060&productMain_categoryCode=300218">슈레드/피자치즈/파마산</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200056">냉장디저트/음료<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200056&productMain_categoryCode=300202">냉장주스</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200056&productMain_categoryCode=300203">신선음료</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200056&productMain_categoryCode=300204">푸딩디저트류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200056&productMain_categoryCode=303547">냉장커피</a></li>
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
                                            <a href="${cpath }/product/list?category2=200070">돈까스/떡갈비/너겟<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200070&productMain_categoryCode=300242">너겟/치킨</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200070&productMain_categoryCode=300243">돈까스/생선까스/탕수육/김말이/기타</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200070&productMain_categoryCode=300244">떡갈비/동그랑땡&완자/함박스테이크</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200669">피자/핫도그/치킨<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200669&productMain_categoryCode=303604">냉동감자/치즈스틱</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200669&productMain_categoryCode=300257">피자/브리또</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200669&productMain_categoryCode=300258">핫도그</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200669&productMain_categoryCode=303602">치킨</a></li>
                                             </ul>
                                          </div>                                                  
                                         </li>                                      
                                         <li>
                                            <a href="${cpath }/product/list?category2=200069">냉동밥/죽/스프<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200069&productMain_categoryCode=303617">냉동밥/덮밥류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200069&productMain_categoryCode=300241">죽/스프</a></li>
                                             </ul>
                                          </div>                                                  
                                         </li>                                      
                                         <li>
                                            <a href="${cpath }/product/list?category2=200670">떡볶이/면류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200670&productMain_categoryCode=300251">떡국떡/떡볶이떡</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200670&productMain_categoryCode=300250">냉면/소바</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200670&productMain_categoryCode=300245">국수/칼국수/우동</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200670&productMain_categoryCode=303603">짜장/짬뽕/스파게티</a></li>
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
                                            <a href="${cpath }/product/list?category2=200100">생수/탄산수<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200100&productMain_categoryCode=300381">생수</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200100&productMain_categoryCode=300383">탄산수</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200104">과일/야채음료<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200104&productMain_categoryCode=300394">수입주스/음료</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200104&productMain_categoryCode=300395">야채주스 (토마토 외)</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200104&productMain_categoryCode=300396">어린이음료</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200104&productMain_categoryCode=300397">오렌지주스/감귤주스</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200104&productMain_categoryCode=300398">음료선물세트</a></li>
                                             </ul>
                                          </div>                                            
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200105">탄산/이온/비타민음료<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200105&productMain_categoryCode=300400">무알콜맥주/와인</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200105&productMain_categoryCode=300401">비타민/에너지음료</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200105&productMain_categoryCode=300402">숙취음료(컨디션)</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200105&productMain_categoryCode=300403">이온음료/화이바</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200105&productMain_categoryCode=300404">콜라/사이다</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200105&productMain_categoryCode=300405">탄산수/토닉워터</a></li>
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
                                            <a href="${cpath }/product/list?category2=200095">과자/쿠키/파이<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300356">감자/고구마 과자</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300357">나쵸/팝콘/옥수수과자</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300358">비스켓/쿠키/프레젤</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300360">샌드/웨하스</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300361">쌀/곡물과자</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300363">일반과자</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200095&productMain_categoryCode=300364">파이/케이크류</a></li>
                                             </ul>
                                          </div>                                                      
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200127">떡/한과/전통과자<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200127&productMain_categoryCode=300455">전통과자/만쥬</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200127&productMain_categoryCode=300456">한과</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200127&productMain_categoryCode=300362">안주/옛날과자</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200098">시리얼/간식류소시지<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200098&productMain_categoryCode=300372">시리얼바/에너지바</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200098&productMain_categoryCode=300373">어린이용 시리얼</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200098&productMain_categoryCode=300375">일반/곡물시리얼</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200098&productMain_categoryCode=303562">간식용소시지</a></li>
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
                                            <a href="${cpath }/product/list?category2=200091">라면/수입면류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200091&productMain_categoryCode=303627">수입면류</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200091&productMain_categoryCode=300342">일반라면/비빔라면</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200091&productMain_categoryCode=300343">짜장라면/우동라면</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200091&productMain_categoryCode=300344">컵라면</a></li>
                                             </ul>
                                          </div>                                                  
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200089">당면/건면/스파게티<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200089&productMain_categoryCode=300331">당면/소면/메밀면</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200089&productMain_categoryCode=300332">쌀국수/월남쌈</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200089&productMain_categoryCode=300333">즉석면요리</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200089&productMain_categoryCode=300334">파스타/스파게티면</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200093">즉석식품/누룽지/죽<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200093&productMain_categoryCode=300351">즉석국</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200093&productMain_categoryCode=303409">죽/스프</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200093&productMain_categoryCode=300352">즉석밥</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200093&productMain_categoryCode=300353">컵밥/국밥/덮밥</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200093&productMain_categoryCode=303584">즉석식품</a></li>
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
                                            <a href="${cpath }/product/list?category2=200132">세탁세제/섬유유연제<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200132&productMain_categoryCode=300488">분말형세제</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200132&productMain_categoryCode=300489">빨래비누</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200132&productMain_categoryCode=300490">섬유유연제</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200132&productMain_categoryCode=300491">세제세트/기타</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200132&productMain_categoryCode=300492">액체형 세제</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200133">세탁용품<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200133&productMain_categoryCode=300497">건조대</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200133&productMain_categoryCode=300498">다림용품</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200133&productMain_categoryCode=300499">세탁용품</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200135">주방/청소용 세제<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200135&productMain_categoryCode=300504">곰팡이제거제</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200135&productMain_categoryCode=300505">락스</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200135&productMain_categoryCode=300506">베이킹소다/친환경</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200134">에어컨/세탁기/기타<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200134&productMain_categoryCode=300500">가죽/금속/구두 클리너</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200134&productMain_categoryCode=300501">기타 세정제</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200134&productMain_categoryCode=300502">세탁조 클리너</a></li>
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
                                            <a href="${cpath }/product/list?category2=200651">냄비<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200651&productMain_categoryCode=300544">브랜드 냄비</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200652">프라이팬<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200652&productMain_categoryCode=300548">프라이팬</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200652&productMain_categoryCode=300545">브랜드 프라이팬</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200653">찜솥/압력솥/주전자<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200653&productMain_categoryCode=300546">주전자</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200653&productMain_categoryCode=300547">찜솥/압력솥</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200148">주방/일회용품<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200148&productMain_categoryCode=300573">고무장갑/랩/팩</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200148&productMain_categoryCode=300574">빨대/일회용기/기타</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200148&productMain_categoryCode=300575">와인용품</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200148&productMain_categoryCode=300576">종이컵</a></li>
                                             </ul>
                                          </div>                                               
                                         </li>
                                         <li>
                                            <a href="${cpath }/product/list?category2=200654">식기류<div class="arrow"></div></a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=300559&productMain_categoryCode=300558">수저/양식기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=300559&productMain_categoryCode=300555">공기/접시/식기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=300559&productMain_categoryCode=300556">내열식기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=300559&productMain_categoryCode=300559">유리식기</a></li>
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
                                               <a href="${cpath }/product/list?category2=200461">TV<div class="arrow"></div></a>
                                                  <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200461&productMain_categoryCode=303090">45인치 이하</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200461&productMain_categoryCode=303091">46인치 ~ 55인치</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200461&productMain_categoryCode=303092">56인치 ~ 70인치</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200461&productMain_categoryCode=303093">71인치 이상</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200461&productMain_categoryCode=303095">브라켓/케이블/기타</a></li>
                                             </ul>
                                          </div>
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200465">홈시어터/음향가전</a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200465&productMain_categoryCode=303101">마이크/기타 액세서리</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200465&productMain_categoryCode=303102">블루투스 이어폰/헤드폰</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200465&productMain_categoryCode=303105">유선 이어폰/헤드폰</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200465&productMain_categoryCode=303103">스피커</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200465&productMain_categoryCode=303104">오디오/하이파이/라디오</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200465&productMain_categoryCode=303106">홈시어터/사운드바</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200473">주방가전</a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200473&productMain_categoryCode=303152">전기밥솥</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200473&productMain_categoryCode=303150">전기그릴/후라이팬</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200473&productMain_categoryCode=303153">전기포트/티포트</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200473&productMain_categoryCode=303148">에어프라이어</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200473&productMain_categoryCode=303148">오븐</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200468">냉장고/김치냉장고</a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200468&productMain_categoryCode=303113">양문형 냉장고</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200468&productMain_categoryCode=303115">일반형 냉장고</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200468&productMain_categoryCode=303114">와인냉장고</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200468&productMain_categoryCode=303112">냉동고</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200468&productMain_categoryCode=303112">스탠드형 김치냉장고</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200468&productMain_categoryCode=303108">뚜껑형 김치냉장고</a></li>
                                             </ul>
                                          </div>                                                  
                                            </li>
                                            <li>
                                               <a href="${cpath }/product/list?category2=200469">생활가전</a>
                                               <div class="allmenu3">
                                                     <ul>
                                                       <li><a href="${cpath }/product/list?category2=200469&productMain_categoryCode=303117">공기청정기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200469&productMain_categoryCode=303159">무선청소기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200469&productMain_categoryCode=303160">스팀/물걸레 청소기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200469&productMain_categoryCode=303162">캐니스터청소기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200469&productMain_categoryCode=303163">핸디형청소기</a></li>
                                                       <li><a href="${cpath }/product/list?category2=200469&productMain_categoryCode=303161">청소기부품</a></li>
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
    	<div id="remocon">
		<div class="remocon_frame">
			<div class="remocon_miniItem">
				<figure>
					<img src="${cpath }/resources/img/icon_147.png">
					<figcaption>로그인</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<figure>
					<img src="${cpath }/resources/img/icon_139.png">
					<figcaption>배송</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<figure>
					<img src="${cpath }/resources/img/icon_152.png">
					<figcaption>장바구니</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<figure class="recentProduct">
					<img src="">
				</figure>
			</div>
			<div class="remocon_miniItem">
				<button id="toTop">TOP</button>
			</div>
		</div>
	</div>
	<script>
		const category = document.querySelector('#cate > a')

		category.addEventListener('click', categoryModal)
		//category.addEventListener('click', closeModal)
		window.addEventListener('load', getCookie)
	</script>
