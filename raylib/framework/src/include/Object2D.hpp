/*
** EPITECH PROJECT, 2022
** Raylib-Shenanigans
** File description:
** Object2D.hpp
*/

#ifndef D3EEDF4C_C785_44DD_A00E_536B6D3A033D
#define D3EEDF4C_C785_44DD_A00E_536B6D3A033D

#include "IObect.hpp"

class Object2D : public IObject
{
    public:
        Object2D() {}
        virtual ~Object2D() {}

        void Draw() override {
            // Implement drawing a 2D object here
        }
};

#endif /* D3EEDF4C_C785_44DD_A00E_536B6D3A033D */
