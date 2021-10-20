
import 'package:get/get.dart';
import 'package:knotted/helper/device_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

//http://knotted-env.eba-cmmpd8pi.ap-northeast-2.elasticbeanstalk.com/api/documentation
class ApiProvider extends GetConnect {

  final Map<String, String> API_URL = {
    'development': 'http://knotted-env.eba-cmmpd8pi.ap-northeast-2.elasticbeanstalk.com/api/v1',
    'production': 'http://knotted-env.eba-cmmpd8pi.ap-northeast-2.elasticbeanstalk.com/api/v1'
  };

  get defaultUrl => API_URL['production'] ?? '';

  /********
   * 1. 게시판 관련
   */
  //1-1. 게시판 목록
  //board_type: notice | faq | qna 등
  Future<Response> getBoards(String boardType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token') ?? "";

    return get(
        "$defaultUrl/board/$boardType",
        contentType: 'application/json',
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
    );
  }
  //1-2. 게시판 추가 - 비어있음
  //1-3. 게시판 정보 반환
  Future<Response> getBoardDetail(String boardType, String boardId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token') ?? "";

    return get(
        "$defaultUrl/board/$boardType/$boardId",
        contentType: 'application/json',
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
    );
  }
  //1-4. 게시판 정보 삭제 - 비어있음
  //1-5. 게시판 정보 수정  - 비어있음

  /********
   * 2. 대시보드
   */
  //2-1. 앱 대시보드 정보 반환 - 비어있음
  //2-2. 매니저 대시보드 정보 반환 - 비어있음

  /********
   * 3. 파일 및 이미지 관리
   */
  //3-1. 이미지 신규 추가 - 비어있음
  //3-2. 이미지 삭제 - 비어있음

  /********
   * 4. 장바구니
   */
  //4-1. 장바구니 목록 - @TODO
  //4-2. 장바구니 추가 - @TODO
  //4-3. 장바구니 조회 - @TODO
  //4-4. 장바구니 삭제 - @TODO
  //4-5. 장바구니 수정 - @TODO

  /********
   * 5. 쿠폰
   */
  //5-1. 쿠폰 목록 - @TODO
  //5-2. 쿠폰 추가 - 비어있음
  //5-3. 쿠폰 조회 - @TODO
  //5-4. 쿠폰 삭제 - 비어있음
  //5-5. 쿠폰 수정 - 비어있음


  /********
   * 6. 메뉴
   */
  //6-1. 메뉴 목록 - @TODO
  //6-2. 메뉴 추가 - 비어있음
  //6-3. 메뉴 조회 - @TODO
  //6-4. 메뉴 삭제 - 비어있음
  //6-5. 메뉴 수정 - 비어있음

  /********
   * 7. 주문
   */
  //7-1. 주문 목록 - @TODO
  //7-2. 주문 추가 - 비어있음
  //7-3. 주문 조회 - @TODO
  //7-4. 주문 삭제 - 비어있음
  //7-5. 주문 수정 - 비어있음

  /********
   * 8. 주문교환
   */
  //8-1. 주문교환 목록 - @TODO
  //8-2. 주문교환 추가 - 비어있음
  //8-3. 주문교환 조회 - @TODO
  //8-4. 주문교환 삭제 - 비어있음
  //8-5. 주문교환 수정 - 비어있음


  /********
   * 9. 주문반품
   */
  //9-1. 주문반품 목록 - @TODO
  //9-2. 주문반품 추가 - 비어있음
  //9-3. 주문반품 조회 - @TODO
  //9-4. 주문반품 삭제 - 비어있음
  //9-5. 주문반품 수정 - 비어있음

  /********
   * 10. 상품
   */
  //10-1. 상품 목록 - @TODO
  //10-2. 상품 추가 - 비어있음
  //10-3. 상품 조회 - @TODO
  //10-4. 상품 삭제 - 비어있음
  //10-5. 상품 수정 - 비어있음

  /********
   * 11. 상품
   */
  //11-1. 상품 목록 - @TODO
  //11-2. 상품 추가 - 비어있음
  //11-3. 상품 조회 - @TODO
  //11-4. 상품 삭제 - 비어있음
  //11-5. 상품 수정 - 비어있음


  /********
   * 12. 매장별 예약시
   */
  //12-1. 예약 시간 목록 - @TODO
  //12-2. 예약 시간 추가 - 비어있음
  //12-3. 예약 시간 조회 - @TODO
  //12-4. 예약 시간 삭제 - 비어있음
  //12-5. 예약 시간 수정 - 비어있음

  /********
   * 13. 매장
   */
  //13-1. 예약 시간 목록 - @TODO
  //13-2. 예약 시간 추가 - 비어있음
  //13-3. 예약 시간 조회 - @TODO
  //13-4. 예약 시간 삭제 - 비어있음
  //13-5. 예약 시간 수정 - 비어있음


  /********
   * 14. 상품 포장캐피지
   */
  //14-1. 상품 포장캐피지 목록 - @TODO
  //14-2. 상품 포장캐피지 추가 - 비어있음
  //14-3. 상품 포장캐피지 조회 - @TODO
  //14-4. 상품 포장캐피지 삭제 - 비어있음
  //14-5. 상품 포장캐피지 수정 - 비어있음


  /********
   * 15. 매장별상품
   */
  //15-1. 매장별상품 목록 - @TODO
  //15-2. 매장별상품 추가 - 비어있음
  //15-3. 매장별상품 조회 - @TODO
  //15-4. 매장별상품 삭제 - 비어있음
  //15-5. 매장별상품 수정 - 비어있음


  /********
   * 16. 사용자
   */
  //16-1. 로그인 - @TODO
  Future<Response> login(String uid, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token') ?? "";

    var payload = {
      "uid": uid,
      "password": password,
      "device": await DeviceHelper.getDeviceModel()
    };

    return post(
        "$defaultUrl/users/login",
        payload,
        contentType: 'application/json',
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
    );
  }
  //16-2. 로그아웃 - @TODO
  Future<Response> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token') ?? "";

    return get(
        "$defaultUrl/users/logout",
        contentType: 'application/json',
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
    );
  }

  //16-3. 사용자목록 - 비어있음
  //16-4. 사용자 추가(회원가입) - @TODO
  Future<Response> join(String uid, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token') ?? "";

    var payload = {
      "uid": uid,
      "password": password,
      "device": DeviceHelper.getDeviceModel()
    };

    return post(
        "$defaultUrl/users/login",
        payload,
        contentType: 'application/json',
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
    );
  }

  //16-5. 사용자 조회 - @TODO
  //16-6. 사용자 삭제 - 비어있음
  //16-7. 사용자 정보 수정 - 비어있음
  //16-8. 로그인한 내 정보 반환
  Future<Response> myinfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token') ?? "";

    return get(
        "$defaultUrl/users/myinfo",
        contentType: 'application/json',
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
    );
  }

  //16-9. 사용자 아이디 중복검사
  Future<Response> checkId(String uid) async {
    return get(
        "$defaultUrl/users/checkid/$uid",
        contentType: 'application/json',
        headers: {
          'Accept': 'application/json'
        }
    );
  }

  //16-10. 휴대폰 인증 - @TODO
  //16-11. 사용자 아이디 찾기 - @TODO
  //16-12. 사용자 비밀번호 찾기 - @TODO

  /********
   * 17. (관리자) 사용자 메모
   */
  //17-1. 메모 목록 - 비어있음
  //17-2. 메모 추가 - 비어있음
  //17-3. 메모 조회 - 비어있음
  //17-4. 메모 삭제 - 비어있음
  //17-5. 메모 수정 - 비어있음


  /********
   * 18. 사용자 결제수단
   */
  //17-1. 결제수단 목록 - @TODO
  //18-2. 결제수단 추가 - @TODO
  //18-3. 결제수단 조회 - @TODO
  //18-4. 결제수단 삭제 - @TODO
  //18-5. 결제수단 수정 - @TODO

  /********
   * 19. 사용자 Push
   */
  //19-1. Push 추가 - 비어있음

  /********
   * 20. 사용자 스탬프
   */
//17-1. 사용자 스탬프 목록 - @TODO
//18-2. 사용자 스탬프 추가 - @TODO
//18-3. 사용자 스탬프 조회 - @TODO
//18-4. 사용자 스탬프 삭제 - @TODO
//18-5. 사용자 스탬프 수정 - @TODO


  // // 2. SMS 인증 요청
  // Future<Response> requestSMS(String phone) async {
  //   var payload = {
  //     'phone': phone
  //   };
  //
  //   return post(
  //       "$defaultUrl/request/sms",
  //       payload,
  //       contentType: 'application/json',
  //       headers: {
  //         'Accept': 'application/json'
  //       }
  //   );
  // }
  //
  // // 3. SMS 인증 요청 - 인증번호로 Acctess Token 가져오기
  // Future<Response> requestToken(String phone, String number) async {
  //   var payload = {
  //     'phone': phone,
  //     'number': number,
  //   };
  //
  //   return post(
  //       "$defaultUrl/request/token",
  //       payload,
  //       contentType: 'application/json',
  //       headers: {
  //         'Accept': 'application/json'
  //       }
  //   );
  // }
  //
  // // 4. Refresh Token으로 다시 토큰을 가져오기
  // Future<Response> refreshToken() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var refreshToken = prefs.getString('refresh_token') ?? "";
  //
  //   var payload = {
  //     'refresh_token': refreshToken
  //   };
  //
  //   return post(
  //       "$defaultUrl/request/refresh",
  //       payload,
  //       contentType: 'application/json',
  //       headers: {
  //         'Accept': 'application/json'
  //       }
  //   );
  // }
  //
  // // 5. 사용자 Session 정보 가져오기
  // Future<Response> session() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var token = prefs.getString('token') ?? "";
  //
  //   return get(
  //       "$defaultUrl/session",
  //       contentType: 'application/json',
  //       headers: {
  //         'Authorization': token,
  //         'Accept': 'application/json'
  //       }
  //   );
  // }
  //
  // // 6. 이용내역 가져오기
  // Future<Response> giftHistory({String? last_id, String? status}) async {
  //
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var token = prefs.getString('token') ?? "";
  //
  //   return get(
  //       "$defaultUrl/gift/history?last_id=${last_id ?? ''}&status=${status ?? ''}",
  //       contentType: 'application/json',
  //       headers: {
  //         'Authorization': token,
  //         'Accept': 'application/json'
  //       }
  //   );
  // }
  //
  // // 7. 상품권 내역 가져오기
  // Future<Response> giftList({String? last_id, String? status}) async {
  //
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var token = prefs.getString('token') ?? "";
  //
  //   return get(
  //       "$defaultUrl/gift/list?last_id=${last_id ?? ''}&status=${status ?? ''}",
  //       contentType: 'application/json',
  //       headers: {
  //         'Authorization': token,
  //         'Accept': 'application/json'
  //       }
  //   );
  // }
}