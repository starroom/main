<!-- curl for signup -->
curl -d 'password=1111&mobile=18901031876&formhash=sdfsdfsdfsdf&token=f7680658c9c0338e870faecb6865238f' -X POST http://localhost:3000/users/mobile_new


<!-- curl for login -->
curl -d 'password=1111&mobile=18901031876&formhash=sdfsdfsdfsdf&token=f7680658c9c0338e870faecb6865238f' -X POST http://localhost:3000/users/mobile_login