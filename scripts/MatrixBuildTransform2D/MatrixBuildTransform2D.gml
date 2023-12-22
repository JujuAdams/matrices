// Feather disable all

/// @param x
/// @param y
/// @param angle

function MatrixBuildTransform2D(_x, _y, _angle)
{
	var _matrix = matrix_multiply(matrix_get(matrix_world), matrix_build(_x, _y, 0,   0, 0, _angle,   1, 1, 1));
	matrix_set(matrix_world, _matrix);
	return _matrix;
}