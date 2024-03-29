// Feather disable all

/// @param xAngle
/// @param yAngle
/// @param zAngle
/// @param [matrix]

function MatrixRotate(_xAngle, _yAngle, _zAngle, _matrix = undefined)
{
    if (_matrix == undefined)
    {
        return matrix_build(0,0,0,   _xAngle, _yAngle, _zAngle,   1,1,1);
    }
    else
    {
        return matrix_multiply(_matrix, matrix_build(0,0,0,   _xAngle, _yAngle, _zAngle,   1,1,1));
    }
}