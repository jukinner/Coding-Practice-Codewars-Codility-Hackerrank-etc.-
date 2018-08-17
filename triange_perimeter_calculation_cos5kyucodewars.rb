
# You have to give the number of different integer triangles with one angle of 120 degrees which perimeters are under or equal a certain value. Each side of an integer triangle is an integer value.

# give_triang(max. perimeter) --------> number of integer triangles,
# with sides a, b, and c integers such that:

# a + b + c <= max. perimeter

# See some of the following cases

# give_triang(5) -----> 0 # No Integer triangles with perimeter under or equal five
# give_triang(15) ----> 1 # One integer triangle of (120 degrees). It's (3, 5, 7)
# give_triang(30) ----> 3 # Three triangles: (3, 5, 7), (6, 10, 14) and (7, 8, 13)
# give_triang(50) ----> 5 # (3, 5, 7), (5, 16, 19), (6, 10, 14), (7, 8, 13) and (9, 15, 21) are t



def give_triang(per)
    # your code
end

# Math you need

# SAS is Side, Angle, Side
# Given the size of 2 sides (c and a) and the size of the angle B that is in between those 2 sides you can calculate the sizes of the remaining 1 side and 2 angles.

# use The Law of Cosines to solve for the remaining side, b

# Law of Cosines
# If a, b and c are the lengths of the legs of a triangle opposite to the angles A, B and C respectively; then the law of cosines states:

# a2 = c2 + b2 - 2bc cos A,   solving for cos A,   cos A = ( b2 + c2 - a2 ) / 2bc

# b2 = a2 + c2 - 2ca cos B,   solving for cos B,   cos B = ( c2 + a2 - b2 ) / 2ca

# c2 = b2 + a2 - 2ab cos C,   solving for cos C,   cos C = ( a2 + b2 - c2 ) / 2ab

# Solving, for example, for an angle, A = cos-1 [ ( b2 + c2 - a2 ) / 2bc ]