/// @param x
/// @param y
/// @param z
/// @param angle

var _x = argument0;
var _y = argument1;
var _z = argument2;

var _cos           = dcos(-argument3);
var _sin           = dsin(-argument3);
var _one_minus_cos = 1.0 - _cos;

var _d = 1/sqrt(_x*_x + _y*_y + _z*_z);
_x *= _d;
_y *= _d;
_z *= _d;

var _matrix;

_matrix[15] = 1;

_matrix[ 0] = _one_minus_cos*_x*_x + _cos;
_matrix[ 1] = _one_minus_cos*_x*_y + _sin*_z;
_matrix[ 2] = _one_minus_cos*_x*_z - _sin*_y;

_matrix[ 4] = _one_minus_cos*_x*_y - _sin*_z;
_matrix[ 5] = _one_minus_cos*_y*_y + _cos;
_matrix[ 6] = _one_minus_cos*_y*_z + _sin*_x;

_matrix[ 8] = _one_minus_cos*_x*_z + _sin*_y;
_matrix[ 9] = _one_minus_cos*_y*_z - _sin*_x;
_matrix[10] = _one_minus_cos*_z*_z + _cos;

return _matrix;