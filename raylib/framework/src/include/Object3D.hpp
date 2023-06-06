/*
** EPITECH PROJECT, 2022
** Raylib-Shenanigans
** File description:
** Object3D.hpp
*/

#ifndef B13B8C5A_C700_40F5_80C4_54558868A850
#define B13B8C5A_C700_40F5_80C4_54558868A850

#include "IObect.hpp"

class Object3D : public IObject
{
    public:
        Object3D() {}
        virtual ~Object3D() {}

        void Draw() override {
            // Implement drawing a 3D object here
        }
}

#endif /* B13B8C5A_C700_40F5_80C4_54558868A850 */
