// Feather disable all

/// @param x
/// @param y
/// @param z
/// @param [matrix]

function MatrixTranslate(_x, _y, _z, _matrix = undefined)
{
    if (_matrix == undefined)
    {
        return matrix_build(_x, _y, _z,   0,0,0,   1,1,1);
    }
    else
    {
        return matrix_multiply(_matrix, matrix_build(_x, _y, _z,   0,0,0,   1,1,1));
    }
}