<!-- curl for signup -->
curl -i -d 'password=1111&mobile=18901031876&formhash=sdfsdfsdfsdf&token=f7680658c9c0338e870faecb6865238f' -X POST http://starroom_api/users/mobile_new


<!-- curl for login -->
curl -i -d 'password=1111&mobile=18901031876&formhash=sdfsdfsdfsdf&token=f7680658c9c0338e870faecb6865238f' -X POST http://starroom/users/mobile_login
