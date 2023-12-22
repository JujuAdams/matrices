UggRay(0, 0, 0,   100, 0, 0,   c_red,   5);
UggRay(0, 0, 0,   0, 100, 0,   c_lime,  5);
UggRay(0, 0, 0,   0, 0, 100,   c_blue,  5);
UggSphere(0, 0, 0,   5,   c_white);

MatrixSet(MatrixTranslate(100, 100, 0, MatrixRotate(current_time/12, 0, 0)));
UggAABB(0, 0, 0, 70, 70, 70);
MatrixReset();

MatrixSet(MatrixInverse(MatrixInverse(MatrixTranslate(200, 100, 0, MatrixRotate(current_time/12, 0, 0)))));
UggAABB(0, 0, 0, 70, 70, 70);
MatrixReset();