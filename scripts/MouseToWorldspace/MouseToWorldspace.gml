/// Returns the point in worldspace on the far clipping plane that lies under the mouse
/// 
/// @param [viewMatrix]        View matrix to use. If not provided, the current view matrix will be used
/// @param [projectionMatrix]  Projection matrix to use. If not provided, the current projection matrix will be used

function MouseToWorldspace(_viewMatrix = matrix_get(matrix_view), _projectionMatrix = matrix_get(matrix_projection))
{
    return ScreenspaceToWorldspace(window_mouse_get_x(),
                                       window_get_height() - window_mouse_get_y(), //GM's coordinate system requires that we invert this axis
                                       window_get_width(),
                                       window_get_height(),
                                       MatrixInverse(matrix_multiply(_viewMatrix, _projectionMatrix)));
}