/*
** EPITECH PROJECT, 2022
** Raylib-Shenanigans
** File description:
** IObect.hpp
*/

#ifndef E7F34D3B_296D_4B9B_BFDF_E1C02264A708
#define E7F34D3B_296D_4B9B_BFDF_E1C02264A708

class IObject
{
    public:
        virtual ~IObject() {} // make the destructor virtual
        virtual void Draw() = 0; // pure virtual function
};

#endif /* E7F34D3B_296D_4B9B_BFDF_E1C02264A708 */
